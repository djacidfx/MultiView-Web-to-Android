package com.probweb.webviewapp.Adapter;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.probweb.webviewapp.Activity.WebViewActivity;
import com.probweb.webviewapp.Data.Dataset;
import com.probweb.webviewapp.R;

import java.util.Collections;
import java.util.List;
import java.util.Random;

public class FeaturedAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {


    private Context context;
    private LayoutInflater inflater;
    List<Dataset> data= Collections.emptyList();
    Dataset current;
    int currentPos=0;

    // create constructor to innitilize context and data sent from MainActivity
    public FeaturedAdapter(Context context, List<Dataset> data){
        this.context=context;
        inflater= LayoutInflater.from(context);
        this.data=data;
    }

    // Inflate the layout when viewholder created
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view=inflater.inflate(R.layout.favourite_item_layout, parent,false);

        MyHolder holder=new MyHolder(view);
        return holder;
    }

    // Bind data
    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {

        // Get current position of item in recyclerview to bind data and assign values from list
        MyHolder myHolder= (MyHolder) holder;
        Dataset current=data.get(position);
        myHolder.iconTextView.setText(current.title);
        myHolder.textFishName.setText(current.title);
//        myHolder.textType.setText(current.url);

        myHolder.full.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String url = current.url;

                Intent intent = new Intent(context, WebViewActivity.class);
                intent.putExtra("URL",current.url);
                intent.putExtra("Title",current.title);
                context.startActivity(intent);

//                try {
//                    Intent i = new Intent("android.intent.action.MAIN");
//                    i.setComponent(ComponentName.unflattenFromString("com.android.chrome/com.android.chrome.Main"));
//                    i.addCategory("android.intent.category.LAUNCHER");
//                    i.setData(Uri.parse(url));
//                    context.startActivity(i);
//                }
//                catch(ActivityNotFoundException e) {
//                    // Chrome is not installed
//                    Intent i = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
//                    context.startActivity(i);
//                }
            }
        });


    }

    // return total item from List
    @Override
    public int getItemCount() {
        return data.size();
    }


    class MyHolder extends RecyclerView.ViewHolder{

        TextView textFishName;
        TextView iconTextView;
        TextView textSize;
        TextView textType;
        TextView textPrice;
        LinearLayout full;

        // create constructor to get widget reference
        @SuppressLint("WrongConstant")
        @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
        public MyHolder(View itemView) {
            super(itemView);
            textFishName= (TextView) itemView.findViewById(R.id.textFishName);
            iconTextView= (TextView) itemView.findViewById(R.id.iconTextView);
            full = (LinearLayout) itemView.findViewById(R.id.full);

//            full.setBackgroundColor(Color.parseColor("#"+mColors[new Random().nextInt(14)]));

            GradientDrawable shape = new GradientDrawable();
            shape.setShape(GradientDrawable.OVAL);
            shape.setStroke(5, Color.parseColor("#"+mColors[new Random().nextInt(14)]));
            shape.setColor(Color.parseColor("#"+mColors[new Random().nextInt(14)]));
            iconTextView.setBackground(shape);

            textType = (TextView) itemView.findViewById(R.id.textType);
        }

    }

    public String[] mColors = {
            "0B2DDD", "DD2B0B", "31DD0B", "0BA1DD", "D70BDD", "DD0B74", "DD0B21",        //reds
            "A40717", "A41C07", "A2A407", "21A407", "07A49D", "071AA4", "A407A4"
    };

//    int i = new Random().nextInt(14);

}
