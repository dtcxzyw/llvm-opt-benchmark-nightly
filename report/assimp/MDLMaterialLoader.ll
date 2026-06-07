inline.NumInlined: 254
inline.NumDeleted: 140
begin_hunk_0_@_ZN6Assimp11MDLImporter28CreateTextureARGB8_3DGS_MDL3EPKh:bb.a

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.q) #20
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.s = mul i32 %i.o, %i.n                       ; 4 uses
  %i.t = zext i32 %i.s to i64                     ; 3 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #22 ; 4 uses
  store ptr %i.v, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @_ZN6Assimp11MDLImporter13SearchPaletteEPPKh(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.a)
  %.not51 = icmp eq i32 %i.s, 0
  %.pre = load ptr, ptr %i.a, align 8             ; 6 uses
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %i.t, 1
  %i.w = icmp eq i32 %i.s, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.t, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod66 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.epil.init ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  store i8 -1, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.af = load i8, ptr %i.ab, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ai = load i8, ptr %i.ae, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.ah, align 1
  store i8 %i.ak, ptr %i.ac, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.f
  %.not.i = icmp eq ptr %.pre, @_ZL21g_aclrDefaultColorMap
  %i.al = icmp eq ptr %.pre, null
  %or.cond.i = or i1 %.not.i, %i.al
  br i1 %or.cond.i, label %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef %.pre) #21
  br label %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit

_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit:    ; preds = %._crit_edge, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = add i32 %i.ar, 1
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #22
  store ptr %i.av, ptr %i.ao, align 8
  %i.aw = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load i32, ptr %i.ax, align 8
  %.not52 = icmp eq i32 %i.ay, 0
  br i1 %.not52, label %._crit_edge49, label %.lr.ph48

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = mul nuw nsw i64 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  store i8 -1, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bh = load i8, ptr %i.bd, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bk = load i8, ptr %i.bg, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = load i8, ptr %i.bj, align 1
  store i8 %i.bm, ptr %i.be, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = mul nuw nsw i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store i8 -1, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bv = load i8, ptr %i.br, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.by = load i8, ptr %i.bu, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.by, ptr %i.bz, align 1
  %i.ca = load i8, ptr %i.bx, align 1
  store i8 %i.ca, ptr %i.bs, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6

._crit_edge49.loopexit:                           ; preds = %.lr.ph48
  %i.cb = zext i32 %i.cs to i64
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit, %._crit_edge49.loopexit
  %.lcssa45 = phi ptr [ %i.cq, %._crit_edge49.loopexit ], [ %i.aw, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ]
  %.lcssa = phi i64 [ %i.cb, %._crit_edge49.loopexit ], [ 0, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.lcssa45, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.lcssa
  store ptr %i.k, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %i.am, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8
  %i.cj = icmp eq ptr %i.ap, null
  br i1 %i.cj, label %bb.i, label %bb.h

.lr.ph48:                                         ; preds = %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit, %.lr.ph48
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.lr.ph48 ], [ 0, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ] ; 3 uses
  %i.ck = phi ptr [ %i.cq, %.lr.ph48 ], [ %i.aw, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv56
  store ptr %i.cm, ptr %i.cp, align 8
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.cq = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.cs = load i32, ptr %i.cr, align 8            ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ult i64 %indvars.iv.next57, %i.ct
  br i1 %i.cu, label %.lr.ph48, label %._crit_edge49.loopexit, !llvm.loop !7

bb.h:                                             ; preds = %._crit_edge49
  tail call void @_ZdaPv(ptr noundef nonnull %i.ap) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #20
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter23CreateTexture_3DGS_MDL4EPKhjPj(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  %i.b = icmp ugt i32 %2, 3
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull @.str.3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load i32, ptr %3, align 4
  %i.g = icmp eq i32 %i.f, -1
  %i.h = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.j, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.i, i8 0, i64 1036, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.l = load i32, ptr %i.k, align 1
  store i32 %i.l, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.n = load i32, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.n, ptr %i.o, align 4
  br i1 %i.g, label %_ZN9aiTextureD2Ev.exit, label %.critedge

_ZN9aiTextureD2Ev.exit:                           ; preds = %bb.c
  store ptr inttoptr (i64 -1 to ptr), ptr %i.i, align 8
  tail call void @_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %i.h)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 1064) #21
  br label %bb.g

