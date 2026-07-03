inline.NumInlined: 3791
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6hermes2vm7Runtime21initPredefinedStringsEv:.preheader39.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 10 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !19
  %i.cn = zext i8 %i.cm to i64
  %i.co = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ck, i64 %i.cn) #29 ; 0 uses
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !19
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.ci, %i.cq            ; 2 uses
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 11 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19
  %i.cw = zext i8 %i.cv to i64
  %i.cx = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ct, i64 %i.cw) #29 ; 0 uses
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !19
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cr, %i.cz            ; 2 uses
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 12 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !19
  %i.df = zext i8 %i.de to i64
  %i.dg = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.dc, i64 %i.df) #29 ; 0 uses
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !19
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nuw nsw i32 %i.da, %i.di            ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 13 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !19
  %i.do = zext i8 %i.dn to i64
  %i.dp = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.dl, i64 %i.do) #29 ; 0 uses
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !19
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nuw nsw i32 %i.dj, %i.dr
  br label %.preheader39

.preheader39:                                     ; preds = %.preheader39.preheader, %.preheader39
  %indvars.iv = phi i64 [ 0, %.preheader39.preheader ], [ %indvars.iv.next, %.preheader39 ] ; 3 uses
  %.143 = phi i32 [ %i.ds, %.preheader39.preheader ], [ %i.ed, %.preheader39 ] ; 2 uses
  %i.dt = zext i32 %.143 to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload, i64 %indvars.iv ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !19
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6hermes2vm7Runtime21initPredefinedStringsEvE6hashes, i64 %indvars.iv
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = tail call i32 @_ZN6hermes2vm15IdentifierTable22registerLazyIdentifierEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.du, i64 %i.dx, i32 noundef %i.dz) #29 ; 0 uses
  %i.eb = load i8, ptr %i.dv, align 1, !tbaa !19
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add i32 %.143, %i.ec                    ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 546
  br i1 %exitcond.not, label %.preheader.preheader, label %.preheader39, !llvm.loop !462

.preheader.preheader:                             ; preds = %.preheader39
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.ee
  %i.eg = load i8, ptr %.sroa.028.0.copyload, align 1, !tbaa !19
  %i.eh = zext i8 %i.eg to i64
  %i.ei = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ef, i64 %i.eh) #29 ; 0 uses
  %i.ej = load i8, ptr %.sroa.028.0.copyload, align 1, !tbaa !19
  %i.ek = zext i8 %i.ej to i32
  %i.el = add i32 %i.ed, %i.ek                    ; 2 uses
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 1 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !19
  %i.eq = zext i8 %i.ep to i64
  %i.er = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.en, i64 %i.eq) #29 ; 0 uses
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !19
  %i.et = zext i8 %i.es to i32
  %i.eu = add i32 %i.el, %i.et                    ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 2 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !19
  %i.ez = zext i8 %i.ey to i64
  %i.fa = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ew, i64 %i.ez) #29 ; 0 uses
  %i.fb = load i8, ptr %i.ex, align 1, !tbaa !19
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add i32 %i.eu, %i.fc                    ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 3 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !19
  %i.fi = zext i8 %i.fh to i64
  %i.fj = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.ff, i64 %i.fi) #29 ; 0 uses
  %i.fk = load i8, ptr %i.fg, align 1, !tbaa !19
  %i.fl = zext i8 %i.fk to i32
  %i.fm = add i32 %i.fd, %i.fl                    ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 4 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !19
  %i.fr = zext i8 %i.fq to i64
  %i.fs = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.fo, i64 %i.fr) #29 ; 0 uses
  %i.ft = load i8, ptr %i.fp, align 1, !tbaa !19
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add i32 %i.fm, %i.fu                    ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 5 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !19
  %i.ga = zext i8 %i.fz to i64
  %i.gb = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.fx, i64 %i.ga) #29 ; 0 uses
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !19
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add i32 %i.fv, %i.gd                    ; 2 uses
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 6 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !19
  %i.gj = zext i8 %i.gi to i64
  %i.gk = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.gg, i64 %i.gj) #29 ; 0 uses
  %i.gl = load i8, ptr %i.gh, align 1, !tbaa !19
  %i.gm = zext i8 %i.gl to i32
  %i.gn = add i32 %i.ge, %i.gm                    ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 7 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !19
  %i.gs = zext i8 %i.gr to i64
  %i.gt = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.gp, i64 %i.gs) #29 ; 0 uses
  %i.gu = load i8, ptr %i.gq, align 1, !tbaa !19
  %i.gv = zext i8 %i.gu to i32
  %i.gw = add i32 %i.gn, %i.gv                    ; 2 uses
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 8 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !19
  %i.hb = zext i8 %i.ha to i64
  %i.hc = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.gy, i64 %i.hb) #29 ; 0 uses
  %i.hd = load i8, ptr %i.gz, align 1, !tbaa !19
  %i.he = zext i8 %i.hd to i32
  %i.hf = add i32 %i.gw, %i.he
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 9
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !19
  %i.hk = zext i8 %i.hj to i64
  %i.hl = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.hh, i64 %i.hk) #29 ; 0 uses
  ret void
}

