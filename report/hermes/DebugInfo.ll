Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/DebugInfo?download=true
inline.NumInlined: 835
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(23)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo24disassembleScopeDescDataERN4llvh11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %3 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %4 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !80   ; 3 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !79   ; 2 uses
  %i.l = sub i32 %i.k, %i.h                       ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 35 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ult i64 %i.v, 30
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.20, i64 noundef 30) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.s, ptr noundef nonnull align 1 dereferenceable(30) @.str.20, i64 30, i1 false)
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 30
  store ptr %i.z, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.not88 = icmp eq i32 %i.k, %i.h
  br i1 %.not88, label %._crit_edge, label %.lr.ph86

.lr.ph86:                                         ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.d

.loopexit:                                        ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit60, %_ZN4llvh11raw_ostreamlsEc.exit
  %.1.lcssa = phi i32 [ %i.bg, %_ZN4llvh11raw_ostreamlsEc.exit ], [ %i.dw, %_ZN4llvh11raw_ostreamlsEPKc.exit60 ] ; 3 uses
  %i.am = zext i32 %.1.lcssa to i64               ; 2 uses
  %i.an = icmp ugt i32 %i.l, %.1.lcssa
  br i1 %i.an, label %bb.d, label %._crit_edge, !llvm.loop !168

bb.d:                                             ; preds = %.lr.ph86, %.loopexit
  %i.ao = phi i64 [ 0, %.lr.ph86 ], [ %i.am, %.loopexit ]
  %.08285 = phi i32 [ 0, %.lr.ph86 ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !85  ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.1, i64 noundef 2) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit34

bb.f:                                             ; preds = %bb.d
  store i16 8224, ptr %i.aq, align 1
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit34

_ZN4llvh11raw_ostreamlsEPKc.exit34:               ; preds = %bb.e, %bb.f
  %.0.i.i33 = phi ptr [ %i.av, %bb.e ], [ %1, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 %i.ao, ptr %2, align 8, !tbaa !94, !alias.scope !176
  store i64 0, ptr %i.aa, align 8, !tbaa !95, !alias.scope !176
  store i32 6, ptr %i.ab, align 8, !tbaa !96, !alias.scope !176
  store i8 1, ptr %i.ac, align 4, !tbaa !97, !alias.scope !176
  store i8 0, ptr %i.ad, align 1, !tbaa !98, !alias.scope !176
  store i8 1, ptr %i.ae, align 2, !tbaa !99, !alias.scope !176
  %i.ay = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i33, ptr noundef nonnull align 8 dereferenceable(23) %2) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.az = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %.08285, ptr noundef nonnull %i.e) #14
  %i.ba = add i32 %i.az, %.08285                  ; 2 uses
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.bc = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %i.ba, ptr noundef nonnull %i.d) #14
  %i.bd = add i32 %i.bc, %i.ba                    ; 2 uses
  %i.be = load i64, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.bf = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %i.bd, ptr noundef nonnull %i.c) #14
  %i.bg = add i32 %i.bf, %i.bd                    ; 2 uses
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.bi = shl i64 %i.bh, 32
  %i.bj = ashr exact i64 %i.bi, 32                ; 3 uses
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !85  ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, 18
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit34
  %i.bq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.21, i64 noundef 18) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit37

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.bl, ptr noundef nonnull align 1 dereferenceable(18) @.str.21, i64 18, i1 false)
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 18
  store ptr %i.bs, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit37

_ZN4llvh11raw_ostreamlsEPKc.exit37:               ; preds = %bb.g, %bb.h
  %i.bt = and i64 %i.bb, 4294967295
  %i.bu = icmp eq i64 %i.bt, 4294967295
  br i1 %i.bu, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit37
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.bw = load ptr, ptr %i.r, align 8, !tbaa !85  ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ult i64 %i.bz, 6
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.22, i64 noundef 6) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bw, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false)
  %i.cc = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store ptr %i.cd, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit37
  %sext = shl i64 %i.bb, 32
  %i.ce = ashr exact i64 %sext, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 %i.ce, ptr %3, align 8, !tbaa !94, !alias.scope !177
  store i64 0, ptr %i.af, align 8, !tbaa !95, !alias.scope !177
  store i32 6, ptr %i.ag, align 8, !tbaa !96, !alias.scope !177
  store i8 1, ptr %i.ah, align 4, !tbaa !97, !alias.scope !177
  store i8 0, ptr %i.ai, align 1, !tbaa !98, !alias.scope !177
  store i8 1, ptr %i.aj, align 2, !tbaa !99, !alias.scope !177
  %i.cf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(23) %3) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

