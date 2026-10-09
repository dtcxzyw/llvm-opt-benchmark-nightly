Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/icc_codec?download=true
inline.NumInlined: 507
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3jxl9ICCReader4InitEPNS_9BitReaderE:bb.a

bb.q:                                             ; preds = %bb.o
  %i.ec = sub nuw i64 %i.z, %i.m                  ; 2 uses
  %i.ed = lshr i64 %i.ec, 3                       ; 2 uses
  %i.ee = and i64 %i.ec, 7                        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 16, i1 false)
  %i.ef = sub i64 %i.s, %i.e
  %i.eg = icmp ugt i64 %i.ed, %i.ef
  br i1 %i.eg, label %.thread.i, label %bb.r, !prof !64

.thread.i:                                        ; preds = %bb.q
  %i.eh = or disjoint i64 %i.ee, 8
  store ptr %i.r, ptr %i.a, align 8, !tbaa !29
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ed ; 4 uses
  store ptr %i.ei, ptr %i.a, align 8, !tbaa !29
  %i.ej = icmp ugt ptr %i.ei, %i.q
  br i1 %i.ej, label %bb.s, label %bb.t, !prof !111

bb.s:                                             ; preds = %bb.r, %.thread.i
  %.020.i = phi i64 [ %i.eh, %.thread.i ], [ %i.ee, %bb.r ]
  tail call void @_ZN3jxl9BitReader19BoundsCheckedRefillEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !32
  %.pre12.i = load i64, ptr %1, align 8, !tbaa !63
  br label %_ZN3jxl9BitReader6RefillEv.exit.i

bb.t:                                             ; preds = %bb.r
  %.0.copyload.i.i = load i64, ptr %i.ei, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 7
  store ptr %i.ek, ptr %i.a, align 8, !tbaa !29
  br label %_ZN3jxl9BitReader6RefillEv.exit.i

_ZN3jxl9BitReader6RefillEv.exit.i:                ; preds = %bb.t, %bb.s
  %.019.i = phi i64 [ %.020.i, %bb.s ], [ %i.ee, %bb.t ] ; 2 uses
  %i.el = phi i64 [ %.pre12.i, %bb.s ], [ %.0.copyload.i.i, %bb.t ]
  %i.em = phi i64 [ %.pre.i, %bb.s ], [ 56, %bb.t ]
  %i.en = sub i64 %i.em, %.019.i
  store i64 %i.en, ptr %i.l, align 8, !tbaa !32
  %i.eo = lshr i64 %i.el, %.019.i
  br label %_ZN3jxl9BitReader8SkipBitsEm.exit

_ZN3jxl9BitReader8SkipBitsEm.exit:                ; preds = %bb.p, %_ZN3jxl9BitReader6RefillEv.exit.i
  %storemerge.i = phi i64 [ %i.eb, %bb.p ], [ %i.eo, %_ZN3jxl9BitReader6RefillEv.exit.i ]
  store i64 %storemerge.i, ptr %1, align 8, !tbaa !63
  br label %bb.u

