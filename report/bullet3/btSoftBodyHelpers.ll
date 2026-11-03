Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN17btSoftBodyHelpers17CreateFromVtkFileER19btSoftBodyWorldInfoPKc:bb.a
  store ptr %i.af, ptr %8, align 8, !tbaa !186, !alias.scope !394
  %spec.select.i.i.i122 = call noundef i64 @llvm.umin.i64(i64 %i.by, i64 5) ; 4 uses
  %cond324 = icmp eq i64 %i.by, 1
  br i1 %cond324, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dd = load i8, ptr %i.cc, align 1, !tbaa !39
  store i8 %i.dd, ptr %i.af, align 8, !tbaa !39
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 1 %i.cc, i64 %spec.select.i.i.i122, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i64 %spec.select.i.i.i122, ptr %i.ag, align 8, !tbaa !188, !alias.scope !394
  %i.de = getelementptr inbounds nuw i8, ptr %i.af, i64 %spec.select.i.i.i122
  store i8 0, ptr %i.de, align 1, !tbaa !39
  %i.df = icmp ugt i64 %i.by, 4
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread241: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.x
  %bcmp.i124 = call i32 @bcmp(ptr nonnull %i.af, ptr nonnull @.str.12, i64 %spec.select.i.i.i122)
  %i.dg = icmp eq i32 %bcmp.i124, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.dg, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEli(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 128, i32 noundef 32)
          to label %bb.z unwind label %bb.t       ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.di = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.aa unwind label %bb.t      ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store i8 1, ptr %i.an, align 8, !tbaa !51
  store ptr null, ptr %i.ao, align 8, !tbaa !52
  store i32 0, ptr %i.ap, align 4, !tbaa !53
  store i32 0, ptr %i.aq, align 8, !tbaa !54
  %i.dk = trunc i64 %i.dj to i32
  invoke void @_ZN20btAlignedObjectArrayIS_IiEE6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %5, i32 noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(25) %9)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dl = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i131 = icmp ne ptr %i.dl, null
  %i.dm = load i8, ptr %i.an, align 8, !range !37
  %i.dn = trunc nuw i8 %i.dm to i1
  %or.cond.i.i = select i1 %.not.i.i.i131, i1 %i.dn, i1 false
  br i1 %or.cond.i.i, label %bb.ac, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dl)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #26
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bc

bb.ae:                                            ; preds = %bb.aa
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bd

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.ah, ptr %10, align 8, !tbaa !186, !alias.scope !395
  %spec.select.i.i.i135 = call noundef i64 @llvm.umin.i64(i64 %i.by, i64 10) ; 4 uses
  %cond325 = icmp eq i64 %i.by, 1
  br i1 %cond325, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dr = load i8, ptr %i.cc, align 1, !tbaa !39
  store i8 %i.dr, ptr %i.ah, align 8, !tbaa !39
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 1 %i.cc, i64 %spec.select.i.i.i135, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i64 %spec.select.i.i.i135, ptr %i.ai, align 8, !tbaa !188, !alias.scope !395
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.i.i.i135
  store i8 0, ptr %i.ds, align 1, !tbaa !39
  %i.dt = icmp ugt i64 %i.by, 9
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.thread242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.thread242: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ai
  %bcmp.i137 = call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull @.str.13, i64 %spec.select.i.i.i135)
  %i.du = icmp eq i32 %bcmp.i137, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %i.du, label %bb.bc, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.thread242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  br i1 %.061268, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.dv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSirsERf.exit unwind label %bb.al ; 0 uses

_ZNSirsERf.exit:                                  ; preds = %bb.ak
  %i.dw = load float, ptr %i.c, align 4, !tbaa !19
  %i.dx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSirsERf.exit147 unwind label %bb.al ; 0 uses

_ZNSirsERf.exit147:                               ; preds = %_ZNSirsERf.exit
  %i.dy = load float, ptr %i.c, align 4, !tbaa !19
  %i.dz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSirsERf.exit149 unwind label %bb.al ; 0 uses

_ZNSirsERf.exit149:                               ; preds = %_ZNSirsERf.exit147
  %i.ea = load float, ptr %i.c, align 4, !tbaa !19
  %i.eb = add i64 %.055270, 1
  %i.ec = shl i64 %.055270, 32
  %i.ed = ashr exact i64 %i.ec, 28
  %i.ee = getelementptr inbounds i8, ptr %i.bf, i64 %i.ed ; 3 uses
  store float %i.dw, ptr %i.ee, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store float %i.dy, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store float %i.ea, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.bc

bb.al:                                            ; preds = %_ZNSirsERf.exit147, %_ZNSirsERf.exit, %bb.ak
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.bd

bb.am:                                            ; preds = %bb.aj
  br i1 %.058269, label %bb.an, label %bb.bc

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.eg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.ao unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.eh = load i32, ptr %i.d, align 4, !tbaa !59
  %.not = icmp eq i32 %i.eh, 4
  br i1 %.not, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.ei = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.e)
          to label %.noexc151 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc151:                                        ; preds = %bb.ap
  %.not.i150 = icmp eq ptr %i.ei, null
  br i1 %.not.i150, label %bb.aq, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.thread

bb.aq:                                            ; preds = %.noexc151
  %i.ej = load ptr, ptr %2, align 8, !tbaa !61
  %i.ek = getelementptr i8, ptr %i.ej, i64 -24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds i8, ptr %2, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !184
  %i.ep = or i32 %i.eo, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.em, i32 noundef %i.ep)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.thread unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.an, %bb.aq, %bb.ap
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263

