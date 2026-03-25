begin_hunk_0
  %tmp.cf = getelementptr inbounds nuw i8, ptr %tmp.r, i64 88
  store i32 %tmp.ce, ptr %tmp.cf, align 8, !tbaa !111
  %tmp.cg = getelementptr inbounds nuw i8, ptr %tmp.q, i64 72 ; 2 uses
  %tmp.ch = load i16, ptr %tmp.cg, align 8, !tbaa !112 ; 2 uses
  %39 = icmp sgt i16 %tmp.ch, -2
  br i1 %39, label %40, label %50

40:                                               ; preds = %tmp.m
  %41 = sext i16 %tmp.ch to i64
  %42 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 48
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 92
  %45 = load i32, ptr %44, align 4, !tbaa !113
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 4
  %48 = shl nsw i64 %41, 4
  %49 = tail call ptr @luaM_realloc_(ptr noundef %tmp.o, ptr noundef %43, i64 noundef %47, i64 noundef %48) #6
  br label %52

50:                                               ; preds = %tmp.m
  %51 = tail call ptr @luaM_toobig(ptr noundef %tmp.o) #6
  br label %52

52:                                               ; preds = %50, %40
  %53 = phi ptr [ %49, %40 ], [ %51, %50 ]
  %54 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 48
  store ptr %53, ptr %54, align 8, !tbaa !71
  %55 = load i16, ptr %tmp.cg, align 8, !tbaa !112
  %56 = sext i16 %55 to i32
  %57 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 92
  store i32 %56, ptr %57, align 4, !tbaa !113
  %58 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 112 ; 2 uses
  %59 = load i8, ptr %58, align 8, !tbaa !114
  %60 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 56 ; 2 uses
  %61 = load ptr, ptr %60, align 8, !tbaa !115
  %62 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 72 ; 2 uses
  %63 = load i32, ptr %62, align 8, !tbaa !116
  %64 = sext i32 %63 to i64
  %65 = shl nsw i64 %64, 3
  %66 = zext i8 %59 to i64
  %67 = shl nuw nsw i64 %66, 3
  %68 = tail call ptr @luaM_realloc_(ptr noundef %tmp.o, ptr noundef %61, i64 noundef %65, i64 noundef %67) #6
  store ptr %68, ptr %60, align 8, !tbaa !115
  %69 = load i8, ptr %58, align 8, !tbaa !114
  %70 = zext i8 %69 to i32
  store i32 %70, ptr %62, align 8, !tbaa !116
  %71 = getelementptr inbounds nuw i8, ptr %tmp.q, i64 16
  %72 = load ptr, ptr %71, align 8, !tbaa !39
  store ptr %72, ptr %tmp.p, align 8, !tbaa !38
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %74 = load i32, ptr %73, align 8, !tbaa !56
  %.off.i = add i32 %74, -285
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %75, label %anchor_token.exit

75:                                               ; preds = %52
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %77 = load ptr, ptr %76, align 8, !tbaa !28     ; 2 uses
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 24
  %79 = getelementptr inbounds nuw i8, ptr %77, i64 16
  %80 = load i64, ptr %79, align 8, !tbaa !28
  %81 = tail call ptr @luaX_newstring(ptr noundef nonnull %0, ptr noundef nonnull %78, i64 noundef %80) #6
  br label %anchor_token.exit

anchor_token.exit:                                ; preds = %52, %75
  %82 = getelementptr inbounds nuw i8, ptr %tmp.o, i64 16 ; 2 uses
  %83 = load ptr, ptr %82, align 8, !tbaa !17
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  store ptr %84, ptr %82, align 8, !tbaa !17
  ret void
}

end_hunk_0