bb.u:                                             ; preds = %_ZN3jxl9BitReader8SkipBitsEm.exit, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit, %bb.d, %bb.c, %bb.a, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit30
  %.sroa.037.1 = phi i32 [ -1, %bb.a ], [ %i.ag, %bb.d ], [ %.sroa.037.060, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit30 ], [ 1, %bb.c ], [ 0, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit ], [ 0, %_ZN3jxl9BitReader8SkipBitsEm.exit ]
  ret i32 %.sroa.037.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @_ZN3jxl9ICCReader8CheckEOIEPNS_9BitReaderE(ptr nofree noundef captures(none) initializes((56, 64)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = add i64 %i.g, %i.i
  %i.k = shl i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32
  %i.n = sub i64 %i.k, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.f
  %i.u = shl i64 %i.t, 3
  %.not = icmp ugt i64 %i.n, %i.u
  %spec.select = sext i1 %.not to i32
  ret i32 %spec.select
}

declare noundef i64 @_ZN3jxl8U64Coder4ReadEPNS_9BitReaderE(ptr noundef) local_unnamed_addr #3

declare i32 @_ZN3jxl16DecodeHistogramsEP22JxlMemoryManagerStructPNS_9BitReaderEmPNS_7ANSCodeEPNSt3__16vectorIhNS6_9allocatorIhEEEEb(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN3jxl15ANSSymbolReader6CreateEPKNS_7ANSCodeEPNS_9BitReaderEm(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr.23") align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN3jxl13ICCANSContextEmmm(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesE(ptr noundef nonnull align 8 dereferenceable(880) initializes((8, 16)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(2064) ptr @_Znwm(i64 noundef 2064) #16, !noalias !117 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.b, i8 0, i64 2048, i1 false), !noalias !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65   ; 3 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 %i.f, ptr %i.g, align 4, !tbaa !120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !68   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !122
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = zext i32 %i.f to i64                     ; 2 uses
  %i.q = and i64 %i.p, 1048575                    ; 4 uses
  %i.r = add nuw nsw i64 %i.p, 512
  %i.s = and i64 %i.r, 1048575                    ; 3 uses
  %i.t = icmp samesign ugt i64 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = sub nuw nsw i64 %i.s, %i.q
  %i.x = shl nuw nsw i64 %i.w, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 4 %i.v, i64 %i.x, i1 false)
  br label %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit"

bb.d:                                             ; preds = %bb.b
  %i.y = sub nuw nsw i64 1048576, %i.q            ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 4 dereferenceable(1) %i.v, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.y
  %i.ab = shl nuw nsw i64 %i.s, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr nonnull align 4 %i.o, i64 %i.ab, i1 false)
  br label %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit"

"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit": ; preds = %bb.a, %bb.c, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.al = add i64 %i.ai, %i.ak
  %i.am = shl i64 %i.al, 3                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !57
  %i.ar = add i64 %i.aq, %i.ao
  %i.as = sub i64 %i.am, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !58
  %i.au = load i64, ptr %0, align 8, !tbaa !60    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !59
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit"
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.r
  %i.bg = phi i32 [ %i.l, %.lr.ph ], [ %i.dv, %bb.r ] ; 2 uses
  %i.bh = phi i32 [ %i.i, %.lr.ph ], [ %i.dw, %bb.r ] ; 2 uses
  %i.bi = phi i32 [ %i.f, %.lr.ph ], [ %i.dx, %bb.r ] ; 3 uses
  %i.bj = phi i32 [ %i.d, %.lr.ph ], [ %i.dy, %bb.r ] ; 2 uses
  %i.bk = phi i64 [ %i.au, %.lr.ph ], [ %i.et, %bb.r ] ; 7 uses
  %.081 = phi i64 [ %i.au, %.lr.ph ], [ %.1, %bb.r ] ; 2 uses
  %i.bl = and i64 %i.bk, 511
  %i.bm = icmp ne i64 %i.bl, 0
  %.not = icmp eq i64 %i.bk, 0
  %or.cond = or i1 %.not, %i.bm
  br i1 %or.cond, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = shl i64 %i.bt, 3                        ; 2 uses
  %i.bv = load i64, ptr %i.an, align 8, !tbaa !32 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  store i64 %i.bw, ptr %i.ay, align 8, !tbaa !33
  %i.bx = load ptr, ptr %i.az, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.bq
  %i.cb = shl i64 %i.ca, 3
  %.not.i.not.i = icmp ugt i64 %i.bw, %i.cb
  br i1 %.not.i.not.i, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  store i32 %i.bj, ptr %i.c, align 4, !tbaa !65
  store i32 %i.bi, ptr %i.e, align 8, !tbaa !66
  store i32 %i.bh, ptr %i.h, align 4, !tbaa !67
  store i32 %i.bg, ptr %i.k, align 8, !tbaa !68
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !69  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i1.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = zext i32 %i.bi to i64                   ; 2 uses
  %i.ce = and i64 %i.cd, 1048575                  ; 4 uses
  %i.cf = add nuw nsw i64 %i.cd, 512
  %i.cg = and i64 %i.cf, 1048575                  ; 3 uses
  %i.ch = icmp samesign ugt i64 %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ce ; 2 uses
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = sub nuw nsw i64 %i.cg, %i.ce
  %i.ck = shl nuw nsw i64 %i.cj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr nonnull align 8 %i.ba, i64 %i.ck, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cl = sub nuw nsw i64 1048576, %i.ce          ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.cm, i1 false)
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cl
  %i.cp = shl nuw nsw i64 %i.cg, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cn, ptr nonnull align 4 %i.co, i64 %i.cp, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  store i64 %.081, ptr %0, align 8, !tbaa !60
  br label %_ZNSt3__110unique_ptrIN3jxl15ANSSymbolReader10CheckpointENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