bb.ar:                                            ; preds = %bb.ao
  %i.eq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEli(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 128, i32 noundef 32)
          to label %bb.as unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store i8 1, ptr %i.aj, align 8, !tbaa !51
  store ptr null, ptr %i.ak, align 8, !tbaa !52
  store i32 0, ptr %i.al, align 4, !tbaa !53
  store i32 0, ptr %i.am, align 8, !tbaa !54
  %i.er = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 16, i32 noundef 16)
          to label %.lr.ph.i153 unwind label %.loopexit.split-lp255.loopexit.split-lp ; 11 uses

.lr.ph.i153:                                      ; preds = %bb.as
  store i8 1, ptr %i.aj, align 8, !tbaa !51
  store ptr %i.er, ptr %i.ak, align 8, !tbaa !52
  store i32 4, ptr %i.am, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.er, i8 0, i64 16, i1 false), !tbaa !59
  store i32 4, ptr %i.al, align 4, !tbaa !53
  %i.es = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.er)
          to label %bb.aw unwind label %.loopexit.split-lp255.loopexit.split-lp ; 0 uses

._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i: ; preds = %bb.az
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %.pre10.i.i = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !52
  br label %.lr.ph.i4.i.i.a

bb.at:                                            ; preds = %bb.az
  %i.et = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !54
  %i.ev = icmp slt i32 %i.eu, 4
  br i1 %i.ev, label %bb.au, label %..lr.ph.i_crit_edge.i.i

..lr.ph.i_crit_edge.i.i:                          ; preds = %bb.at
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !52
  br label %.lr.ph.i.i.i167

bb.au:                                            ; preds = %bb.at
  %i.ew = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 16, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i unwind label %.loopexit.split-lp255.loopexit.split-lp ; 9 uses

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i: ; preds = %bb.au
  %.pre.i.i.i = load i32, ptr %i.hc, align 4, !tbaa !53 ; 3 uses
  %i.ex = icmp sgt i32 %.pre.i.i.i, 0
  %i.ey = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !52 ; 9 uses
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %i.fa = ptrtoaddr ptr %i.ez to i64
  %i.fb = ptrtoaddr ptr %i.ew to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %.pre.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i.i.i, 8
  %i.fc = sub i64 %i.fa, %i.fb
  %diff.check.a = icmp ugt i64 %i.fc, -32
  %or.cond345 = select i1 %min.iters.check, i1 true, i1 %diff.check.a
  br i1 %or.cond345, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body.a

vector.body.a:                                    ; preds = %vector.body.a, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.a ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load.a = load <4 x i32>, ptr %i.fe, align 4, !tbaa !59
  %wide.load344 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !59
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %wide.load.a, ptr %i.fd, align 4, !tbaa !59
  store <4 x i32> %wide.load344, ptr %i.fg, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body.a, !llvm.loop !385

middle.block:                                     ; preds = %vector.body.a
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter365 = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i.i.i.i.i.prol
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i.i.i.i.i.prol
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !59
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !59
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter365
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !386

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph.prol ]
  %i.fl = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph.a

scalar.ph.a:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph.a
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph.a ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i.i.i.i.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i.i.i.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !59
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !59
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i.i.i.i.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !59
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !59
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !59
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !59
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !59
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !59
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph.a, !llvm.loop !387

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i5.i.i.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph.a, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !51, !range !37, !noundef !38
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.av, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i

bb.av:                                            ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ez)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i unwind label %.loopexit.split-lp255.loopexit.split-lp

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i: ; preds = %bb.av, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store i8 1, ptr %i.gc, align 8, !tbaa !51
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !52
  store i32 4, ptr %i.et, align 8, !tbaa !54
  br label %.lr.ph.i.i.i167

.lr.ph.i.i.i167:                                  ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i, %..lr.ph.i_crit_edge.i.i
  %i.gd = phi ptr [ %.pre.i.i, %..lr.ph.i_crit_edge.i.i ], [ %i.ew, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i ] ; 2 uses
  %i.ge = sext i32 %i.hd to i64                   ; 2 uses
  %i.gf = shl nsw i64 %i.ge, 2
  %scevgep.i.i = getelementptr i8, ptr %i.gd, i64 %i.gf
  %i.gg = shl nsw i64 %i.ge, 2
  %i.gh = sub nsw i64 16, %i.gg
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.gh, i1 false), !tbaa !59
  br label %.lr.ph.i4.i.i.a

.lr.ph.i4.i.i.a:                                  ; preds = %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i, %.lr.ph.i.i.i167
  %12 = phi ptr [ %.pre10.i.i, %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i ], [ %i.gd, %.lr.ph.i.i.i167 ] ; 4 uses
  store i32 4, ptr %i.hc, align 4, !tbaa !53
  %i.gi = load i32, ptr %i.er, align 4, !tbaa !59
  store i32 %i.gi, ptr %12, align 4, !tbaa !59
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !59
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !59
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !59
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !59
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !59
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !59
  %13 = add i64 %.053271, 1
  %14 = load i8, ptr %i.aj, align 8, !range !37
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %bb.ba, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit

