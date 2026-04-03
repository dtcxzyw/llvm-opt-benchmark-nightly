begin_hunk_0
  %i.be = call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.b) #24
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bg = sub i32 %i.al, %.03041
end_hunk_0
begin_hunk_1
  store ptr %.029, ptr %i.c, align 8, !tbaa !39
  br label %bb.n

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.l, %bb.m, %bb.j, %.critedge
  %.5 = phi i1 [ false, %.critedge ], [ true, %bb.j ], [ false, %.thread ], [ true, %bb.l ], [ true, %bb.m ]
  ret i1 %.5
}

end_hunk_1
begin_hunk_2
  %i.en = zext i8 %i.em to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

.thread149:                                       ; preds = %bb.q, %._crit_edge, %bb.t, %bb.u, %.thread185, %.lr.ph, %bb.l, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}
end_hunk_2
begin_hunk_3
  store ptr %i.k, ptr %i.l, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !110  ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !123
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !19
end_hunk_3
begin_hunk_4
bb.g:                                             ; preds = %bb.f
  store ptr %i.am, ptr %i.c, align 8, !tbaa !39
  %i.aq = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.aq, label %bb.h, label %.thread179.loopexit, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
end_hunk_4
begin_hunk_5
  %i.cp = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7191, i64 noundef %.0101189)
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !110
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !123
  br i1 %i.cp, label %bb.o, label %.thread179.loopexit

bb.o:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
end_hunk_5
begin_hunk_6

.thread164:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread179.loopexit

bb.p:                                             ; preds = %bb.o
  %i.de = sub i64 %.1100190, %.0101189            ; 3 uses
end_hunk_6
begin_hunk_7
  %i.dl = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7.lcssa, i64 noundef %.1100.lcssa)
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !110
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !123
  br i1 %i.dl, label %bb.q, label %.thread179.loopexit

bb.q:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131
  %i.dn = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.1100.lcssa ; 3 uses
end_hunk_7
begin_hunk_8
bb.r:                                             ; preds = %bb.q
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !39
  %i.dp = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.dp, label %bb.s, label %.thread179.loopexit, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
end_hunk_8
begin_hunk_9
  %i.eb = add nuw nsw i32 %i.ea, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.dz, i64 noundef %i.ec, ptr noundef nonnull %i.a)
  br i1 %i.ed, label %bb.ab, label %.thread179.loopexit

bb.v:                                             ; preds = %bb.j
  %i.ee = zext nneg i32 %i.bb to i64
end_hunk_9
begin_hunk_10

bb.w:                                             ; preds = %bb.v
  %i.ez = icmp eq i32 %.narrow, 0
  br i1 %i.ez, label %.thread179.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en ; 3 uses
end_hunk_10
begin_hunk_11
  %i.fk = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ep, i64 noundef %i.en)
  %i.fl = load ptr, ptr %i.m, align 8, !tbaa !110
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !123
  br i1 %i.fk, label %bb.aa, label %.thread179.loopexit

bb.aa:                                            ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169
  %i.fm = zext nneg i32 %i.bc to i64
end_hunk_11
begin_hunk_12
  %.12228 = phi ptr [ %i.fq, %bb.ab ], [ %i.fn, %bb.aa ]
  store ptr %.12228, ptr %i.c, align 8, !tbaa !39
  %i.fs = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.fs, label %bb.ac, label %.thread179.loopexit, !prof !19

bb.ac:                                            ; preds = %.thread
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
end_hunk_12
begin_hunk_13
  %i.gb = zext i8 %i.ga to i32
  br label %.backedge

.thread179.loopexit:                              ; preds = %bb.r, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131, %bb.u, %bb.g, %.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %bb.w, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %.thread164
  %.pre199 = load ptr, ptr %i.a, align 8, !tbaa !123
  br label %.thread179

.thread179:                                       ; preds = %.thread179.loopexit, %bb.b
  %2 = phi ptr [ %.pre199, %.thread179.loopexit ], [ %i.n, %bb.b ]
  store ptr %2, ptr %i.m, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
end_hunk_13
