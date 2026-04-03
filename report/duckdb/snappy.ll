begin_hunk_0
  %i.be = call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.b)
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %.critedge37, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = sub i32 %i.al, %.03041
end_hunk_0
begin_hunk_1
  store ptr %.029, ptr %i.c, align 8, !tbaa !44
  br label %bb.n

.critedge37:                                      ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.n

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.n

bb.n:                                             ; preds = %.critedge37, %bb.l, %bb.m, %bb.j, %.critedge
  %.5 = phi i1 [ false, %.critedge ], [ true, %bb.j ], [ true, %bb.m ], [ false, %.critedge37 ], [ true, %bb.l ]
  ret i1 %.5
}

end_hunk_1
begin_hunk_2
  %i.en = zext i8 %i.em to i32
  br label %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

.thread149:                                       ; preds = %bb.t, %._crit_edge, %bb.q, %bb.u, %.thread185, %.lr.ph, %bb.l, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}
end_hunk_2
begin_hunk_3
  store ptr %i.k, ptr %i.l, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  store ptr %i.n, ptr %i.a, align 8, !tbaa !128
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !19
end_hunk_3
begin_hunk_4
bb.f:                                             ; preds = %bb.e
  store ptr %i.al, ptr %i.c, align 8, !tbaa !44
  %i.ap = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.ap, label %bb.g, label %.thread167, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
end_hunk_4
begin_hunk_5
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %.not172 = icmp ult i64 %i.cl, %.0101179
  br i1 %.not172, label %.thread167, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %.7181, i64 %.0101179, i1 false)
end_hunk_5
begin_hunk_6

.thread158:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.thread167

bb.o:                                             ; preds = %bb.n
  %i.da = sub i64 %.1100180, %.0101179            ; 3 uses
end_hunk_6
begin_hunk_7
  %.1100.lcssa = phi i64 [ %i.da, %._crit_edge.loopexit ], [ %.099, %bb.m ] ; 4 uses
  %.7.lcssa = phi ptr [ %i.cx, %._crit_edge.loopexit ], [ %.6, %bb.m ] ; 2 uses
  %.not171 = icmp ult i64 %.pre-phi197, %.1100.lcssa
  br i1 %.not171, label %.thread167, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %.7.lcssa, i64 %.1100.lcssa, i1 false)
end_hunk_7
begin_hunk_8
bb.q:                                             ; preds = %bb.p
  store ptr %i.dh, ptr %i.c, align 8, !tbaa !44
  %i.dj = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.dj, label %bb.r, label %.thread167, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
end_hunk_8
begin_hunk_9
  %i.dv = add nuw nsw i32 %i.du, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = call noundef zeroext i1 @_ZN13duckdb_snappy17SnappyArrayWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dt, i64 noundef %i.dw, ptr noundef nonnull %i.a)
  br i1 %i.dx, label %bb.aa, label %.thread167

bb.u:                                             ; preds = %bb.i
  %i.dy = zext nneg i32 %i.ba to i64
end_hunk_9
begin_hunk_10
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = icmp ult i64 %i.ep, %i.ej
  br i1 %i.eq, label %.thread167, label %bb.v, !prof !22

bb.v:                                             ; preds = %bb.u
  %i.er = load ptr, ptr %i.y, align 8, !tbaa !78
end_hunk_10
begin_hunk_11
  %i.ew = icmp ugt ptr %i.el, %i.ev
  %i.ex = icmp eq i32 %.narrow, 0
  %or.cond.i132 = or i1 %i.ex, %i.ew
  br i1 %or.cond.i132, label %.thread167, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = sub nsw i64 0, %i.ej
end_hunk_11
begin_hunk_12
  %.12216 = phi ptr [ %i.fh, %bb.aa ], [ %i.fe, %bb.z ]
  store ptr %.12216, ptr %i.c, align 8, !tbaa !44
  %i.fj = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.fj, label %bb.ab, label %.thread167, !prof !19

bb.ab:                                            ; preds = %.thread
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
end_hunk_12
begin_hunk_13
  %i.fs = zext i8 %i.fr to i32
  br label %_ZN13duckdb_snappy17SnappyArrayWriter6AppendEPKcmPPc.exit.backedge

.thread167:                                       ; preds = %bb.t, %bb.q, %._crit_edge, %bb.w, %bb.u, %.thread, %bb.f, %.lr.ph, %.thread158, %bb.b
  %2 = load ptr, ptr %i.a, align 8, !tbaa !128
  store ptr %2, ptr %i.m, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
end_hunk_13
begin_hunk_14
  store ptr %i.k, ptr %i.l, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  store ptr %i.n, ptr %i.a, align 8, !tbaa !128
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !19
end_hunk_14
begin_hunk_15
bb.g:                                             ; preds = %bb.f
  store ptr %i.am, ptr %i.c, align 8, !tbaa !44
  %i.aq = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.aq, label %bb.h, label %.thread179, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
end_hunk_15
begin_hunk_16
  %i.cp = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7191, i64 noundef %.0101189)
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !117
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !128
  br i1 %i.cp, label %bb.o, label %.thread179

bb.o:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !49    ; 2 uses
end_hunk_16
begin_hunk_17

.thread164:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.thread179

bb.p:                                             ; preds = %bb.o
  %i.de = sub i64 %.1100190, %.0101189            ; 3 uses
end_hunk_17
begin_hunk_18
  %i.dl = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7.lcssa, i64 noundef %.1100.lcssa)
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !117
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !128
  br i1 %i.dl, label %bb.q, label %.thread179

bb.q:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131.thread, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131
  %i.dn = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.1100.lcssa ; 3 uses
end_hunk_18
begin_hunk_19
bb.r:                                             ; preds = %bb.q
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !44
  %i.dp = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.dp, label %bb.s, label %.thread179, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
end_hunk_19
begin_hunk_20
  %i.eb = add nuw nsw i32 %i.ea, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.dz, i64 noundef %i.ec, ptr noundef nonnull %i.a)
  br i1 %i.ed, label %bb.ab, label %.thread179

bb.v:                                             ; preds = %bb.j
  %i.ee = zext nneg i32 %i.bb to i64
end_hunk_20
begin_hunk_21

bb.w:                                             ; preds = %bb.v
  %i.ez = icmp eq i32 %.narrow, 0
  br i1 %i.ez, label %.thread179, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en ; 3 uses
end_hunk_21
begin_hunk_22
  %i.fk = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ep, i64 noundef %i.en)
  %i.fl = load ptr, ptr %i.m, align 8, !tbaa !117
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !128
  br i1 %i.fk, label %bb.aa, label %.thread179

bb.aa:                                            ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169
  %i.fm = zext nneg i32 %i.bc to i64
end_hunk_22
begin_hunk_23
  %.12228 = phi ptr [ %i.fq, %bb.ab ], [ %i.fn, %bb.aa ]
  store ptr %.12228, ptr %i.c, align 8, !tbaa !44
  %i.fs = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.fs, label %bb.ac, label %.thread179, !prof !19

bb.ac:                                            ; preds = %.thread
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
end_hunk_23
begin_hunk_24
  %i.gb = zext i8 %i.ga to i32
  br label %.backedge

.thread179:                                       ; preds = %bb.u, %bb.r, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131, %bb.w, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %.thread, %bb.g, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %.thread164, %bb.b
  %2 = load ptr, ptr %i.a, align 8, !tbaa !128
  store ptr %2, ptr %i.m, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
end_hunk_24