declare ptr @_ZN6hermes2vm6Domain6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm13RuntimeModule19createUninitializedERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS0_18RuntimeModuleFlagsEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime20initCharacterStringsEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %0, ptr %1, align 8, !tbaa !422
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  store ptr %i.c, ptr %i.a, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !115
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !424
  store ptr %1, ptr %i.b, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9568 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9584 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !463
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !464  ; 7 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, 2048
  br i1 %i.s, label %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9576 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !465  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = sub i64 %i.v, %i.q
  %i.x = call noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #31 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.u
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = add i64 %i.v, -8
  %i.aa = sub i64 %i.z, %i.q                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 72
  %i.ad = sub i64 %i.q, %i.y
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.o, i64 %i.ah ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.ai = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !alias.scope !469, !noalias !466
  %wide.load19 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !469, !noalias !466
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !466, !noalias !469
  store <2 x i64> %wide.load19, ptr %i.aj, align 8, !alias.scope !466, !noalias !469
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader41

.lr.ph.i.i.i.i.preheader41:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader41, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.al = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !469, !noalias !466
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !alias.scope !466, !noalias !469
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.u
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !472

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #30
  br label %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.x, ptr %i.l, align 8, !tbaa !464
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store ptr %i.ao, ptr %i.t, align 8, !tbaa !465
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 2048
  store ptr %i.ap, ptr %i.m, align 8, !tbaa !463
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 9576 ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.d:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit
  %.010 = phi i16 [ 0, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit ], [ %i.ce, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !419
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  store i32 0, ptr %i.k, align 8, !tbaa !424
  store ptr %i.at, ptr %i.j, align 8, !tbaa !110
  store ptr %i.e, ptr %i.i, align 8, !tbaa !100
  %i.au = call ptr @_ZN6hermes2vm7Runtime23allocateCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816) %0, i16 noundef zeroext %.010)
  %.sroa.0.0.copyload.i = load i64, ptr %i.au, align 8, !tbaa !18 ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !465 ; 5 uses
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !463
  %.not.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !465
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !465
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !464 ; 7 uses
  %i.ba = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.g, label %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i7)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #31 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i64 %.sroa.0.0.copyload.i, ptr %i.bl, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.az, %i.av
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = ptrtoaddr ptr %i.bk to i64
  %i.bn = sub i64 %i.ba, %i.bb
  %i.bo = add i64 %i.bn, -8                       ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %i.bo, 24
  %i.br = sub i64 %i.bb, %i.bm
  %diff.check22 = icmp ugt i64 %i.br, -32
  %or.cond39 = or i1 %min.iters.check24, %diff.check22
  br i1 %or.cond39, label %.lr.ph.i.i.i.i.i.i.preheader40, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec27 = and i64 %i.bq, 4611686018427387900   ; 3 uses
  %i.bs = shl i64 %n.vec27, 3                     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.az, i64 %i.bs
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph25
  %index29 = phi i64 [ 0, %vector.ph25 ], [ %index.next34, %vector.body28 ] ; 2 uses
  %i.bv = shl i64 %index29, 3                     ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.bk, i64 %i.bv ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.az, i64 %i.bv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.bw = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load32 = load <2 x i64>, ptr %next.gep31, align 8, !alias.scope !476, !noalias !473
  %wide.load33 = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !476, !noalias !473
  %i.bx = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x i64> %wide.load32, ptr %next.gep30, align 8, !alias.scope !473, !noalias !476
  store <2 x i64> %wide.load33, ptr %i.bx, align 8, !alias.scope !473, !noalias !476
  %index.next34 = add nuw i64 %index29, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next34, %n.vec27
  br i1 %i.by, label %middle.block35, label %vector.body28, !llvm.loop !478