bb.aw:                                            ; preds = %.lr.ph.i153
  %i.gs = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.gt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.gs)
          to label %bb.ax unwind label %.loopexit.split-lp255.loopexit.split-lp ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.gu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.gv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.gu)
          to label %bb.ay unwind label %.loopexit.split-lp255.loopexit.split-lp ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.gw = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.gx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.gw)
          to label %bb.az unwind label %.loopexit.split-lp255.loopexit.split-lp ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.gy = load ptr, ptr %i.u, align 8, !tbaa !193
  %i.gz = shl i64 %.053271, 32
  %i.ha = ashr exact i64 %i.gz, 27
  %i.hb = getelementptr inbounds i8, ptr %i.gy, i64 %i.ha ; 7 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !53 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 4
  br i1 %i.he, label %bb.at, label %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i.i

bb.ba:                                            ; preds = %.lr.ph.i4.i.i.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.er)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #26
  unreachable

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.thread: ; preds = %.noexc151, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit214

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %bb.ba, %.lr.ph.i4.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.bc

.loopexit.split-lp255.loopexit.split-lp:          ; preds = %.lr.ph.i153, %bb.aw, %bb.ax, %bb.ay, %bb.as, %bb.av, %bb.au
  %lpad.loopexit.split-lp277 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.loopexit.split-lp263

.loopexit.split-lp263:                            ; preds = %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp255.loopexit.split-lp
  %.pn97 = phi { ptr, i32 } [ %lpad.loopexit.split-lp277, %.loopexit.split-lp255.loopexit.split-lp ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit, %bb.i, %_ZN20btAlignedObjectArrayIiED2Ev.exit, %_ZNSirsERf.exit149, %bb.am, %.loopexit253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.hh = phi ptr [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.bf, %bb.i ], [ %i.da, %.loopexit253 ], [ %i.bf, %_ZN20btAlignedObjectArrayIiED2Ev.exit ], [ %i.bf, %bb.am ], [ %i.bf, %_ZNSirsERf.exit149 ], [ %i.bf, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit ]
  %i.hi = phi ptr [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.bg, %bb.i ], [ %i.db, %.loopexit253 ], [ %i.bg, %_ZN20btAlignedObjectArrayIiED2Ev.exit ], [ %i.bg, %bb.am ], [ %i.bf, %_ZNSirsERf.exit149 ], [ %i.bg, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit ]
  %.263 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.061268, %bb.i ], [ true, %.loopexit253 ], [ false, %_ZN20btAlignedObjectArrayIiED2Ev.exit ], [ false, %bb.am ], [ true, %_ZNSirsERf.exit149 ], [ false, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit ]
  %.260 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.058269, %bb.i ], [ false, %.loopexit253 ], [ true, %_ZN20btAlignedObjectArrayIiED2Ev.exit ], [ false, %bb.am ], [ %.058269, %_ZNSirsERf.exit149 ], [ true, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit ]
  %.257 = phi i64 [ %.055270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.055270, %bb.i ], [ %.055270, %.loopexit253 ], [ %.055270, %_ZN20btAlignedObjectArrayIiED2Ev.exit ], [ %.055270, %bb.am ], [ %i.eb, %_ZNSirsERf.exit149 ], [ %.055270, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit ]
  %.3 = phi i64 [ %.053271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.053271, %bb.i ], [ %.053271, %.loopexit253 ], [ %.053271, %_ZN20btAlignedObjectArrayIiED2Ev.exit ], [ %.053271, %bb.am ], [ %.053271, %_ZNSirsERf.exit149 ], [ %13, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit ]
  store ptr %i.ar, ptr %6, align 8, !tbaa !61
  %i.hj = load i64, ptr %i.at, align 8
  %i.hk = getelementptr inbounds i8, ptr %6, i64 %i.hj
  store ptr %i.as, ptr %i.hk, align 8, !tbaa !61
  store ptr %i.au, ptr %i.av, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !61
  %i.hl = load ptr, ptr %i.ax, align 8, !tbaa !208 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.ay
  br i1 %i.hm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bc
  %i.hn = load i64, ptr %i.ay, align 8, !tbaa !39
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !61
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.az) #25
  store ptr %i.ba, ptr %6, align 8, !tbaa !61
  %i.hp = load i64, ptr %i.bc, align 8
  %i.hq = getelementptr inbounds i8, ptr %6, i64 %i.hp
  store ptr %i.bb, ptr %i.hq, align 8, !tbaa !61
  store i64 0, ptr %i.bd, align 8, !tbaa !210
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.hr = load ptr, ptr %2, align 8, !tbaa !61
  %i.hs = getelementptr i8, ptr %i.hr, i64 -24
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds i8, ptr %2, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 240
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !202 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i, label %._crit_edge, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, !llvm.loop !388

bb.bd:                                            ; preds = %.loopexit.split-lp263, %bb.al, %bb.ae, %bb.t
  %.pn101 = phi { ptr, i32 } [ %i.dc, %bb.t ], [ %.pn97, %.loopexit.split-lp263 ], [ %i.dq, %bb.ae ], [ %i.ef, %bb.al ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #25
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.k
  %.pn101.pn = phi { ptr, i32 } [ %.pn101, %bb.bd ], [ %i.cb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.bf:                                            ; preds = %bb.g
  %i.hx = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2064, i32 noundef 16)
          to label %_ZN17btCollisionObjectnwEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 31 uses

_ZN17btCollisionObjectnwEm.exit:                  ; preds = %bb.bf
  %i.hy = load i64, ptr %i.a, align 8, !tbaa !392
  %i.hz = trunc i64 %i.hy to i32
  invoke void @_ZN10btSoftBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(2064) %i.hx, ptr noundef nonnull %0, i32 noundef %i.hz, ptr noundef nonnull %i.bg, ptr noundef null)
          to label %.preheader unwind label %bb.bg

