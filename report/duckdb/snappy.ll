Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/snappy?download=true
inline.NumInlined: 514
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN13duckdb_snappy10UncompressEPNS_6SourceEPNS_4SinkE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn19.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy17SnappyIOVecReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !guid !187 {
bb.a:
  tail call void @_ZN13duckdb_snappy6SourceD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK13duckdb_snappy17SnappyIOVecReader9AvailableEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !guid !188 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN13duckdb_snappy17SnappyIOVecReader4PeekEPm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !guid !189 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.b, ptr %1, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy17SnappyIOVecReader4SkipEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 !guid !192 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %i.c = icmp uge i64 %1, %i.b
  %i.d = icmp ne i64 %1, 0
  %i.e = and i1 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.e, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = load i64, ptr %i.f, align 8, !tbaa !89
  %.pre27 = load ptr, ptr %i.g, align 8, !tbaa !87
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !89
  %.promoted15 = load ptr, ptr %i.h, align 8
  br label %.peel.begin

.peel.begin:                                      ; preds = %.lr.ph, %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit
  %i.i = phi ptr [ %.promoted15, %.lr.ph ], [ %i.aa, %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit ] ; 3 uses
  %.lcssa13 = phi i64 [ %.promoted, %.lr.ph ], [ %i.l, %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit ] ; 2 uses
  %i.j = phi i64 [ %i.b, %.lr.ph ], [ %i.z, %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit ] ; 3 uses
  %.010 = phi i64 [ %1, %.lr.ph ], [ %i.k, %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %i.k = sub nuw i64 %.010, %i.j                  ; 4 uses
  %i.l = sub i64 %.lcssa13, %i.j                  ; 3 uses
  %i.m = icmp eq i64 %.lcssa13, %i.j
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.peel.begin
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !86
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !63   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.peel.next, label %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit

bb.c:                                             ; preds = %.peel.begin
  store i64 %i.l, ptr %i.f, align 8, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %i.s = phi ptr [ %i.t, %.peel.next ], [ %i.n, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !63   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.peel.next, label %.loopexit.i.loopexit, !llvm.loop !190

.loopexit.i.loopexit:                             ; preds = %.peel.next
  store ptr %i.t, ptr %i.h, align 8, !tbaa !86
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !62
  br label %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit

_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit: ; preds = %bb.b, %.loopexit.i.loopexit, %bb.c
  %i.y = phi ptr [ null, %bb.c ], [ %i.o, %bb.b ], [ %i.x, %.loopexit.i.loopexit ]
  %i.z = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ], [ %i.v, %.loopexit.i.loopexit ] ; 3 uses
  %i.aa = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.b ], [ %i.t, %.loopexit.i.loopexit ]
  %i.ab = icmp uge i64 %i.k, %i.z
  %i.ac = icmp ne i64 %i.k, 0
  %i.ad = and i1 %i.ac, %i.ab
  br i1 %i.ad, label %.peel.begin, label %._crit_edge, !llvm.loop !191

._crit_edge:                                      ; preds = %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit, %.._crit_edge_crit_edge
  %i.ae = phi ptr [ %.pre27, %.._crit_edge_crit_edge ], [ %i.y, %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %i.af = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.l, %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %.0.lcssa = phi i64 [ %1, %.._crit_edge_crit_edge ], [ %i.k, %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit ] ; 3 uses
  %.lcssa8 = phi i64 [ %i.b, %.._crit_edge_crit_edge ], [ %i.z, %_ZN13duckdb_snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %i.ag = sub i64 %.lcssa8, %.0.lcssa
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = sub i64 %i.af, %.0.lcssa
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.0.lcssa
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !87
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyIOVecWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) !guid !195 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 4)
  %i.j = sub i64 0, %.sroa.speculated.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !118
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.m, label %bb.c, label %.thread148, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.r, i64 4)
  %i.s = sub i64 0, %.sroa.speculated.i124
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  store ptr %i.t, ptr %i.l, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.n, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.u = load i8, ptr %.091, align 1, !tbaa !20
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit

_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit: ; preds = %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge, %bb.d
  %.0135 = phi i32 [ %i.v, %bb.d ], [ %.0135.be, %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge ] ; 2 uses
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 9 uses
  %i.ad = and i32 %.0135, 255                     ; 4 uses
  %i.ae = and i32 %.0135, 3                       ; 3 uses
  switch i32 %i.ae, label %bb.u [
    i32 0, label %bb.e
    i32 3, label %bb.t
  ], !prof !119

