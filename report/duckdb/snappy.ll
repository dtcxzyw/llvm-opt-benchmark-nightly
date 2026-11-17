Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/snappy?download=true
inline.NumInlined: 514
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_:bb.a
  %i.bw = zext i8 %i.bv to i32
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.t, %bb.ad, %bb.aa
  %.0141.be = phi i32 [ %i.ga, %bb.ad ], [ %i.dy, %bb.t ], [ %i.fn, %bb.aa ], [ %i.bw, %bb.l ]
  %.1.be = phi ptr [ %.13, %bb.ad ], [ %.8, %bb.t ], [ %i.fm, %bb.aa ], [ %i.bu, %bb.l ]
  br label %bb.e

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.k
  %i.bx = icmp samesign ugt i32 %i.bb, 236
  br i1 %i.bx, label %bb.m, label %bb.n, !prof !32

bb.m:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %i.by = add nsw i64 %i.bf, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ba, align 1
  %i.bz = shl nsw i64 %i.by, 3
  %i.ca = and i64 %i.bz, 4294967288
  %i.cb = shl nuw i64 4294967295, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = xor i32 %i.cc, -1
  %i.ce = and i32 %.0.copyload.i, %i.cd
  %i.cf = add i32 %i.ce, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.by ; 2 uses
  %.pre198 = ptrtoint ptr %i.ch to i64
  %.pre199 = sub i64 %i.bh, %.pre198
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %.pre-phi200 = phi i64 [ %.pre199, %bb.m ], [ %i.bj, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.092 = phi i64 [ %i.cg, %bb.m ], [ %i.bf, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.ch, %bb.m ], [ %i.ba, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.ci = icmp ult i64 %.pre-phi200, %.092
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n, %bb.p
  %.0190 = phi i64 [ %i.dc, %bb.p ], [ %.pre-phi200, %bb.n ] ; 5 uses
  %.7189 = phi ptr [ %i.db, %bb.p ], [ %.6, %bb.n ] ; 2 uses
  %.193188 = phi i64 [ %i.de, %bb.p ], [ %.092, %bb.n ]
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !118 ; 4 uses
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !127
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.not.i = icmp ugt i64 %.0190, %i.cn
  br i1 %.not.i, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread: ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %.7189, i64 %.0190, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.0190
  store ptr %i.co, ptr %i.a, align 8, !tbaa !118
  br label %bb.o

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit: ; preds = %.lr.ph
  store ptr %i.cj, ptr %i.m, align 8, !tbaa !110
  %i.cp = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7189, i64 noundef %.0190)
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !110
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !118
  br i1 %i.cp, label %bb.o, label %.thread178

bb.o:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.cs = load i32, ptr %i.ab, align 8, !tbaa !49
  %i.ct = zext i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i64 noundef %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.cx = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef ptr %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull %i.b) ; 3 uses
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !22  ; 6 uses
  %i.dd = trunc i64 %i.dc to i32
  store i32 %i.dd, ptr %i.ab, align 8, !tbaa !49
  %.not119 = icmp eq i64 %i.dc, 0
  br i1 %.not119, label %.thread163, label %bb.p

.thread163:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.thread178

bb.p:                                             ; preds = %bb.o
  %i.de = sub nuw nsw i64 %.193188, %.0190        ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc ; 2 uses
  store ptr %i.df, ptr %i.e, align 8, !tbaa !47
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.dc, i64 4)
  %i.dg = sub i64 0, %.sroa.speculated.i126
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  store ptr %i.dh, ptr %i.l, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.di = icmp ult i64 %i.dc, %i.de
  br i1 %i.di, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !238

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %.pre195 = load ptr, ptr %i.aa, align 8, !tbaa !127
  %.pre201 = ptrtoint ptr %.pre195 to i64
  %.pre203 = ptrtoint ptr %.pre to i64
  %.pre205 = sub i64 %.pre201, %.pre203
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %.pre-phi206 = phi i64 [ %.pre205, %._crit_edge.loopexit ], [ %i.bo, %bb.n ]
  %i.dj = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bk, %bb.n ] ; 3 uses
  %.193.lcssa = phi i64 [ %i.de, %._crit_edge.loopexit ], [ %.092, %bb.n ] ; 5 uses
  %.7.lcssa = phi ptr [ %i.db, %._crit_edge.loopexit ], [ %.6, %bb.n ] ; 3 uses
  %.not.i127 = icmp ugt i64 %.193.lcssa, %.pre-phi206
  br i1 %.not.i127, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %.7.lcssa, i64 %.193.lcssa, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.193.lcssa
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !118
  br label %bb.q

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130: ; preds = %._crit_edge
  store ptr %i.dj, ptr %i.m, align 8, !tbaa !110
  %i.dl = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7.lcssa, i64 noundef %.193.lcssa)
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !110
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !118
  br i1 %i.dl, label %bb.q, label %.thread178

bb.q:                                             ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130
  %i.dn = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.do = load ptr, ptr %i.l, align 8, !tbaa !117
  %.not118 = icmp ult ptr %i.dn, %i.do
  br i1 %.not118, label %bb.t, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !46
  %i.dp = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.dp, label %bb.s, label %.thread178, !prof !29