.preheader:                                       ; preds = %_ZN17btCollisionObjectnwEm.exit
  %i.ia = load i64, ptr %i.b, align 8, !tbaa !392
  %.not274 = icmp eq i64 %i.ia, 0
  br i1 %.not274, label %._crit_edge273, label %.lr.ph

._crit_edge273:                                   ; preds = %bb.bo, %.preheader
  invoke void @_ZN17btSoftBodyHelpers21generateBoundaryFacesEP10btSoftBody(ptr noundef nonnull %i.hx)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %_ZN17btCollisionObjectnwEm.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hx)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #26
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.bo
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bo ], [ 0, %.preheader ] ; 2 uses
  %i.ie = load ptr, ptr %i.u, align 8, !tbaa !193
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %indvars.iv
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 7 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !52 ; 4 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !59
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !59
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.im = load i32, ptr %i.il, align 4, !tbaa !59
  %i.in = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.io = load i32, ptr %i.in, align 4, !tbaa !59
  invoke void @_ZN10btSoftBody11appendTetraEiiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %i.hx, i32 noundef %i.ii, i32 noundef %i.ik, i32 noundef %i.im, i32 noundef %i.io, ptr noundef null)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %.lr.ph
  %i.ip = load ptr, ptr %i.ig, align 8, !tbaa !52 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !59
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !59
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.hx, i32 noundef %i.iq, i32 noundef %i.is, ptr noundef null, i1 noundef zeroext true)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  %i.it = load ptr, ptr %i.ig, align 8, !tbaa !52 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !59
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !59
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.hx, i32 noundef %i.iv, i32 noundef %i.ix, ptr noundef null, i1 noundef zeroext true)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  %i.iy = load ptr, ptr %i.ig, align 8, !tbaa !52 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !59
  %i.jb = load i32, ptr %i.iy, align 4, !tbaa !59
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.hx, i32 noundef %i.ja, i32 noundef %i.jb, ptr noundef null, i1 noundef zeroext true)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %i.jc = load ptr, ptr %i.ig, align 8, !tbaa !52 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !59
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !59
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.hx, i32 noundef %i.jd, i32 noundef %i.jf, ptr noundef null, i1 noundef zeroext true)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  %i.jg = load ptr, ptr %i.ig, align 8, !tbaa !52 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !59
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !59
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.hx, i32 noundef %i.ji, i32 noundef %i.jk, ptr noundef null, i1 noundef zeroext true)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  %i.jl = load ptr, ptr %i.ig, align 8, !tbaa !52 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !59
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !59
  invoke void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.hx, i32 noundef %i.jn, i32 noundef %i.jp, ptr noundef null, i1 noundef zeroext true)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jq = load i64, ptr %i.b, align 8, !tbaa !392
  %i.jr = icmp ugt i64 %i.jq, %indvars.iv.next
  br i1 %i.jr, label %.lr.ph, label %._crit_edge273, !llvm.loop !389

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %.lr.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc110, %bb.f, %bb.bw, %bb.bt, %bb.cc, %bb.bz, %bb.cd, %.loopexit, %bb.bf, %._crit_edge, %._crit_edge273, %bb.bp
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.bp:                                            ; preds = %._crit_edge273
  invoke void @_ZN10btSoftBody19initializeDmInverseEv(ptr noundef nonnull align 8 dereferenceable(2064) %i.hx)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.js = getelementptr inbounds nuw i8, ptr %i.hx, i64 1092 ; 3 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !86 ; 8 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hx, i64 1124 ; 3 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !170 ; 3 uses
  %i.jw = icmp sgt i32 %i.jt, %i.jv
  br i1 %i.jw, label %bb.br, label %.loopexit251

bb.br:                                            ; preds = %bb.bq
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hx, i64 1128 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !171
  %i.jz = icmp slt i32 %i.jy, %i.jt
  br i1 %i.jz, label %bb.bs, label %.lr.ph.i175