_ZN4llvh11raw_ostreamlsEPKc.exit40:               ; preds = %bb.k, %bb.j, %bb.l
  %i.cg = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !85  ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = icmp ult i64 %i.ck, 9
  br i1 %i.cl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit40
  %i.cm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.23, i64 noundef 9) #14 ; 0 uses
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ch, ptr noundef nonnull align 1 dereferenceable(9) @.str.23, i64 9, i1 false)
  %i.cn = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 9 ; 2 uses
  store ptr %i.co, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

_ZN4llvh11raw_ostreamlsEPKc.exit43:               ; preds = %bb.m, %bb.n
  %i.cp = phi ptr [ %.pre, %bb.m ], [ %i.co, %bb.n ] ; 2 uses
  %i.cq = trunc i64 %i.be to i1
  %.str.24..str.1 = select i1 %i.cq, ptr @.str.24, ptr @.str.1 ; 2 uses
  %i.cr = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = icmp ult i64 %i.cu, 2
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %i.cw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %.str.24..str.1, i64 noundef 2) #14 ; 0 uses
  %.pre91 = load ptr, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.p:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %5 = load i16, ptr %.str.24..str.1, align 1
  store i16 %5, ptr %i.cp, align 1
  %i.cx = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2 ; 2 uses
  store ptr %i.cy, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

_ZN4llvh11raw_ostreamlsEPKc.exit46:               ; preds = %bb.o, %bb.p
  %i.cz = phi ptr [ %.pre91, %bb.o ], [ %i.cy, %bb.p ] ; 2 uses
  %i.da = and i64 %i.be, 2
  %.not = icmp eq i64 %i.da, 0
  %6 = select i1 %.not, ptr @.str.26, ptr @.str.25 ; 2 uses
  %i.db = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.dc = icmp eq ptr %i.db, %i.cz
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %i.dd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %6, i64 noundef 1) #14 ; 0 uses
  %.pre92 = load ptr, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

bb.r:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %i.cz, align 1
  %i.de = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  store ptr %i.df, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

_ZN4llvh11raw_ostreamlsEPKc.exit49:               ; preds = %bb.q, %bb.r
  %i.dg = phi ptr [ %.pre92, %bb.q ], [ %i.df, %bb.r ] ; 2 uses
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp ult i64 %i.dk, 18
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit49
  %i.dm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.27, i64 noundef 18) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

bb.t:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.dg, ptr noundef nonnull align 1 dereferenceable(18) @.str.27, i64 18, i1 false)
  %i.dn = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 18
  store ptr %i.do, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

_ZN4llvh11raw_ostreamlsEPKc.exit52:               ; preds = %bb.s, %bb.t
  %.0.i.i51 = phi ptr [ %i.dm, %bb.s ], [ %1, %bb.t ]
  %i.dp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i51, i64 noundef %i.bj) #14 ; 0 uses
  %i.dq = load ptr, ptr %i.r, align 8, !tbaa !85  ; 3 uses
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !84
  %.not.i = icmp ult ptr %i.dq, %i.dr
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit52
  %i.ds = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext 10) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.v:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit52
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store ptr %i.dt, ptr %i.r, align 8, !tbaa !85
  store i8 10, ptr %i.dq, align 1, !tbaa !92
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.u, %bb.v
  %i.du = icmp sgt i64 %i.bj, 0
  br i1 %i.du, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %_ZN4llvh11raw_ostreamlsEPKc.exit60
  %.084 = phi i64 [ %i.fd, %_ZN4llvh11raw_ostreamlsEPKc.exit60 ], [ 0, %_ZN4llvh11raw_ostreamlsEc.exit ]
  %.183 = phi i32 [ %i.dw, %_ZN4llvh11raw_ostreamlsEPKc.exit60 ], [ %i.bg, %_ZN4llvh11raw_ostreamlsEc.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.dv = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %.183, ptr noundef nonnull %i.b) #14
  %i.dw = add i32 %i.dv, %.183                    ; 2 uses
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !23
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  %i.dz = load i32, ptr %i.ak, align 8, !tbaa !62
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = load i64, ptr %i.al, align 8, !tbaa !63
  %i.ec = sub i64 %i.eb, %i.ea
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ef = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.ee, i64 %i.ec, i32 noundef %i.dy, ptr noundef nonnull %i.a) #14
  %i.eg = add i32 %i.ef, %i.dy
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ek = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !85  ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp ult i64 %i.eo, 5
  br i1 %i.ep, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.eq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.28, i64 noundef 5) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit57

