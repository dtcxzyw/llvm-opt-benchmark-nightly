begin_hunk_0
  %tmp.cf = getelementptr inbounds nuw i8, ptr %tmp.r, i64 88
  store i32 %tmp.ce, ptr %tmp.cf, align 8, !tbaa !111
  %tmp.cg = getelementptr inbounds nuw i8, ptr %tmp.q, i64 72 ; 2 uses
  %tmp.ch = load i16, ptr %tmp.cg, align 8, !tbaa !112
  %39 = sext i16 %tmp.ch to i64                   ; 2 uses
  %40 = add nsw i64 %39, 1
  %41 = icmp ult i64 %40, 1152921504606846976
  br i1 %41, label %42, label %51

42:                                               ; preds = %tmp.m
  %43 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 48
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 92
  %46 = load i32, ptr %45, align 4, !tbaa !113
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 4
  %49 = shl nsw i64 %39, 4
  %50 = tail call ptr @luaM_realloc_(ptr noundef %tmp.o, ptr noundef %44, i64 noundef %48, i64 noundef %49) #6
  br label %53

51:                                               ; preds = %tmp.m
  %52 = tail call ptr @luaM_toobig(ptr noundef %tmp.o) #6
  br label %53

53:                                               ; preds = %51, %42
  %54 = phi ptr [ %50, %42 ], [ %52, %51 ]
  %55 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 48
  store ptr %54, ptr %55, align 8, !tbaa !71
  %56 = load i16, ptr %tmp.cg, align 8, !tbaa !112
  %57 = sext i16 %56 to i32
  %58 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 92
  store i32 %57, ptr %58, align 4, !tbaa !113
  %59 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 112 ; 2 uses
  %60 = load i8, ptr %59, align 8, !tbaa !114
  %61 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 56 ; 2 uses
  %62 = load ptr, ptr %61, align 8, !tbaa !115
  %63 = getelementptr inbounds nuw i8, ptr %tmp.r, i64 72 ; 2 uses
  %64 = load i32, ptr %63, align 8, !tbaa !116
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 3
  %67 = zext i8 %60 to i64
  %68 = shl nuw nsw i64 %67, 3
  %69 = tail call ptr @luaM_realloc_(ptr noundef %tmp.o, ptr noundef %62, i64 noundef %66, i64 noundef %68) #6
  store ptr %69, ptr %61, align 8, !tbaa !115
  %70 = load i8, ptr %59, align 8, !tbaa !114
  %71 = zext i8 %70 to i32
  store i32 %71, ptr %63, align 8, !tbaa !116
  %72 = getelementptr inbounds nuw i8, ptr %tmp.q, i64 16
  %73 = load ptr, ptr %72, align 8, !tbaa !39
  store ptr %73, ptr %tmp.p, align 8, !tbaa !38
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %75 = load i32, ptr %74, align 8, !tbaa !56
  %.off.i = add i32 %75, -285
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %76, label %anchor_token.exit

76:                                               ; preds = %53
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %78 = load ptr, ptr %77, align 8, !tbaa !28     ; 2 uses
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 24
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 16
  %81 = load i64, ptr %80, align 8, !tbaa !28
  %82 = tail call ptr @luaX_newstring(ptr noundef nonnull %0, ptr noundef nonnull %79, i64 noundef %81) #6
  br label %anchor_token.exit

anchor_token.exit:                                ; preds = %53, %76
  %83 = getelementptr inbounds nuw i8, ptr %tmp.o, i64 16 ; 2 uses
  %84 = load ptr, ptr %83, align 8, !tbaa !17
  %85 = getelementptr inbounds i8, ptr %84, i64 -32
  store ptr %85, ptr %83, align 8, !tbaa !17
  ret void
}

end_hunk_0