middle.block35:                                   ; preds = %vector.body28
  %cmp.n36 = icmp eq i64 %i.bq, %n.vec27
  br i1 %cmp.n36, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader40

.lr.ph.i.i.i.i.i.i.preheader40:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block35
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block35 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block35 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader40, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader40 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader40 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.bz = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !476, !noalias !473
  store i64 %i.bz, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !473, !noalias !476
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !479

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block35, %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bt, %middle.block35 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !464
  store ptr %i.cc, ptr %i.aq, align 8, !tbaa !465
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.cd, ptr %i.m, align 8, !tbaa !463
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ce = add nuw nsw i16 %.010, 1                ; 2 uses
  %exitcond.not = icmp eq i16 %i.ce, 256
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !480
}

declare void @_ZN6hermes2vm13RuntimeModule38initializeWithoutCJSModulesMayAllocateEOSt10shared_ptrINS_3hbc20BCProviderFromBufferEE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc20BCProviderFromBuffer26createBCProviderFromBufferB5cxx11ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::unique_ptr.215", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #31 ; 6 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !425
  store i64 %i.d, ptr %3, align 8, !tbaa !425
  store ptr null, ptr %1, align 8, !tbaa !425
  call void @_ZN6hermes3hbc20BCProviderFromBufferC1ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE(ptr noundef nonnull align 8 dereferenceable(376) %i.c, ptr noundef nonnull %3, i32 noundef %2) #29
  %i.e = load ptr, ptr %3, align 8, !tbaa !425    ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i