bb.e:                                             ; preds = %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %i.af = lshr exact i32 %i.ad, 2
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ac to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = call noundef zeroext i1 @_ZN13duckdb_snappy17SnappyIOVecWriter13TryFastAppendEPKcmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.ac, i64 noundef %i.al, i64 noundef %i.ah, ptr noundef nonnull %i.a)
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20
  %i.ap = zext i8 %i.ao to i32
  br label %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge: ; preds = %bb.f, %bb.s, %bb.y, %bb.v
  %.0135.be = phi i32 [ %i.en, %bb.y ], [ %i.df, %bb.s ], [ %i.ea, %bb.v ], [ %i.ap, %bb.f ]
  %.1.be = phi ptr [ %.13, %bb.y ], [ %.8, %bb.s ], [ %i.dz, %bb.v ], [ %i.an, %bb.f ]
  br label %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = icmp samesign ugt i32 %i.ad, 236
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !32

bb.h:                                             ; preds = %bb.g
  %i.ar = add nsw i64 %i.ah, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ac, align 1
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = and i64 %i.as, 4294967288
  %i.au = shl nuw i64 4294967295, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = xor i32 %i.av, -1
  %i.ax = and i32 %.0.copyload.i, %i.aw
  %i.ay = add i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.092 = phi i64 [ %i.az, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %.6 = phi ptr [ %i.ba, %bb.h ], [ %i.ac, %bb.g ] ; 3 uses
  %.pre-phi = ptrtoint ptr %.6 to i64
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %.pre-phi                ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.092
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.o
  %.0163 = phi i64 [ %i.cm, %bb.o ], [ %i.bd, %bb.i ] ; 4 uses
  %.7162 = phi ptr [ %i.cl, %bb.o ], [ %.6, %bb.i ]
  %.193161 = phi i64 [ %i.co, %bb.o ], [ %.092, %bb.i ]
  %i.bf = load i64, ptr %i.w, align 8, !tbaa !66
  %i.bg = add i64 %i.bf, %.0163
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !67
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %.thread148, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %.not15.i.i = icmp eq i64 %.0163, 0
  br i1 %.not15.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %.pre.i.i = load i64, ptr %i.z, align 8, !tbaa !65
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.bj = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.bw, %bb.n ] ; 2 uses
  %.0917.i.i = phi ptr [ %.7162, %.lr.ph.i.i ], [ %i.bz, %bb.n ] ; 2 uses
  %storemerge16.i.i = phi i64 [ %.0163, %.lr.ph.i.i ], [ %i.ca, %bb.n ] ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %._crit_edge21.i.i

._crit_edge21.i.i:                                ; preds = %bb.k
  %.pre22.i.i = load ptr, ptr %i.aa, align 8, !tbaa !64
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !60  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !59
  %.not11.i.i = icmp ult ptr %i.bm, %i.bn
  br i1 %.not11.i.i, label %bb.m, label %.thread148

bb.m:                                             ; preds = %bb.l
  store ptr %i.bm, ptr %i.y, align 8, !tbaa !60
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !62 ; 2 uses
  store ptr %i.bo, ptr %i.aa, align 8, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !63 ; 2 uses
  store i64 %i.bq, ptr %i.z, align 8, !tbaa !65
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge21.i.i
  %i.br = phi ptr [ %i.bo, %bb.m ], [ %.pre22.i.i, %._crit_edge21.i.i ]
  %i.bs = phi i64 [ %i.bq, %bb.m ], [ %i.bj, %._crit_edge21.i.i ]
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %storemerge16.i.i) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %.0917.i.i, i64 %.sroa.speculated.i.i, i1 false)
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.speculated.i.i
  store ptr %i.bu, ptr %i.aa, align 8, !tbaa !64
  %i.bv = load i64, ptr %i.z, align 8, !tbaa !65
  %i.bw = sub i64 %i.bv, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.bw, ptr %i.z, align 8, !tbaa !65
  %i.bx = load i64, ptr %i.w, align 8, !tbaa !66
  %i.by = add i64 %i.bx, %.sroa.speculated.i.i
  store i64 %i.by, ptr %i.w, align 8, !tbaa !66
  %i.bz = getelementptr inbounds nuw i8, ptr %.0917.i.i, i64 %.sroa.speculated.i.i
  %i.ca = sub nuw nsw i64 %storemerge16.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.k, !llvm.loop !2

.loopexit:                                        ; preds = %bb.n, %bb.j
  %i.cb = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.cc = load i32, ptr %i.ab, align 8, !tbaa !49
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i64 noundef %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ch = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.b) ; 3 uses
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !22  ; 6 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.ab, align 8, !tbaa !49
  %.not119 = icmp eq i64 %i.cm, 0
  br i1 %.not119, label %.thread, label %bb.o

.thread:                                          ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.thread148