bb.bs:                                            ; preds = %bb.br
  %.not.i.i.i180 = icmp eq i32 %i.jt, 0
  br i1 %.not.i.i.i180, label %_ZN20btAlignedObjectArrayIN10btSoftBody12TetraScratchEE8allocateEi.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ka = sext i32 %i.jt to i64
  %i.kb = mul nsw i64 %i.ka, 152
  %i.kc = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.kb, i32 noundef 16)
          to label %.noexc189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc189:                                        ; preds = %bb.bt
  %.pre.i181 = load i32, ptr %i.ju, align 4, !tbaa !170
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody12TetraScratchEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody12TetraScratchEE8allocateEi.exit.i.i: ; preds = %.noexc189, %bb.bs
  %i.kd = phi i32 [ %.pre.i181, %.noexc189 ], [ %i.jv, %bb.bs ] ; 2 uses
  %.0.i.i.i182 = phi ptr [ %i.kc, %.noexc189 ], [ null, %bb.bs ] ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, 0
  br i1 %i.ke, label %.lr.ph.i.i.i184, label %_ZNK20btAlignedObjectArrayIN10btSoftBody12TetraScratchEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i184:                                  ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody12TetraScratchEE8allocateEi.exit.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hx, i64 1136
  %wide.trip.count.i.i.i185 = zext nneg i32 %i.kd to i64
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.lr.ph.i.i.i184
  %indvars.iv.i.i.i186 = phi i64 [ 0, %.lr.ph.i.i.i184 ], [ %indvars.iv.next.i.i.i187, %bb.bu ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN17btSoftBodyHelpers29interpolateBarycentricWeightsEP10btSoftBody:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1920
  br label %bb.n

._crit_edge207:                                   ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit171, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit
  ret void

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector4E6resizeEiRKS0_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.an

bb.n:                                             ; preds = %.lr.ph206, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit171
  %indvars.iv210 = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next211, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit171 ] ; 4 uses
  %i.bv = load ptr, ptr %i.bh, align 8, !tbaa !248
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %indvars.iv210 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i8 1, ptr %i.bi, align 8, !tbaa !244
  store ptr null, ptr %i.bj, align 8, !tbaa !245
  store i32 0, ptr %i.bk, align 4, !tbaa !246
  store i32 0, ptr %i.bl, align 8, !tbaa !247
  %i.bx = load i32, ptr %i.bm, align 4, !tbaa !86
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEED2Ev.exit137._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.037203 = phi float [ -1.000000e+03, %.lr.ph ], [ %.2179, %.thread ] ; 2 uses
  %i.ca = phi <4 x float> [ undef, %.lr.ph ], [ %i.kr, %.thread ]
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.cc = getelementptr inbounds nuw [288 x i8], ptr %i.cb, i64 %indvars.iv ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !45 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !45 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 40 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !45 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load float, ptr %i.bw, align 4, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !19 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !19 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !19 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !19 ; 2 uses
  %i.da = load <2 x float>, ptr %i.cf, align 4, !tbaa !19 ; 4 uses
  %i.db = load <2 x float>, ptr %i.bz, align 4, !tbaa !19 ; 2 uses
  %i.dc = load <2 x float>, ptr %i.ci, align 4, !tbaa !19 ; 6 uses
  %i.dd = load float, ptr %i.cs, align 4, !tbaa !19
  %i.de = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> %i.da, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.dg = fsub <4 x float> %i.de, %i.df           ; 3 uses
  %i.dh = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.cr, i64 1
  %i.dj = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dk = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dl = fsub <4 x float> %i.dj, %i.dk           ; 3 uses
  %i.dm = fsub float %i.cu, %i.cr                 ; 4 uses
  %i.dn = load <2 x float>, ptr %i.cl, align 4, !tbaa !19 ; 3 uses
  %i.do = load float, ptr %i.cv, align 4, !tbaa !19
  %i.dp = fsub float %i.cx, %i.cr                 ; 4 uses
  %i.dq = load <2 x float>, ptr %i.co, align 4, !tbaa !19 ; 2 uses
  %i.dr = insertelement <2 x float> %i.dq, float %i.cp, i64 0 ; 2 uses
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.dt = shufflevector <2 x float> %i.dc, <2 x float> %i.da, <4 x i32> <i32 0, i32 2, i32 3, i32 2>
  %i.du = fsub <4 x float> %i.ds, %i.dt           ; 5 uses
  %i.dv = fsub float %i.cz, %i.cr                 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.dn, %i.dc
  %i.dw = fsub float %i.do, %i.dd
  %i.dx = fsub float %i.cx, %i.cu
  %i.dy = shufflevector <2 x float> %i.dq, <2 x float> %i.dn, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dz = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dy, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 0, i32 4>
  %i.eb = shufflevector <2 x float> %i.dc, <2 x float> %i.da, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ec = fsub <4 x float> %i.ea, %i.eb           ; 7 uses
  %i.ed = extractelement <4 x float> %i.ec, i64 1 ; 2 uses
  %i.ee = shufflevector <2 x float> %i.dr, <2 x float> %i.dn, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eg = shufflevector <2 x float> %i.dc, <2 x float> %i.da, <4 x i32> <i32 1, i32 3, i32 2, i32 3>
  %i.eh = fsub <4 x float> %i.ef, %i.eg           ; 5 uses
  %i.ei = extractelement <4 x float> %i.eh, i64 1 ; 2 uses
  %i.ej = fsub float %i.cz, %i.cu
  %i.ek = shufflevector <4 x float> %i.eh, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.el = fneg <4 x float> %i.ek
  %i.em = fneg float %i.ei
  %i.en = fmul <4 x float> %i.dl, %i.el
  %i.eo = insertelement <4 x float> %i.dg, float %i.dv, i64 2
  %i.ep = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.dp, i64 1
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.es = insertelement <4 x float> %i.er, float %i.dm, i64 3 ; 2 uses
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.es, <4 x float> %i.en)
  %i.eu = insertelement <4 x float> %i.es, float %i.dp, i64 1
  %i.ev = insertelement <4 x float> %i.eu, float %i.dv, i64 2
  %i.ew = insertelement <4 x float> %i.ev, float %i.dm, i64 3 ; 2 uses
  %i.ex = fneg <4 x float> %i.ew
  %i.ey = fneg float %i.dp
  %i.ez = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fa = fmul <4 x float> %i.ez, %i.ex
  %i.fb = shufflevector <4 x float> %i.dl, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 6, i32 1>
  %i.fc = shufflevector <4 x float> %i.ec, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fc, <4 x float> %i.fa)
  %i.fe = fneg <4 x float> %i.ec
  %i.ff = fneg float %i.ed
  %i.fg = fmul <4 x float> %i.dg, %i.fe
  %i.fh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.eh, <4 x float> %i.fg)
  %i.fi = shufflevector <4 x float> %i.du, <4 x float> %i.eh, <4 x i32> <i32 poison, i32 2, i32 7, i32 5>
  %i.fj = insertelement <4 x float> %i.fi, float %i.dw, i64 0
  %i.fk = fmul <4 x float> %i.fj, %i.fd
  %i.fl = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> %i.ec, <4 x i32> <i32 0, i32 6, i32 7, i32 5>
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.fm, <4 x float> %i.fk)
  %i.fo = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> %i.ew, <4 x i32> <i32 0, i32 6, i32 7, i32 5>
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.fp, <4 x float> %i.fn)
  %i.fr = fmul float %i.dm, %i.em
  %i.fs = extractelement <4 x float> %i.eh, i64 3 ; 2 uses
  %i.ft = call float @llvm.fmuladd.f32(float %i.fs, float %i.dp, float %i.fr)
  %i.fu = extractelement <4 x float> %i.ec, i64 3 ; 2 uses
  %i.fv = fmul float %i.fu, %i.ey
  %i.fw = call float @llvm.fmuladd.f32(float %i.dm, float %i.ed, float %i.fv)
  %i.fx = fmul float %i.fs, %i.ff
  %i.fy = call float @llvm.fmuladd.f32(float %i.fu, float %i.ei, float %i.fx)
  %i.fz = extractelement <4 x float> %i.du, i64 2
  %i.ga = fmul float %i.fw, %i.fz
  %i.gb = extractelement <4 x float> %i.ec, i64 2
  %i.gc = call float @llvm.fmuladd.f32(float %i.ft, float %i.gb, float %i.ga)
  %i.gd = call noundef float @llvm.fmuladd.f32(float %i.fy, float %i.dv, float %i.gc)
  %i.ge = fdiv float 1.000000e+00, %i.gd
  %i.gf = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gh = fmul <4 x float> %i.gg, %i.fq           ; 7 uses
  %i.gi = extractelement <4 x float> %i.gh, i64 0 ; 2 uses
  %i.gj = extractelement <4 x float> %i.gh, i64 1 ; 2 uses
  %i.gk = fcmp olt float %i.gi, %i.gj
  %.sroa.speculated = select i1 %i.gk, float %i.gi, float %i.gj ; 2 uses
  %i.gl = extractelement <4 x float> %i.gh, i64 2 ; 2 uses
  %i.gm = fcmp olt float %.sroa.speculated, %i.gl
  %.sroa.speculated.1 = select i1 %i.gm, float %.sroa.speculated, float %i.gl ; 2 uses
  %i.gn = extractelement <4 x float> %i.gh, i64 3 ; 2 uses
  %i.go = fcmp olt float %.sroa.speculated.1, %i.gn
  %.sroa.speculated.2 = select i1 %i.go, float %.sroa.speculated.1, float %i.gn ; 2 uses
  %i.gp = fcmp ogt float %.sroa.speculated.2, %.037203
  br i1 %i.gp, label %bb.q, label %.thread