_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #29, !inline_history !432
  br label %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !10, !alias.scope !481
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !14, !noalias !481 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17, !noalias !481 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !481
  store i64 %i.m, ptr %i.b, align 8, !tbaa !18, !noalias !481
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #29 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !14, !alias.scope !481
  %i.p = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !481
  store i64 %i.p, ptr %i.j, align 8, !tbaa !19, !alias.scope !481
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit
  %i.q = phi ptr [ %i.o, %bb.b ], [ %i.j, %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !19
  store i8 %i.r, ptr %i.q, align 1, !tbaa !19
  br label %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit

_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.s = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !481 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !17, !alias.scope !481
  %i.u = load ptr, ptr %4, align 8, !tbaa !14, !alias.scope !481
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !481
  %i.w = load i64, ptr %i.t, align 8, !tbaa !17   ; 5 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge.i.i.i1.thread, label %bb.e

._crit_edge.i.i.i1.thread:                        ; preds = %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit
  %i.y = ptrtoint ptr %i.c to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !430
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8, !tbaa !18
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit
  store i64 0, ptr %0, align 8, !tbaa !430
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !10
  %i.ad = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.w, ptr %i.a, align 8, !tbaa !18
  %i.ae = icmp ugt i64 %i.w, 15
  br i1 %i.ae, label %._crit_edge.i.i.i1.thread16, label %._crit_edge.i.i.i1

._crit_edge.i.i.i1.thread16:                      ; preds = %bb.e
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #29 ; 2 uses
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !14
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !19
  br label %bb.g

._crit_edge.i.i.i1:                               ; preds = %bb.e
  %cond = icmp eq i64 %i.w, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i1
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !19
  store i8 %i.ah, ptr %i.ac, align 8, !tbaa !19
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i1.thread16, %._crit_edge.i.i.i1
  %i.ai = phi ptr [ %i.af, %._crit_edge.i.i.i1.thread16 ], [ %i.ac, %._crit_edge.i.i.i1 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ad, i64 %i.w, i1 false)
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i1.thread
  %.sroa.06.01012 = phi ptr [ null, %._crit_edge.i.i.i1.thread ], [ %i.c, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %i.aj = phi ptr [ %i.z, %._crit_edge.i.i.i1.thread ], [ %i.ab, %bb.g ], [ %i.ab, %bb.f ]
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !17
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ao = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.j
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0E9_M_invokeERKSt9_Any_dataOjOS4_S8_OS9_":bb.a
_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i: ; preds = %bb.z, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit64.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.fw, align 8, !tbaa !627, !alias.scope !1211
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.fx, align 8, !tbaa !650, !alias.scope !1211
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false), !alias.scope !1211
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14, i64 48, i1 false), !tbaa.struct !737
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !627, !noalias !1214
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fz = add i64 %i.fq, %i.fp
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !651, !noalias !1210
  %i.gc = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !652, !noalias !1210
  %i.ge = add i64 %i.gd, %i.gb
  %spec.select.i.i66.i.i.i = select i1 %i.fo, i32 %i.fr, i32 2 ; 2 uses
  %spec.select17.i.i67.i.i.i = select i1 %i.fo, ptr %.sroa.06.0.copyload.i.i65.i.i.i, ptr %14
  %i.gf = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.gg = load i32, ptr %i.gf, align 8, !noalias !1210
  %i.gh = icmp eq i32 %i.gg, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i68.i.i.i = load ptr, ptr %17, align 8, !noalias !1210
  %.015.i.i69.i.i.i = select i1 %i.gh, i32 %i.fv, i32 2
  %.sroa.03.0.i.i70.i.i.i = select i1 %i.gh, ptr %.sroa.03.0.copyload.i.i68.i.i.i, ptr %17
  store ptr %spec.select17.i.i67.i.i.i, ptr %13, align 8, !tbaa !19, !alias.scope !1210
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %spec.select.i.i66.i.i.i, ptr %i.gi, align 8, !tbaa !627, !alias.scope !1210
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sroa.03.0.i.i70.i.i.i, ptr %i.gj, align 8, !tbaa !19, !alias.scope !1210
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.015.i.i69.i.i.i, ptr %i.gk, align 8, !tbaa !650, !alias.scope !1210
  %i.gl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %i.fz, ptr %i.gl, align 8, !tbaa !651, !alias.scope !1210
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.ge, ptr %i.gm, align 8, !tbaa !652, !alias.scope !1210
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.gn = phi i32 [ %spec.select.i.i66.i.i.i, %bb.ab ], [ %.pre.i.i, %bb.aa ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  switch i32 %i.gn, label %bb.ae [
    i32 0, label %bb.ac
    i32 1, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %i.go, align 8, !tbaa !627, !alias.scope !1221
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.gp, align 8, !tbaa !650, !alias.scope !1221
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i8 0, i64 16, i1 false), !alias.scope !1221
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i

bb.ad:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i
  store ptr @.str.191, ptr %12, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !620
  %.sroa.615.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %.sroa.615.0..sroa_idx.i.i.i, align 8, !tbaa !620
  %.sroa.716.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 18, ptr %.sroa.716.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !18
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i

bb.ae:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !651, !noalias !1214
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !652, !noalias !1214
  %i.gv = add i64 %i.gu, %i.gs
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.gx = load i32, ptr %i.gw, align 8, !noalias !1214
  %i.gy = icmp eq i32 %i.gx, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i74.i.i.i = load ptr, ptr %13, align 8, !noalias !1214
  %spec.select.i.i75.i.i.i = select i1 %i.gy, i32 %i.gn, i32 2
  %spec.select17.i.i76.i.i.i = select i1 %i.gy, ptr %.sroa.06.0.copyload.i.i74.i.i.i, ptr %13
  store ptr %spec.select17.i.i76.i.i.i, ptr %12, align 8, !tbaa !19, !alias.scope !1214
  %i.gz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %spec.select.i.i75.i.i.i, ptr %i.gz, align 8, !tbaa !627, !alias.scope !1214
  %i.ha = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.191, ptr %i.ha, align 8, !tbaa !19, !alias.scope !1214
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 3, ptr %i.hb, align 8, !tbaa !650, !alias.scope !1214
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 %i.gv, ptr %i.hc, align 8, !tbaa !651, !alias.scope !1214
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 18, ptr %i.hd, align 8, !tbaa !652, !alias.scope !1214
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.he = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.hf = call fastcc noundef i32 @_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %.val, ptr nonnull %i.he, ptr noundef nonnull align 8 dereferenceable(48) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit45.i.i.i, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i.i.i, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i
  %.2.i.i.i = phi i32 [ %i.cj, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit45.i.i.i ], [ 0, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.i.i.i ], [ %i.hf, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i ], [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i32 %.2.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1094
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !383
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime14freezeBuiltinsEvE3$_0E9_M_invokeERKSt9_Any_dataOjOS4_S8_OS9_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #0 align 2 {
bb.a:
  %5 = alloca %"class.hermes::OptValue.398", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !26    ; 5 uses
  %.val5 = load i32, ptr %1, align 4, !tbaa !3
  %.val6 = load i32, ptr %2, align 4, !tbaa !1010 ; 3 uses
  %.val7 = load i32, ptr %4, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1224
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1226, !nonnull !124, !align !1227 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !682  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !688
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.val7, ptr %i.e, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.h, ptr %i.d, align 8, !tbaa !682
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !679  ; 7 uses
  %i.j = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951)
  %i.r = select i1 %i.p, i64 2305843009213693951, i64 %i.q ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #31 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i32 %.val7, ptr %i.u, align 4, !tbaa !3
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.v = ptrtoaddr ptr %i.t to i64
  %i.w = sub i64 %i.j, %i.k
  %i.x = add i64 %i.w, -4                         ; 2 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 44
  %i.aa = sub i64 %i.k, %i.v
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ae ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.i, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.af = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep21, align 4, !tbaa !3, !alias.scope !1231, !noalias !1228
  %wide.load22 = load <4 x i32>, ptr %i.af, align 4, !tbaa !3, !alias.scope !1231, !noalias !1228
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !1228, !noalias !1231
  store <4 x i32> %wide.load22, ptr %i.ag, align 4, !tbaa !3, !alias.scope !1228, !noalias !1231
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader44

.lr.ph.i.i.i.i.i.i.i.i.preheader44:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader44, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader44 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.ai = load i32, ptr %.0911.i.i.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !1231, !noalias !1228
  store i32 %i.ai, ptr %.012.i.i.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !1228, !noalias !1231
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1234

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #30
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  store ptr %i.t, ptr %i.c, align 8, !tbaa !679
  store ptr %i.al, ptr %i.d, align 8, !tbaa !682
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  store ptr %i.am, ptr %i.f, align 8, !tbaa !688
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.b
  %i.an = add i32 %.val5, 1                       ; 2 uses
  %i.ao = icmp eq i32 %i.an, 37
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZN6hermes2vmL20publicNativeBuiltinsE, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !983
  %i.as = zext i16 %i.ar to i32
  %.not.i.i.i = icmp eq i32 %.val6, %i.as
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime14freezeBuiltinsEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1235, !nonnull !124, !align !1227 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !682 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !688
  %.not.i7.i.i.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i7.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %.val6, ptr %i.aw, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store ptr %i.az, ptr %i.av, align 8, !tbaa !682
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !679 ; 7 uses
  %i.bb = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.j, label %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i: ; preds = %bb.i
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i9.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i9.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i10.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i10.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #31 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i32 %.val6, ptr %i.bm, align 4, !tbaa !3
  %.not10.i.i.i.i.i11.i.i.i = icmp eq ptr %i.ba, %i.aw
  br i1 %.not10.i.i.i.i.i11.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i12.i.i.i.preheader

.lr.ph.i.i.i.i.i12.i.i.i.preheader:               ; preds = %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i
  %i.bn = ptrtoaddr ptr %i.bl to i64
  %i.bo = sub i64 %i.bb, %i.bc
  %i.bp = add i64 %i.bo, -4                       ; 2 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.bp, 44
  %i.bs = sub i64 %i.bc, %i.bn
  %diff.check25 = icmp ugt i64 %i.bs, -32
  %or.cond42 = or i1 %min.iters.check27, %diff.check25
  br i1 %or.cond42, label %.lr.ph.i.i.i.i.i12.i.i.i.preheader43, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i.i.i.i.i12.i.i.i.preheader
  %n.vec30 = and i64 %i.br, 9223372036854775800   ; 3 uses
  %i.bt = shl i64 %n.vec30, 2                     ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bl, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ba, i64 %i.bt
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph28
  %index32 = phi i64 [ 0, %vector.ph28 ], [ %index.next37, %vector.body31 ] ; 2 uses
  %i.bw = shl i64 %index32, 2                     ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.bl, i64 %i.bw ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.ba, i64 %i.bw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.bx = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load35 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !3, !alias.scope !1239, !noalias !1236
  %wide.load36 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !3, !alias.scope !1239, !noalias !1236
  %i.by = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load35, ptr %next.gep33, align 4, !tbaa !3, !alias.scope !1236, !noalias !1239
  store <4 x i32> %wide.load36, ptr %i.by, align 4, !tbaa !3, !alias.scope !1236, !noalias !1239
  %index.next37 = add nuw i64 %index32, 8         ; 2 uses
  %i.bz = icmp eq i64 %index.next37, %n.vec30
  br i1 %i.bz, label %middle.block38, label %vector.body31, !llvm.loop !1241

middle.block38:                                   ; preds = %vector.body31
  %cmp.n39 = icmp eq i64 %i.br, %n.vec30
  br i1 %cmp.n39, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i12.i.i.i.preheader43

.lr.ph.i.i.i.i.i12.i.i.i.preheader43:             ; preds = %.lr.ph.i.i.i.i.i12.i.i.i.preheader, %middle.block38
  %.012.i.i.i.i.i13.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i12.i.i.i.preheader ], [ %i.bu, %middle.block38 ]
  %.0911.i.i.i.i.i14.i.i.i.ph = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i12.i.i.i.preheader ], [ %i.bv, %middle.block38 ]
  br label %.lr.ph.i.i.i.i.i12.i.i.i