bb.l:                                             ; preds = %bb.f
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !65  ; 2 uses
  store i32 %i.cq, ptr %i.a, align 8, !tbaa !119
  %i.cr = load i32, ptr %i.e, align 8, !tbaa !66  ; 3 uses
  store i32 %i.cr, ptr %i.g, align 4, !tbaa !120
  %i.cs = load i32, ptr %i.h, align 4, !tbaa !67  ; 2 uses
  store i32 %i.cs, ptr %i.j, align 4, !tbaa !121
  %i.ct = load i32, ptr %i.k, align 8, !tbaa !68  ; 2 uses
  store i32 %i.ct, ptr %i.m, align 8, !tbaa !122
  %i.cu = load ptr, ptr %i.n, align 8, !tbaa !69  ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i18, label %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit19", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = zext i32 %i.cr to i64                   ; 2 uses
  %i.cw = and i64 %i.cv, 1048575                  ; 4 uses
  %i.cx = add nuw nsw i64 %i.cv, 512
  %i.cy = and i64 %i.cx, 1048575                  ; 3 uses
  %i.cz = icmp samesign ugt i64 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cw ; 2 uses
  br i1 %i.cz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.db = sub nuw nsw i64 %i.cy, %i.cw
  %i.dc = shl nuw nsw i64 %i.db, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 4 %i.da, i64 %i.dc, i1 false)
  br label %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit19"

bb.o:                                             ; preds = %bb.m
  %i.dd = sub nuw nsw i64 1048576, %i.cw          ; 2 uses
  %i.de = shl nuw nsw i64 %i.dd, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 4 dereferenceable(1) %i.da, i64 %i.de, i1 false)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.dd
  %i.dg = shl nuw nsw i64 %i.cy, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.df, ptr nonnull align 4 %i.cu, i64 %i.dg, i1 false)
  br label %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit19"

"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit19": ; preds = %bb.l, %bb.n, %bb.o
  %i.dh = load i64, ptr %i.ap, align 8, !tbaa !57
  %3 = add i64 %i.dh, %i.bv
  %i.di = sub i64 %i.bu, %3                       ; 2 uses
  store i64 %i.di, ptr %i.at, align 8, !tbaa !58
  %i.dj = and i64 %i.bk, 65024
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.p, label %.critedge

bb.p:                                             ; preds = %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit19"
  %i.dl = uitofp i64 %i.di to float
  %i.dm = fmul nnan float %i.dl, 1.250000e-01
  %i.dn = uitofp i64 %i.bk to float
  %i.do = fmul nnan float %i.dm, 2.560000e+02
  %i.dp = fcmp uge float %i.do, %i.dn
  br i1 %i.dp, label %.critedge, label %_ZNSt3__110unique_ptrIN3jxl15ANSSymbolReader10CheckpointENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

.critedge:                                        ; preds = %bb.p, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit19"
  %i.dq = add i64 %i.bk, 1024
  %i.dr = load i64, ptr %i.av, align 8, !tbaa !19
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dq) ; 2 uses
  %i.ds = tail call i32 @_ZN3jxl11PaddedBytes7reserveEm(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 noundef %.sroa.speculated) #15 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_ZN3jxl11PaddedBytes6resizeEm.exit.thread, label %_ZNSt3__110unique_ptrIN3jxl15ANSSymbolReader10CheckpointENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