.critedge:                                        ; preds = %bb.c
  tail call void @_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %i.h)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  store i32 1, ptr %i.r, align 8
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22
  %i.u = load ptr, ptr %i.p, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.t, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.p, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  store ptr %i.h, ptr %i.y, align 8
  br label %bb.g

bb.e:                                             ; preds = %.critedge
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = add i32 %i.s, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #22
  store ptr %i.ae, ptr %i.z, align 8
  %i.af = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load i32, ptr %i.ag, align 8
  %.not32 = icmp eq i32 %i.ah, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ai = zext i32 %i.az to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.loopexit
  %.lcssa29 = phi ptr [ %i.ax, %._crit_edge.loopexit ], [ %i.af, %bb.e ]
  %.lcssa = phi i64 [ %i.ai, %._crit_edge.loopexit ], [ 0, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa29, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.lcssa
  store ptr %i.h, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.p, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8
  %i.aq = icmp eq ptr %i.aa, null
  br i1 %i.aq, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.ar = phi ptr [ %i.ax, %.lr.ph ], [ %i.af, %bb.e ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  store ptr %i.at, ptr %i.aw, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !8

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN9aiTextureD2Ev.exit, %bb.f, %._crit_edge, %bb.b
  ret void
}

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter21ParseTextureColorDataEPKhjPjP9aiTexture(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 22 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, inttoptr (i64 -1 to ptr) ; 6 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 8                ; 2 uses
  %i.e = icmp ugt i32 %i.d, 4096
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ugt i32 %i.g, 4096
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #20
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i32 %i.d, 2
  %i.l = mul nuw nsw i32 %i.k, %i.g
  %i.m = zext nneg i32 %i.l to i64
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22
  store ptr %i.n, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.o = icmp eq i32 %2, 10
  switch i32 %2, label %bb.k [
    i32 10, label %bb.i
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.p = load i32, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = shl i32 %i.p, 1
  %i.t = mul i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %i.v)
  %i.w = load i32, ptr %4, align 8
  %i.x = load i32, ptr %i.q, align 4
  %i.y = mul i32 %i.x, %i.w                       ; 2 uses
  br i1 %.not, label %.loopexit200, label %.preheader199

end_hunk_0
begin_hunk_1_@_ZN6Assimp11MDLImporter22SkipSkinLump_3DGS_MDL7EPKhPS2_jjj:bb.a
  %spec.select.idx = select i1 %.not, i64 0, i64 68
  %spec.select = getelementptr inbounds nuw i8, ptr %.1, i64 %spec.select.idx ; 4 uses
  %i.v = and i32 %3, 32
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.w)
  %.0.copyload = load i32, ptr %spec.select, align 1
  %i.x = sext i32 %.0.copyload to i64
  %i.y = getelementptr i8, ptr %spec.select, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 4        ; 2 uses
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %i.z)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi ptr [ %i.z, %bb.h ], [ %spec.select, %bb.g ]
  store ptr %.3, ptr %2, align 8
  ret void

bb.j:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #25
  unreachable

bb.k:                                             ; preds = %bb.e
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_RSt6vectorIP10aiMaterialSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 6 uses
  store ptr %1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 6 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.c, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8                ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #23
  unreachable

_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #22 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store ptr %i.b, ptr %i.u, align 8
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #21
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.t, ptr %3, align 8
  store ptr %i.w, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.e, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i8, ptr %1, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 1
  tail call void @_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.y, ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ae)
  %i.af = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %4, i8 0, i64 1028, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #24
  %i.ai = trunc i64 %i.ah to i32
  store i32 %i.ai, ptr %4, align 4
  %i.aj = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %4, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #21
  resume { ptr, i32 } %i.ak

bb.j:                                             ; preds = %bb.h, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit
  ret void
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #20
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #20
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !25
  store i8 0, ptr %i.a, align 8, !alias.scope !25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !25 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !25 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !25 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !25 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
end_hunk_1