.lr.ph.i.i.i.i.i12.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i12.i.i.i.preheader43, %.lr.ph.i.i.i.i.i12.i.i.i
  %.012.i.i.i.i.i13.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i12.i.i.i ], [ %.012.i.i.i.i.i13.i.i.i.ph, %.lr.ph.i.i.i.i.i12.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i14.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i12.i.i.i ], [ %.0911.i.i.i.i.i14.i.i.i.ph, %.lr.ph.i.i.i.i.i12.i.i.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.ca = load i32, ptr %.0911.i.i.i.i.i14.i.i.i, align 4, !tbaa !3, !alias.scope !1239, !noalias !1236
  store i32 %i.ca, ptr %.012.i.i.i.i.i13.i.i.i, align 4, !tbaa !3, !alias.scope !1236, !noalias !1239
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i14.i.i.i, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i13.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i15.i.i.i = icmp eq ptr %i.cb, %i.aw
  br i1 %.not.i.i.i.i.i15.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i12.i.i.i, !llvm.loop !1242

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i: ; preds = %.lr.ph.i.i.i.i.i12.i.i.i, %middle.block38, %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i
  %.0.lcssa.i.i.i.i.i17.i.i.i = phi ptr [ %i.bl, %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i ], [ %i.bu, %middle.block38 ], [ %i.cc, %.lr.ph.i.i.i.i.i12.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i17.i.i.i, i64 4
  %.not.i23.i.i18.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i18.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i19.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #30
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i19.i.i.i

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i19.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !679
  store ptr %i.cd, ptr %i.av, align 8, !tbaa !682
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.ce, ptr %i.ax, align 8, !tbaa !688
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i: ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i19.i.i.i, %bb.h
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %3, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1243, !nonnull !124, !align !1244
  %.sroa.01.0.copyload.i.i.i = load i16, ptr %i.cg, align 2, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1245, !nonnull !124, !align !1244
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ci, align 2, !tbaa !19
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !1226, !nonnull !124, !align !1227 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !679 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !682
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  store ptr %i.ck, ptr %5, align 8, !tbaa !683
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cq, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.cr, align 8, !tbaa !684
  tail call void @_ZN6hermes2vm8JSObject37updatePropertyFlagsWithoutTransitionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_13PropertyFlagsES6_NS_8OptValueIN4llvh8ArrayRefINS0_8SymbolIDEEEEE(ptr %.sroa.02.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %i.a, i16 %.sroa.01.0.copyload.i.i.i, i16 %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.hermes::OptValue.398") align 8 %5) #29
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !1226, !nonnull !124, !align !1227 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !679 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !682
  %.not.i.i.i.i.i = icmp eq ptr %i.cv, %i.ct
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime14freezeBuiltinsEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !682
  br label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime14freezeBuiltinsEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime14freezeBuiltinsEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %bb.f, %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !26
  store ptr %.val, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1094
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val5, i64 40, i1 false), !tbaa.struct !1246
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 40) #30
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvh7hashing6detail23hash_combine_range_implIKhEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, !prof !1016

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !18 ; 2 uses
  %.not1.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not1.i, i64 -49064778989728563, i64 %i.d
  store i64 %i.e, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #29
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18 ; 8 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
  %i.j = icmp ult i64 %i.i, 65
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh7hashing6detail18get_execution_seedEv.exit
  %i.k = tail call noundef i64 @_ZN4llvh7hashing6detail10hash_shortEPKcmm(ptr noundef %0, i64 noundef %i.i, i64 noundef %i.f)
  br label %bb.h

bb.e:                                             ; preds = %_ZN4llvh7hashing6detail18get_execution_seedEv.exit
  %i.l = and i64 %i.i, -64                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = xor i64 %i.f, -5435081209227447693       ; 3 uses
  %i.o = mul i64 %i.n, -7070675565921424023       ; 2 uses
  %i.p = lshr i64 %i.o, 47
  %i.q = xor i64 %i.o, %i.p
  %i.r = xor i64 %i.q, -5435081209227447693
  %i.s = mul i64 %i.r, -7070675565921424023       ; 2 uses
  %i.t = lshr i64 %i.s, 47
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -7070675565921424023
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 15) ; 2 uses
  %i.x = mul i64 %i.f, -5435081209227447693
  %i.y = lshr i64 %i.f, 47
  %i.z = xor i64 %i.y, %i.f                       ; 4 uses
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.z, %i.ac
  %i.ae = xor i64 %i.ad, %i.ab
  %i.af = mul i64 %i.ae, -7070675565921424023     ; 2 uses
  %i.ag = lshr i64 %i.af, 47
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, -7070675565921424023     ; 2 uses
  %i.aj = add i64 %i.w, %i.f
end_hunk_1