_ZN3jxl11PaddedBytes6resizeEm.exit.thread:        ; preds = %.critedge
  store i64 %.sroa.speculated, ptr %i.bc, align 8, !tbaa !16
  %.pre = load i64, ptr %0, align 8, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %_ZN3jxl11PaddedBytes6resizeEm.exit.thread, %bb.e
  %i.du = phi i64 [ %i.bk, %bb.e ], [ %.pre, %_ZN3jxl11PaddedBytes6resizeEm.exit.thread ] ; 3 uses
  %i.dv = phi i32 [ %i.bg, %bb.e ], [ %i.ct, %_ZN3jxl11PaddedBytes6resizeEm.exit.thread ] ; 2 uses
  %i.dw = phi i32 [ %i.bh, %bb.e ], [ %i.cs, %_ZN3jxl11PaddedBytes6resizeEm.exit.thread ] ; 2 uses
  %i.dx = phi i32 [ %i.bi, %bb.e ], [ %i.cr, %_ZN3jxl11PaddedBytes6resizeEm.exit.thread ] ; 2 uses
  %i.dy = phi i32 [ %i.bj, %bb.e ], [ %i.cq, %_ZN3jxl11PaddedBytes6resizeEm.exit.thread ] ; 2 uses
  %.1 = phi i64 [ %.081, %bb.e ], [ %i.bk, %_ZN3jxl11PaddedBytes6resizeEm.exit.thread ] ; 2 uses
  %i.dz = icmp ugt i64 %i.du, 1
  br i1 %i.dz, label %bb.r, label %_ZNSt3__110unique_ptrIN3jxl15ANSSymbolReader10CheckpointENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ea = load ptr, ptr %i.be, align 8, !tbaa !13
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.du  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 -1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !17
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr i8, ptr %i.eb, i64 -2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !17
  %i.eh = zext i8 %i.eg to i64
  %i.ei = tail call noundef i64 @_ZN3jxl13ICCANSContextEmmm(i64 noundef %i.du, i64 noundef %i.ee, i64 noundef %i.eh) #13
  %i.ej = load ptr, ptr %i.bf, align 8, !tbaa !61, !noalias !123
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !17, !noalias !123
  %i.em = zext i8 %i.el to i64
  %i.en = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %i.bd, i64 noundef %i.em, ptr noundef %1) #15
  %i.eo = trunc i64 %i.en to i8
  %i.ep = load i64, ptr %0, align 8, !tbaa !60
  %i.eq = load ptr, ptr %i.be, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ep
  store i8 %i.eo, ptr %i.er, align 1, !tbaa !17
  %i.es = load i64, ptr %0, align 8, !tbaa !60
  %i.et = add i64 %i.es, 1                        ; 3 uses
  store i64 %i.et, ptr %0, align 8, !tbaa !60
  %i.eu = load i64, ptr %i.av, align 8, !tbaa !59
  %i.ev = icmp ult i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !116

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre84.a = load ptr, ptr %i.ac, align 8, !tbaa !29
  %.pre85.a = load ptr, ptr %i.ae, align 8, !tbaa !30
  %.pre86 = load i64, ptr %i.aj, align 8, !tbaa !31
  %.pre87.a = load i64, ptr %i.an, align 8, !tbaa !32
  %.pre88 = ptrtoint ptr %.pre84.a to i64
  %.pre89.a = ptrtoint ptr %.pre85.a to i64       ; 2 uses
  %.pre91.a = sub i64 %.pre88, %.pre89.a
  %.pre93 = add i64 %.pre91.a, %.pre86
  %.pre95 = shl i64 %.pre93, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit"
  %.pre-phi96 = phi i64 [ %.pre95, %._crit_edge.loopexit ], [ %i.am, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit" ] ; 2 uses
  %.pre-phi90 = phi i64 [ %.pre89.a, %._crit_edge.loopexit ], [ %i.ah, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit" ]
  %i.ew = phi i32 [ %i.dv, %._crit_edge.loopexit ], [ %i.l, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit" ]
  %i.ex = phi i32 [ %i.dw, %._crit_edge.loopexit ], [ %i.i, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit" ]
  %i.ey = phi i32 [ %i.dx, %._crit_edge.loopexit ], [ %i.f, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit" ] ; 2 uses
  %i.ez = phi i32 [ %i.dy, %._crit_edge.loopexit ], [ %i.d, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit" ]
  %i.fa = phi i64 [ %.pre87.a, %._crit_edge.loopexit ], [ %i.ao, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit" ] ; 2 uses
  %.0.lcssa = phi i64 [ %.1, %._crit_edge.loopexit ], [ %i.au, %"_ZZN3jxl9ICCReader7ProcessEPNS_9BitReaderEPNS_11PaddedBytesEENK3$_0clEv.exit" ]
  %i.fb = sub i64 %.pre-phi96, %i.fa              ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !34
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.fg, %.pre-phi90
  %i.fi = shl i64 %i.fh, 3
  %.not.i.not.i20 = icmp ugt i64 %i.fb, %i.fi
  br i1 %.not.i.not.i20, label %bb.s, label %bb.x

bb.s:                                             ; preds = %._crit_edge
  store i32 %i.ez, ptr %i.c, align 4, !tbaa !65
  store i32 %i.ey, ptr %i.e, align 8, !tbaa !66
  store i32 %i.ex, ptr %i.h, align 4, !tbaa !67
  store i32 %i.ew, ptr %i.k, align 8, !tbaa !68
  %i.fj = load ptr, ptr %i.n, align 8, !tbaa !69  ; 2 uses
  %.not.i1.i22 = icmp eq ptr %i.fj, null
  br i1 %.not.i1.i22, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fk = zext i32 %i.ey to i64                   ; 2 uses
  %i.fl = and i64 %i.fk, 1048575                  ; 4 uses
  %i.fm = add nuw nsw i64 %i.fk, 512
  %i.fn = and i64 %i.fm, 1048575                  ; 3 uses
  %i.fo = icmp samesign ugt i64 %i.fn, %i.fl
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fl ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  br i1 %i.fo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fr = sub nuw nsw i64 %i.fn, %i.fl
  %i.fs = shl nuw nsw i64 %i.fr, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr nonnull align 8 %i.fq, i64 %i.fs, i1 false)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ft = sub nuw nsw i64 1048576, %i.fl          ; 2 uses
  %i.fu = shl nuw nsw i64 %i.ft, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fp, ptr noundef nonnull align 8 dereferenceable(1) %i.fq, i64 %i.fu, i1 false)
  %i.fv = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.ft
  %i.fx = shl nuw nsw i64 %i.fn, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fv, ptr nonnull align 4 %i.fw, i64 %i.fx, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  store i64 %.0.lcssa, ptr %0, align 8, !tbaa !60
  br label %_ZNSt3__110unique_ptrIN3jxl15ANSSymbolReader10CheckpointENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

bb.x:                                             ; preds = %._crit_edge
  %i.fy = load i64, ptr %i.ap, align 8, !tbaa !57
  %4 = add i64 %i.fy, %i.fa
  %i.fz = sub i64 %.pre-phi96, %4
  store i64 %i.fz, ptr %i.at, align 8, !tbaa !58
  %i.ga = load i32, ptr %i.c, align 4, !tbaa !65
  %i.gb = icmp eq i32 %i.ga, 1245184
  br i1 %i.gb, label %bb.y, label %_ZNSt3__110unique_ptrIN3jxl15ANSSymbolReader10CheckpointENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.gc = tail call i32 @_ZN3jxl11PaddedBytes7reserveEm(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 0) #15
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.z, label %_ZN3jxl11PaddedBytes5clearEv.exit

bb.z:                                             ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ge, align 8, !tbaa !16
  br label %_ZN3jxl11PaddedBytes5clearEv.exit

_ZN3jxl11PaddedBytes5clearEv.exit:                ; preds = %bb.y, %bb.z
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !16
  %i.gj = tail call i32 @_ZN3jxl12UnpredictICCEPKhmPNS_11PaddedBytesE(ptr noundef %i.gg, i64 noundef %i.gi, ptr noundef nonnull %2) #15
  br label %_ZNSt3__110unique_ptrIN3jxl15ANSSymbolReader10CheckpointENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl15ANSSymbolReader10CheckpointENS_14default_deleteIS3_EEED2B8nn180100Ev.exit: ; preds = %bb.q, %.critedge, %bb.p, %bb.x, %_ZN3jxl11PaddedBytes5clearEv.exit, %bb.w, %bb.k
  %.sroa.042.0 = phi i32 [ %i.gj, %_ZN3jxl11PaddedBytes5clearEv.exit ], [ 1, %bb.x ], [ -1, %bb.w ], [ -1, %bb.k ], [ 1, %bb.q ], [ 1, %bb.p ], [ %i.ds, %.critedge ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 2064) #17
  ret i32 %.sroa.042.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN3jxl11PaddedBytes7reserveEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.jxl::StatusOr.29", align 8  ; 6 uses
  %3 = alloca %"class.jxl::AlignedMemory", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = mul i64 %i.b, 3
  %i.d = lshr i64 %i.c, 1
  %.sroa.speculated4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d)
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated4, i64 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.e = load ptr, ptr %0, align 8, !tbaa !20
  %i.f = add i64 %.sroa.speculated, 8
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.29") align 8 %2, ptr noundef %i.e, i64 noundef %i.f, i64 noundef 0) #13
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !125  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(28) %2) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.o, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.l, i64 %i.q, i1 false)
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.s = load i64, ptr %i.p, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !21
  %i.u = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3) #13 ; 0 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.pr = load i32, ptr %i.g, align 8, !tbaa !125
  %i.v = icmp eq i32 %.pr, 0
  br i1 %i.v, label %bb.g, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %2) #13
  br label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit

_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit:   ; preds = %bb.b, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit
  %.sroa.0.1 = phi i32 [ %i.h, %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit ], [ 0, %bb.a ]
  ret i32 %.sroa.0.1
}

declare void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr.29") align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %0, i64 noundef %1, ptr noalias noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !67, !noalias !146 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69, !noalias !146 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !68, !noalias !146 ; 2 uses
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !68, !noalias !146
  %i.h = and i32 %i.f, 1048575
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !147, !noalias !146
  %i.l = add i32 %i.b, -1
  store i32 %i.l, ptr %i.a, align 4, !tbaa !67, !noalias !146
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !66, !noalias !146 ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !66, !noalias !146
  br label %_ZN3jxl15ANSSymbolReader30ReadHybridUintClusteredInlinedILb1EEEmmPNS_9BitReaderE.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = icmp ugt ptr %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3jxl9BitReader19BoundsCheckedRefillEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #13
  br label %_ZN3jxl9BitReader6RefillEv.exit2

bb.e:                                             ; preds = %bb.c
  %.0.copyload.i = load i64, ptr %i.q, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32   ; 3 uses
  %i.w = shl i64 %.0.copyload.i, %i.v
  %i.x = load i64, ptr %2, align 8, !tbaa !63
  %i.y = or i64 %i.x, %i.w
  store i64 %i.y, ptr %2, align 8, !tbaa !63
  %i.z = sub i64 63, %i.v
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aa
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !29
  %i.ac = or i64 %i.v, 56
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !32
  br label %_ZN3jxl9BitReader6RefillEv.exit2

_ZN3jxl9BitReader6RefillEv.exit2:                 ; preds = %bb.d, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !148, !range !149, !noalias !150, !noundef !151 ; 2 uses
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.h, !prof !64

bb.f:                                             ; preds = %_ZN3jxl9BitReader6RefillEv.exit2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !152, !noalias !153
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !158
  %i.ak = load i64, ptr %2, align 8, !tbaa !63    ; 3 uses
  %i.al = and i64 %i.ak, 255
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 4 uses
  %i.an = load i8, ptr %i.am, align 2, !tbaa !161 ; 3 uses
  %i.ao = icmp ugt i8 %i.an, 8
  br i1 %i.ao, label %bb.g, label %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit15_crit_edge

._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit15_crit_edge: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre33 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit15

bb.g:                                             ; preds = %bb.f
  %i.ap = zext i8 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.as = add i64 %i.ar, -8
  %i.at = lshr i64 %i.ak, 8                       ; 2 uses
  %i.au = add nsw i64 %i.ap, -8
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 2
end_hunk_0