bb.p:                                             ; preds = %bb.aj, %bb.ai
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i8 1, ptr %i.bo, align 8, !tbaa !244
  store ptr null, ptr %i.bp, align 8, !tbaa !245
  store i32 0, ptr %i.bq, align 4, !tbaa !246
  store i32 0, ptr %i.br, align 8, !tbaa !247
  %i.gr = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 8, i32 noundef 16)
          to label %bb.r unwind label %bb.ad      ; 4 uses

bb.r:                                             ; preds = %bb.q
  %.pre217 = load ptr, ptr %i.cd, align 8, !tbaa !45
  store i8 1, ptr %i.bo, align 8, !tbaa !244
  store ptr %i.gr, ptr %i.bp, align 8, !tbaa !245
  store i32 1, ptr %i.br, align 8, !tbaa !247
  store ptr %.pre217, ptr %i.gr, align 8, !tbaa !45
  store i32 1, ptr %i.bq, align 4, !tbaa !246
  %i.gs = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 16, i32 noundef 16)
          to label %bb.s unwind label %bb.ad      ; 6 uses

bb.s:                                             ; preds = %bb.r
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !45
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !45
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gr)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.bo, align 8, !tbaa !244
  store ptr %i.gs, ptr %i.bp, align 8, !tbaa !245
  store i32 2, ptr %i.br, align 8, !tbaa !247
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gv = load ptr, ptr %i.cg, align 8, !tbaa !45
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !45
  store i32 2, ptr %i.bq, align 4, !tbaa !246
  %i.gw = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 32, i32 noundef 16)
          to label %.lr.ph.i.i.i104 unwind label %bb.ad ; 10 uses

.lr.ph.i.i.i104:                                  ; preds = %bb.t
  %i.gx = load ptr, ptr %i.gs, align 8, !tbaa !45
  store ptr %i.gx, ptr %i.gw, align 8, !tbaa !45
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !45
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !45
  %.old184 = load i8, ptr %i.bo, align 8, !tbaa !244, !range !37, !noundef !38
  %.old185 = trunc nuw i8 %.old184 to i1
  br i1 %.old185, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i104
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gs)
          to label %.noexc110 unwind label %bb.ad