bb.s:                                             ; preds = %bb.r
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  %.sroa.speculated.i131 = call i64 @llvm.smin.i64(i64 %i.du, i64 4)
  %i.dv = sub i64 0, %.sroa.speculated.i131
  %i.dw = getelementptr inbounds i8, ptr %i.dr, i64 %i.dv
  store ptr %i.dw, ptr %i.l, align 8, !tbaa !117
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.8 = phi ptr [ %i.dq, %bb.s ], [ %i.dn, %bb.q ] ; 2 uses
  %i.dx = load i8, ptr %.8, align 1, !tbaa !20
  %i.dy = zext i8 %i.dx to i32
  br label %.backedge

bb.u:                                             ; preds = %bb.j
  %.0.copyload.i132 = load i32, ptr %i.ba, align 1
  %i.dz = zext i32 %.0.copyload.i132 to i64
  %i.ea = lshr i32 %i.bb, 2
  %i.eb = add nuw nsw i32 %i.ea, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.dz, i64 noundef %i.ec, ptr noundef nonnull %i.a)
  br i1 %i.ed, label %bb.ab, label %.thread178

bb.v:                                             ; preds = %bb.j
  %i.ee = zext nneg i32 %i.bb to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr @_ZN13duckdb_snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !31 ; 2 uses
  %i.eh = sext i16 %i.eg to i64
  %.0.copyload.i133 = load i32, ptr %i.ba, align 1 ; 2 uses
  %i.ei = shl nuw nsw i32 %i.bc, 3                ; 2 uses
  %i.ej = shl nsw i32 -1, %i.ei
  %i.ek = xor i32 %i.ej, -1
  %i.el = and i32 %.0.copyload.i133, %i.ek
  %i.em = and i16 %i.eg, 255
  %i.en = zext nneg i16 %i.em to i64              ; 5 uses
  %i.eo = sub nsw i64 %i.en, %i.eh
  %.tr = trunc nsw i64 %i.eo to i32
  %.narrow = add nsw i32 %i.el, %.tr              ; 2 uses
  %i.ep = zext i32 %.narrow to i64                ; 5 uses
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !118 ; 9 uses
  %i.er = load ptr, ptr %i.z, align 8, !tbaa !109
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp ult i64 %i.eu, %i.ep               ; 2 uses
  %i.ew = load ptr, ptr %i.y, align 8
  %.not.i134 = icmp uge ptr %i.eq, %i.ew
  %or.cond.not.i = select i1 %i.ev, i1 true, i1 %.not.i134, !prof !125
  %i.ex = icmp samesign ult i64 %i.ep, %i.en
  %i.ey = or i1 %i.ex, %or.cond.not.i
  br i1 %i.ey, label %bb.w, label %bb.z, !prof !32

bb.w:                                             ; preds = %bb.v
  %i.ez = icmp eq i32 %.narrow, 0
  br i1 %i.ez, label %.thread178, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en ; 3 uses
  %i.fb = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.fc = icmp ugt ptr %i.fa, %i.fb
  %or.cond35.i = select i1 %i.ev, i1 true, i1 %i.fc, !prof !125
  br i1 %or.cond35.i, label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, label %bb.y, !prof !125

bb.y:                                             ; preds = %bb.x
  %i.fd = sub nsw i64 0, %i.ep
  %i.fe = getelementptr inbounds i8, ptr %i.eq, i64 %i.fd
  %i.ff = call fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.fe, ptr noundef %i.eq, ptr noundef %i.fa, ptr noundef %i.fb) ; 0 uses
  br label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

bb.z:                                             ; preds = %bb.v
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en
  %i.fh = sub nsw i64 0, %i.ep
  %i.fi = getelementptr inbounds i8, ptr %i.eq, i64 %i.fh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.eq, ptr noundef nonnull align 1 dereferenceable(64) %i.fi, i64 64, i1 false)
  br label %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168: ; preds = %bb.z, %bb.y
  %.sink.i.ph = phi ptr [ %i.fa, %bb.y ], [ %i.fg, %bb.z ]
  store ptr %.sink.i.ph, ptr %i.a, align 8, !tbaa !118
  br label %bb.aa

_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit: ; preds = %bb.x
  store ptr %i.eq, ptr %i.m, align 8, !tbaa !110
  %i.fj = call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ep, i64 noundef %i.en)
  %i.fk = load ptr, ptr %i.m, align 8, !tbaa !110
  store ptr %i.fk, ptr %i.a, align 8, !tbaa !118
  br i1 %i.fj, label %bb.aa, label %.thread178

bb.aa:                                            ; preds = %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168
  %i.fl = zext nneg i32 %i.bc to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.fl ; 3 uses
  %i.fn = lshr i32 %.0.copyload.i133, %i.ei
  %i.fo = load ptr, ptr %i.l, align 8, !tbaa !117
  %.not182 = icmp ult ptr %i.fm, %i.fo
  br i1 %.not182, label %.backedge, label %.thread, !prof !120