bb.o:                                             ; preds = %.loopexit
  %i.co = sub nuw nsw i64 %.193161, %.0163        ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm ; 2 uses
  store ptr %i.cp, ptr %i.e, align 8, !tbaa !47
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.cm, i64 4)
  %i.cq = sub i64 0, %.sroa.speculated.i126
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  store ptr %i.cr, ptr %i.l, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.cs = icmp ult i64 %i.cm, %i.co
  br i1 %i.cs, label %.lr.ph, label %._crit_edge, !llvm.loop !194

._crit_edge:                                      ; preds = %bb.o, %bb.i
  %.193.lcssa = phi i64 [ %.092, %bb.i ], [ %i.co, %bb.o ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6, %bb.i ], [ %i.cl, %bb.o ] ; 2 uses
  %i.ct = call noundef zeroext i1 @_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.7.lcssa, i64 noundef %.193.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.ct, label %bb.p, label %.thread148

bb.p:                                             ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.cv = load ptr, ptr %i.l, align 8, !tbaa !117
  %.not118 = icmp ult ptr %i.cu, %i.cv
  br i1 %.not118, label %bb.s, label %bb.q, !prof !29

bb.q:                                             ; preds = %bb.p
  store ptr %i.cu, ptr %i.c, align 8, !tbaa !46
  %i.cw = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.cw, label %bb.r, label %.thread148, !prof !29

bb.r:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %.sroa.speculated.i127 = call i64 @llvm.smin.i64(i64 %i.db, i64 4)
  %i.dc = sub i64 0, %.sroa.speculated.i127
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 %i.dc
  store ptr %i.dd, ptr %i.l, align 8, !tbaa !117
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.cx, %bb.r ], [ %i.cu, %bb.p ] ; 2 uses
  %i.de = load i8, ptr %.8, align 1, !tbaa !20
  %i.df = zext i8 %i.de to i32
  br label %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

bb.t:                                             ; preds = %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %.0.copyload.i128 = load i32, ptr %i.ac, align 1
  %i.dg = zext i32 %.0.copyload.i128 to i64
  %i.dh = lshr i32 %i.ad, 2
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = call noundef zeroext i1 @_ZN13duckdb_snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.dg, i64 noundef %i.dj, ptr noundef nonnull %i.a)
  br i1 %i.dk, label %bb.w, label %.thread148

bb.u:                                             ; preds = %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %i.dl = zext nneg i32 %i.ad to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @_ZN13duckdb_snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !31 ; 2 uses
  %i.do = sext i16 %i.dn to i64
  %.0.copyload.i129 = load i32, ptr %i.ac, align 1 ; 2 uses
  %i.dp = shl nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.dq = shl nsw i32 -1, %i.dp
  %i.dr = xor i32 %i.dq, -1
  %i.ds = and i32 %.0.copyload.i129, %i.dr
  %i.dt = and i16 %i.dn, 255
  %i.du = zext nneg i16 %i.dt to i64              ; 2 uses
  %i.dv = sub nsw i64 %i.du, %i.do
  %.tr = trunc nsw i64 %i.dv to i32
  %.narrow = add nsw i32 %i.ds, %.tr
  %i.dw = zext i32 %.narrow to i64
  %i.dx = call noundef zeroext i1 @_ZN13duckdb_snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.dw, i64 noundef %i.du, ptr noundef nonnull %i.a)
  br i1 %i.dx, label %bb.v, label %.thread148

bb.v:                                             ; preds = %bb.u
  %i.dy = zext nneg i32 %i.ae to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.dy ; 3 uses
  %i.ea = lshr i32 %.0.copyload.i129, %i.dp
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !117
  %.not152 = icmp ult ptr %i.dz, %i.eb
  br i1 %.not152, label %_ZN13duckdb_snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge, label %.thread183, !prof !120

bb.w:                                             ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %.1, i64 5 ; 3 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.ed = icmp ult ptr %i.ec, %.pre
  br i1 %i.ed, label %bb.y, label %.thread183, !prof !121

.thread183:                                       ; preds = %bb.v, %bb.w
  %.12186 = phi ptr [ %i.ec, %bb.w ], [ %i.dz, %bb.v ]
  store ptr %.12186, ptr %i.c, align 8, !tbaa !46
  %i.ee = call noundef zeroext i1 @_ZN13duckdb_snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.ee, label %bb.x, label %.thread148, !prof !29

bb.x:                                             ; preds = %.thread183
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %.sroa.speculated.i130 = call i64 @llvm.smin.i64(i64 %i.ej, i64 4)
  %i.ek = sub i64 0, %.sroa.speculated.i130
  %i.el = getelementptr inbounds i8, ptr %i.eg, i64 %i.ek
  store ptr %i.el, ptr %i.l, align 8, !tbaa !117
  br label %bb.y
end_hunk_0