.noexc110:                                        ; preds = %bb.u
  %.pre2.pre.pre.i103 = load i32, ptr %i.bq, align 4, !tbaa !246
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i104, %.noexc110
  %.pre2.i102 = phi i32 [ 2, %.lr.ph.i.i.i104 ], [ %.pre2.pre.pre.i103, %.noexc110 ] ; 2 uses
  store i8 1, ptr %i.bo, align 8, !tbaa !244
  store ptr %i.gw, ptr %i.bp, align 8, !tbaa !245
  store i32 4, ptr %i.br, align 8, !tbaa !247
  %i.hb = sext i32 %.pre2.i102 to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.hb
  %i.hd = load ptr, ptr %i.cj, align 8, !tbaa !45
  store ptr %i.hd, ptr %i.hc, align 8, !tbaa !45
  %i.he = add nsw i32 %.pre2.i102, 1              ; 3 uses
  store i32 %i.he, ptr %i.bq, align 4, !tbaa !246
  %i.hf = icmp eq i32 %i.he, 4
  br i1 %i.hf, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.hg = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16)
          to label %.lr.ph.i.i.i123 unwind label %bb.ad ; 6 uses

.lr.ph.i.i.i123:                                  ; preds = %bb.w
  %i.hh = load ptr, ptr %i.gw, align 8, !tbaa !45
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !45
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !45
  store ptr %i.hk, ptr %i.hi, align 8, !tbaa !45
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !45
  store ptr %i.hn, ptr %i.hl, align 8, !tbaa !45
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !45
  store ptr %i.hq, ptr %i.ho, align 8, !tbaa !45
  %.old187 = load i8, ptr %i.bo, align 8, !tbaa !244, !range !37, !noundef !38
  %.old188 = trunc nuw i8 %.old187 to i1
  br i1 %.old188, label %bb.x, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120

bb.x:                                             ; preds = %.lr.ph.i.i.i123
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gw)
          to label %.noexc129 unwind label %bb.ad

.noexc129:                                        ; preds = %bb.x
  %.pre2.pre.pre.i122 = load i32, ptr %i.bq, align 4, !tbaa !246
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120: ; preds = %.noexc129, %.lr.ph.i.i.i123
  %.pre2.i121 = phi i32 [ 4, %.lr.ph.i.i.i123 ], [ %.pre2.pre.pre.i122, %.noexc129 ]
  store i8 1, ptr %i.bo, align 8, !tbaa !244
  store ptr %i.hg, ptr %i.bp, align 8, !tbaa !245
  store i32 8, ptr %i.br, align 8, !tbaa !247
  br label %bb.y

bb.y:                                             ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120, %bb.v
  %i.hr = phi ptr [ %i.hg, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120 ], [ %i.gw, %bb.v ] ; 9 uses
  %i.hs = phi i32 [ %.pre2.i121, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i120 ], [ %i.he, %bb.v ] ; 5 uses
  %i.ht = ptrtoaddr ptr %i.hr to i64
  %i.hu = sext i32 %i.hs to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hu
  %i.hw = load ptr, ptr %i.cm, align 8, !tbaa !45
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !45
  %i.hx = add i32 %i.hs, 1                        ; 8 uses
  store i32 %i.hx, ptr %i.bq, align 4, !tbaa !246
  %i.hy = load i32, ptr %i.bk, align 4, !tbaa !246 ; 5 uses
  %.not = icmp slt i32 %i.hs, %i.hy
  br i1 %.not, label %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i, label %bb.z

._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i: ; preds = %bb.y
  %.pre10.i.i = load ptr, ptr %i.bj, align 8, !tbaa !245
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.hz = load i32, ptr %i.bl, align 8, !tbaa !247
  %.not200 = icmp sgt i32 %i.hz, %i.hs
  br i1 %.not200, label %..lr.ph.i_crit_edge.i.i, label %bb.aa

..lr.ph.i_crit_edge.i.i:                          ; preds = %bb.z
  %.pre.i.i = load ptr, ptr %i.bj, align 8, !tbaa !245
  br label %.lr.ph.i.i.i131

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ia = sext i32 %i.hx to i64
  %i.ib = shl nsw i64 %i.ia, 3
  %i.ic = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ib, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i unwind label %bb.ad

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i = phi ptr [ null, %bb.aa ], [ %i.ic, %bb.ab ] ; 9 uses
  %i.id = icmp sgt i32 %i.hy, 0
  %i.ie = load ptr, ptr %i.bj, align 8, !tbaa !245 ; 9 uses
  br i1 %i.id, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i
  %i.if = ptrtoaddr ptr %i.ie to i64
  %.0.i.i.i.i.i284 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.hy to i64 ; 5 uses
  %min.iters.check286 = icmp ult i32 %i.hy, 4
  %i.ig = sub i64 %i.if, %.0.i.i.i.i.i284
  %diff.check288 = icmp ugt i64 %i.ig, -32
  %or.cond = select i1 %min.iters.check286, i1 true, i1 %diff.check288
  br i1 %or.cond, label %scalar.ph285.preheader, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph.i.i.i.i.i
  %n.vec290 = and i64 %wide.trip.count.i.i.i.i.i, 2147483644 ; 3 uses
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph289
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next295, %vector.body291 ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %index292 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %index292 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %wide.load293 = load <2 x ptr>, ptr %i.ii, align 8, !tbaa !45
  %wide.load294 = load <2 x ptr>, ptr %i.ij, align 8, !tbaa !45
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <2 x ptr> %wide.load293, ptr %i.ih, align 8, !tbaa !45
  store <2 x ptr> %wide.load294, ptr %i.ik, align 8, !tbaa !45
  %index.next295 = add nuw i64 %index292, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next295, %n.vec290
  br i1 %i.il, label %middle.block296, label %vector.body291, !llvm.loop !453