bb.x:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.el, ptr noundef nonnull align 1 dereferenceable(5) @.str.28, i64 5, i1 false)
  %i.er = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 5
  store ptr %i.es, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit57

_ZN4llvh11raw_ostreamlsEPKc.exit57:               ; preds = %bb.w, %bb.x
  %i.et = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %i.ei, i64 %i.ej, i1 noundef zeroext false) #14 ; 0 uses
  %i.eu = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ev = load ptr, ptr %i.r, align 8, !tbaa !85  ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp ult i64 %i.ey, 2
  br i1 %i.ez, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit57
  %i.fa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.29, i64 noundef 2) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit60

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit57
  store i16 2594, ptr %i.ev, align 1
  %i.fb = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  store ptr %i.fc, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit60

_ZN4llvh11raw_ostreamlsEPKc.exit60:               ; preds = %bb.y, %bb.z
  %i.fd = add nuw nsw i64 %.084, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, %i.bj
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %.loopexit, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.lcssa = phi i64 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit ], [ %i.am, %.loopexit ]
  %i.fe = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ff = load ptr, ptr %i.r, align 8, !tbaa !85  ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = icmp ult i64 %i.fi, 2
  br i1 %i.fj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.fk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.1, i64 noundef 2) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit63

bb.ab:                                            ; preds = %._crit_edge
  store i16 8224, ptr %i.ff, align 1
  %i.fl = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  store ptr %i.fm, ptr %i.r, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit63

_ZN4llvh11raw_ostreamlsEPKc.exit63:               ; preds = %bb.aa, %bb.ab
  %.0.i.i62 = phi ptr [ %i.fk, %bb.aa ], [ %1, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i64 %.lcssa, ptr %4, align 8, !tbaa !94, !alias.scope !178
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.fn, align 8, !tbaa !95, !alias.scope !178
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 6, ptr %i.fo, align 8, !tbaa !96, !alias.scope !178
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 1, ptr %i.fp, align 4, !tbaa !97, !alias.scope !178
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.fq, align 1, !tbaa !98, !alias.scope !178
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 1, ptr %i.fr, align 2, !tbaa !99, !alias.scope !178
  %i.fs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i62, ptr noundef nonnull align 8 dereferenceable(23) %4) #14 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !84
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !85 ; 2 uses
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = icmp ult i64 %i.fz, 39
  br i1 %i.ga, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit63
  %i.gb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fs, ptr noundef nonnull @.str.30, i64 noundef 39) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit66

bb.ad:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.fw, ptr noundef nonnull align 1 dereferenceable(39) @.str.30, i64 39, i1 false)
  %i.gc = load ptr, ptr %i.fv, align 8, !tbaa !85
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 39
  store ptr %i.gd, ptr %i.fv, align 8, !tbaa !85
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit66

_ZN4llvh11raw_ostreamlsEPKc.exit66:               ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36), ptr, i64, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo26disassembleTextifiedCalleeERN4llvh11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %3 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !79   ; 3 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !62   ; 2 uses
  %i.k = sub i32 %i.j, %i.g                       ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h ; 3 uses
end_hunk_0