bb.ab:                                            ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 3 uses
  %.pre197 = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.fq = icmp ult ptr %i.fp, %.pre197
  br i1 %i.fq, label %bb.ad, label %.thread, !prof !121

.thread:                                          ; preds = %bb.aa, %bb.ab
  %.12226 = phi ptr [ %i.fp, %bb.ab ], [ %i.fm, %bb.aa ]
  store ptr %.12226, ptr %i.c, align 8, !tbaa !46
  %i.fr = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.fr, label %bb.ac, label %.thread178, !prof !29

bb.ac:                                            ; preds = %.thread
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.ft = load ptr, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %.sroa.speculated.i136 = call i64 @llvm.smin.i64(i64 %i.fw, i64 4)
  %i.fx = sub i64 0, %.sroa.speculated.i136
  %i.fy = getelementptr inbounds i8, ptr %i.ft, i64 %i.fx
  store ptr %i.fy, ptr %i.l, align 8, !tbaa !117
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.13 = phi ptr [ %i.fs, %bb.ac ], [ %i.fp, %bb.ab ] ; 2 uses
  %i.fz = load i8, ptr %.13, align 1, !tbaa !20
  %i.ga = zext i8 %i.fz to i32
  br label %.backedge

.thread178:                                       ; preds = %bb.u, %bb.r, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130, %bb.w, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %.thread, %bb.g, %_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %.thread163, %bb.b
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !118
  store ptr %i.gb, ptr %i.m, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 comdat align 2 !guid !240 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !118    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %1                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp uge ptr %i.a, %i.i
  %or.cond.not = select i1 %i.g, i1 true, i1 %.not, !prof !125
  %i.j = icmp ult i64 %1, %2
  %i.k = or i1 %i.j, %or.cond.not
  br i1 %i.k, label %bb.b, label %bb.e, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %or.cond35 = select i1 %i.g, i1 true, i1 %i.p, !prof !125
  br i1 %or.cond35, label %.critedge, label %bb.d, !prof !125

.critedge:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.a, ptr %i.q, align 8, !tbaa !110
  %i.r = tail call noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2)
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !110
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.t = sub i64 0, %1
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = tail call fastcc noundef ptr @_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.u, ptr noundef %i.a, ptr noundef %i.m, ptr noundef %i.o) ; 0 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.x = sub i64 0, %1
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %i.y, i64 64, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.d, %bb.e
  %.sink = phi ptr [ %i.w, %bb.e ], [ %i.m, %bb.d ], [ %i.s, %.critedge ]
  %.0.ph = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ %i.r, %.critedge ]
  store ptr %.sink, ptr %3, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13duckdb_snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !guid !242 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not = icmp ugt i64 %2, %i.g
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.035 = phi i64 [ %i.g, %.lr.ph ], [ %.sroa.speculated20, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.01434 = phi i64 [ %2, %.lr.ph ], [ %i.x, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ]
  %.01533 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %.01533, i64 %.035, i1 false)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.035 ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !110
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i64, ptr %i.i, align 8, !tbaa !111
  %i.w = add i64 %i.u, %i.v                       ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !111
  %i.x = sub nuw i64 %.01434, %.035               ; 4 uses
  %i.y = add i64 %i.w, %i.x
  %i.z = load i64, ptr %i.j, align 8, !tbaa !107  ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.01533, i64 %.035 ; 2 uses
  %i.ac = sub i64 %i.z, %i.w                      ; 2 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 65536) ; 4 uses
  %i.ad = trunc nuw nsw i64 %.sroa.speculated20 to i32
  %i.ae = tail call noundef ptr @_ZN13duckdb_snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ad) ; 4 uses
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !109
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !110
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.speculated20 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !127
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 63)
  %i.ag = sub nsw i64 0, %.sroa.speculated
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !126
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !243 ; 4 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !244
  %.not.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !118
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !243
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !116 ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.f, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #30
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !118
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !118
  %i.az = icmp sgt i64 %i.ao, 0
  br i1 %i.az, label %bb.g, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #26
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !116
  store ptr %i.ba, ptr %i.m, align 8, !tbaa !243
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bb, ptr %i.n, align 8, !tbaa !244
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %.not38 = icmp ugt i64 %i.x, %.sroa.speculated20
  br i1 %.not38, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !241

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bc = phi ptr [ %i.d, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.015.lcssa = phi ptr [ %1, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  %.014.lcssa = phi i64 [ %2, %bb.a ], [ %i.x, %._crit_edge.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %.015.lcssa, i64 %.014.lcssa, i1 false)
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.014.lcssa
  store ptr %i.be, ptr %i.c, align 8, !tbaa !110
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %i.bf = phi i1 [ true, %._crit_edge ], [ false, %bb.b ]
  ret i1 %i.bf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN13duckdb_snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !guid !249 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = icmp slt i32 %1, 0
  %i.c = select i1 %i.b, i64 -1, i64 %i.a
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #25 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.g, align 8, !tbaa !118
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.a, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %i.f, align 8, !tbaa !113
  br label %_ZNSt6vectorIN13duckdb_snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !112  ; 5 uses
  %i.l = ptrtoint ptr %i.g to i64
end_hunk_0