middle.block296:                                  ; preds = %vector.body291
  %cmp.n297 = icmp eq i64 %n.vec290, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n297, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph285.preheader

scalar.ph285.preheader:                           ; preds = %.lr.ph.i.i.i.i.i, %middle.block296
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec290, %middle.block296 ] ; 3 uses
  %xtraiter312 = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %scalar.ph285.prol.loopexit, label %scalar.ph285.prol

scalar.ph285.prol:                                ; preds = %scalar.ph285.preheader, %scalar.ph285.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph285.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph285.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph285.prol ], [ 0, %scalar.ph285.preheader ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.i.i.i.i.i.prol
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !45
  store ptr %i.io, ptr %i.im, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter312
  br i1 %prol.iter.cmp.not, label %scalar.ph285.prol.loopexit, label %scalar.ph285.prol, !llvm.loop !454

scalar.ph285.prol.loopexit:                       ; preds = %scalar.ph285.prol, %scalar.ph285.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph285.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph285.prol ]
  %i.ip = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.iq = icmp ugt i64 %i.ip, -4
  br i1 %i.iq, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph285

scalar.ph285:                                     ; preds = %scalar.ph285.prol.loopexit, %scalar.ph285
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph285 ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph285.prol.loopexit ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.i.i.i.i.i
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !45
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i.i.i.i
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !45
  store ptr %i.iw, ptr %i.iu, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !45
  store ptr %i.iz, ptr %i.ix, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !45
  store ptr %i.jc, ptr %i.ja, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph285, !llvm.loop !455

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp ne ptr %i.ie, null
  %i.jd = load i8, ptr %i.bi, align 8, !range !37
  %i.je = trunc nuw i8 %i.jd to i1
  %or.cond192 = select i1 %.not.i5.i.i.i.i, i1 %i.je, i1 false
  br i1 %or.cond192, label %bb.ac, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i: ; preds = %scalar.ph285.prol.loopexit, %scalar.ph285, %middle.block296
  %.old190 = load i8, ptr %i.bi, align 8, !tbaa !244, !range !37, !noundef !38
  %.old191 = trunc nuw i8 %.old190 to i1
  br i1 %.old191, label %bb.ac, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i

bb.ac:                                            ; preds = %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ie)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i unwind label %bb.ad

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i: ; preds = %bb.ac, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i
  store i8 1, ptr %i.bi, align 8, !tbaa !244
  store ptr %.0.i.i.i.i.i, ptr %i.bj, align 8, !tbaa !245
  store i32 %i.hx, ptr %i.bl, align 8, !tbaa !247
  br label %.lr.ph.i.i.i131

.lr.ph.i.i.i131:                                  ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i, %..lr.ph.i_crit_edge.i.i
  %i.jf = phi ptr [ %.pre.i.i, %..lr.ph.i_crit_edge.i.i ], [ %.0.i.i.i.i.i, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i ] ; 2 uses
  %i.jg = sext i32 %i.hy to i64                   ; 2 uses
  %wide.trip.count.i.i.i132 = sext i32 %i.hx to i64
  %i.jh = shl nsw i64 %i.jg, 3
  %scevgep.i.i = getelementptr i8, ptr %i.jf, i64 %i.jh
  %i.ji = sub nsw i64 %wide.trip.count.i.i.i132, %i.jg
  %i.jj = shl nuw nsw i64 %i.ji, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 0, i64 %i.jj, i1 false), !tbaa !45
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i131, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i
  %i.jk = phi ptr [ %.pre10.i.i, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i ], [ %i.jf, %.lr.ph.i.i.i131 ] ; 7 uses
  store i32 %i.hx, ptr %i.bk, align 4, !tbaa !246
  %i.jl = icmp sgt i32 %i.hs, -1
  br i1 %i.jl, label %.lr.ph.i4.i.i, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit

.lr.ph.i4.i.i:                                    ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i
  %i.jm = ptrtoaddr ptr %i.jk to i64
  %wide.trip.count.i5.i.i = zext i32 %i.hx to i64 ; 5 uses
  %min.iters.check268 = icmp ult i32 %i.hx, 4
  %i.jn = sub i64 %i.ht, %i.jm
  %diff.check270 = icmp ugt i64 %i.jn, -32
  %or.cond299 = select i1 %min.iters.check268, i1 true, i1 %diff.check270
  br i1 %or.cond299, label %scalar.ph267.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %.lr.ph.i4.i.i
  %n.vec272 = and i64 %wide.trip.count.i5.i.i, 2147483644 ; 3 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next277, %vector.body273 ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %index274 ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %index274 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load275 = load <2 x ptr>, ptr %i.jp, align 8, !tbaa !45
  %wide.load276 = load <2 x ptr>, ptr %i.jq, align 8, !tbaa !45
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store <2 x ptr> %wide.load275, ptr %i.jo, align 8, !tbaa !45
  store <2 x ptr> %wide.load276, ptr %i.jr, align 8, !tbaa !45
  %index.next277 = add nuw i64 %index274, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next277, %n.vec272
  br i1 %i.js, label %middle.block278, label %vector.body273, !llvm.loop !456

middle.block278:                                  ; preds = %vector.body273
  %cmp.n279 = icmp eq i64 %n.vec272, %wide.trip.count.i5.i.i
  br i1 %cmp.n279, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph267.preheader

scalar.ph267.preheader:                           ; preds = %.lr.ph.i4.i.i, %middle.block278
end_hunk_1
