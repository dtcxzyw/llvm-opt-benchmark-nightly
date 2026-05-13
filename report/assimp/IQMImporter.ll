inline.NumInlined: 277
inline.NumDeleted: 154
begin_hunk_0_@_ZN6Assimp11IQMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit312

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #15
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit312

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.f unwind label %bb.i       ; 10 uses

bb.f:                                             ; preds = %bb.e
  %i.y = icmp ult i64 %i.x, 124
  br i1 %i.y, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.z = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA10_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(15) @.str.6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
          to label %bb.ch unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i311

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.z) #15
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i311

bb.k:                                             ; preds = %bb.f
  %i.ac = icmp slt i64 %i.x, 0
  br i1 %i.ac, label %bb.l, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #17
          to label %.noexc286 unwind label %bb.q

.noexc286:                                        ; preds = %bb.l
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.k
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #18
          to label %bb.m unwind label %bb.q       ; 24 uses

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  store i8 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = add nsw i64 %i.x, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 0, i64 %i.af, i1 false)
  %i.ag = load ptr, ptr %i.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.ad, i64 noundef 1, i64 noundef %i.x)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not = icmp eq i64 %i.x, %i.aj
  br i1 %.not, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 1 dereferenceable(25) @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.4)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
          to label %bb.ch unwind label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i311

bb.r:                                             ; preds = %bb.p, %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.thread355

bb.s:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ak) #15
  br label %.thread355

bb.t:                                             ; preds = %bb.n
  %i.ao = load i128, ptr %i.ad, align 1
  %i.ap = icmp ne i128 %i.ao, 396019459569080130499995251072323145
  %i.aq = zext i1 %i.ap to i32
  %.not252 = icmp eq i32 %i.aq, 0
  br i1 %.not252, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.as = load i32, ptr %i.ar, align 4
  %.not253 = icmp eq i32 %i.as, 2
  br i1 %.not253, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %.not254 = icmp eq i64 %i.x, %i.av
  br i1 %.not254, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA27_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 1 dereferenceable(27) @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.4)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
          to label %bb.ch unwind label %bb.y

bb.y:                                             ; preds = %bb.af, %_ZSt4iotaIPjiEvT_S1_T0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %bb.ac, %bb.ab, %bb.aa, %bb.x
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.thread355

bb.z:                                             ; preds = %bb.w
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aw) #15
  br label %.thread355

bb.aa:                                            ; preds = %bb.v
  %i.az = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ab unwind label %bb.y

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6Assimp6Logger5debugIJRA14_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.az, ptr noundef nonnull align 1 dereferenceable(14) @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ac unwind label %bb.y

bb.ac:                                            ; preds = %bb.ab
  %i.ba = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #18
          to label %._crit_edge.i.i288 unwind label %bb.y ; 4 uses

._crit_edge.i.i288:                               ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bb, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bb, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 0, ptr %i.bd, align 1
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %._crit_edge.i.i288
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.ba, ptr %i.be, align 8
  %i.bf = load ptr, ptr %5, align 8               ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.bb
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.ad
  %i.bh = load i64, ptr %i.bb, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #16
  %.pre = load ptr, ptr %i.be, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  %i.bj = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %i.ba, %bb.ad ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1028
  store float 1.000000e+00, ptr %i.bk, align 4
  %.sroa.4328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 1032
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4328.0..sroa_idx, i8 0, i64 20, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 1068
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 1088
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = load ptr, ptr %i.be, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1120
  store i32 %i.bm, ptr %i.bo, align 8
  %i.bp = zext i32 %i.bm to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bq) #18
          to label %bb.ae unwind label %bb.y

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.bs = load ptr, ptr %i.be, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1128
  store ptr %i.br, ptr %i.bt, align 8
  %i.bu = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1128
  %i.bw = load ptr, ptr %i.bv, align 8            ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1120
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %.idx = shl nuw nsw i64 %i.bz, 2                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx
  %.not6.i = icmp eq i32 %i.by, 0
  br i1 %.not6.i, label %_ZSt4iotaIPjiEvT_S1_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ae
  %i.cb = add nsw i64 %.idx, -4                   ; 2 uses
  %i.cc = lshr exact i64 %i.cb, 2
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader490, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cd, 9223372036854775800     ; 4 uses
  %i.ce = trunc i64 %n.vec to i32
  %i.cf = shl i64 %n.vec, 2
  %i.cg = getelementptr i8, ptr %i.bw, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ch = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4
  store <4 x i32> %step.add, ptr %i.ci, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIPjiEvT_S1_T0_.exit, label %.lr.ph.i.preheader490

.lr.ph.i.preheader490:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ce, %middle.block ]
  %.057.i.ph = phi ptr [ %i.bw, %.lr.ph.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader490, %.lr.ph.i
  %.08.i = phi i32 [ %i.ck, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader490 ] ; 2 uses
  %.057.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader490 ] ; 2 uses
  store i32 %.08.i, ptr %.057.i, align 4
  %i.ck = add nuw nsw i32 %.08.i, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cl, %i.ca
  br i1 %.not.i, label %_ZSt4iotaIPjiEvT_S1_T0_.exit, label %.lr.ph.i, !llvm.loop !9

_ZSt4iotaIPjiEvT_S1_T0_.exit:                     ; preds = %.lr.ph.i, %middle.block, %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i32 0, ptr %i.cn, align 8
  %i.co = load i32, ptr %i.bl, align 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3                ; 2 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #18
          to label %bb.af unwind label %bb.y      ; 2 uses

bb.af:                                            ; preds = %_ZSt4iotaIPjiEvT_S1_T0_.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 %i.cq, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store i32 0, ptr %i.ct, align 8
  %8 = load i32, ptr %i.bl, align 4
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3                     ; 2 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %10) #18
          to label %bb.ag unwind label %bb.y      ; 2 uses

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 0, i64 %10, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.da ; 2 uses
  %11 = load i32, ptr %i.bl, align 4              ; 2 uses
  %12 = zext i32 %11 to i64
  %.idx413 = mul nuw nsw i64 %12, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx413
  %.not258409 = icmp eq i32 %11, 0
  br i1 %.not258409, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph412

.lr.ph412:                                        ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i288
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %5, align 8               ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bb
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.ah
  %i.dl = load i64, ptr %i.bb, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 1144) #16
  br label %.thread355

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge408, %bb.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.x) #16
  %i.dn = load ptr, ptr %i.i, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #15, !inline_history !4
  ret void

bb.ai:                                            ; preds = %.lr.ph412, %._crit_edge408
  %.0234410 = phi ptr [ %i.db, %.lr.ph412 ], [ %i.ip, %._crit_edge408 ] ; 7 uses
  %i.dq = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #18
          to label %bb.aj unwind label %bb.at     ; 15 uses

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  store i32 0, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  store i32 0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 224
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 1272
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 1312
  store ptr null, ptr %i.dw, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.dt, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.du, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.dv, i8 0, i64 36, i1 false)
  %i.dx = load ptr, ptr %i.cs, align 8
  %i.dy = load i32, ptr %i.cn, align 8            ; 2 uses
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.cn, align 8
  %i.ea = zext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.ea
  store ptr %i.dq, ptr %i.eb, align 8
  %i.ec = load i32, ptr %i.ct, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 232
  store i32 %i.ec, ptr %i.ed, align 8
  %i.ee = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18
          to label %bb.ak unwind label %bb.au     ; 5 uses

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ee)
          to label %bb.al unwind label %bb.av

bb.al:                                            ; preds = %bb.ak
  %i.ef = load ptr, ptr %i.cv, align 8
  %i.eg = load i32, ptr %i.ct, align 8            ; 2 uses
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ct, align 8
  %i.ei = zext i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ei
  store ptr %i.ee, ptr %i.ej, align 8
  %i.ek = load i32, ptr %i.dd, align 4
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.el
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.en = getelementptr inbounds nuw i8, ptr %.0234410, i64 4
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ep ; 3 uses
  store ptr %i.de, ptr %7, align 8
  %i.er = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eq) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.er, ptr %i.a, align 8
  %i.es = icmp ugt i64 %i.er, 15
  br i1 %i.es, label %.noexc.i300, label %._crit_edge.i.i299

.noexc.i300:                                      ; preds = %bb.al
  %i.et = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc302 unwind label %bb.aw ; 2 uses

.noexc302:                                        ; preds = %.noexc.i300
  store ptr %i.et, ptr %7, align 8
  %i.eu = load i64, ptr %i.a, align 8
  store i64 %i.eu, ptr %i.de, align 8
  br label %._crit_edge.i.i299

._crit_edge.i.i299:                               ; preds = %.noexc302, %bb.al
  %i.ev = phi ptr [ %i.et, %.noexc302 ], [ %i.de, %bb.al ] ; 2 uses
  switch i64 %i.er, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %bb.ao
  ]

bb.am:                                            ; preds = %._crit_edge.i.i299
  %i.ew = load i8, ptr %i.eq, align 1
  store i8 %i.ew, ptr %i.ev, align 1
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i299
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr nonnull align 1 %i.eq, i64 %i.er, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %._crit_edge.i.i299
  %i.ex = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ex, ptr %i.df, align 8
  %i.ey = load ptr, ptr %7, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i8 0, ptr %i.ez, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.fa = load i64, ptr %i.df, align 8            ; 3 uses
  %i.fb = trunc i64 %i.fa to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.dg, i8 0, i64 1024, i1 false)
  %i.fc = and i64 %i.fa, 4294966272
  %.not.i304 = icmp eq i64 %i.fc, 0
  %spec.select.i = select i1 %.not.i304, i32 %i.fb, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %6, align 4
  %i.fd = load ptr, ptr %7, align 8               ; 3 uses
  %i.fe = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dg, ptr align 1 %i.fd, i64 %i.fe, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.fe
  store i8 0, ptr %i.ff, align 1
  %i.fg = icmp eq ptr %i.fd, %i.de
  br i1 %i.fg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i306: ; preds = %bb.ao
  %i.fh = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fh)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %bb.ao
  %i.fi = load i64, ptr %i.de, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fj) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.fk = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %6, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0)
          to label %bb.ap unwind label %bb.ax     ; 0 uses

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  %i.fl = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %6, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 0)
          to label %bb.aq unwind label %bb.ax     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  store i32 4, ptr %i.dq, align 8
  store i32 0, ptr %i.ds, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.0234410, i64 20 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4            ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 5 uses
  %i.fp = shl nuw nsw i64 %i.fo, 4
  %i.fq = or disjoint i64 %i.fp, 8
  %i.fr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fq) #18
          to label %bb.ar unwind label %bb.au     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.fo, ptr %i.fr, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.ft = icmp eq i32 %i.fn, 0
  br i1 %i.ft, label %.loopexit368, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.fo
  %i.fv = add nuw nsw i64 %i.fo, 1152921504606846975
  %i.fw = and i64 %i.fv, 1152921504606846975
  %xtraiter = and i64 %i.fo, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.as, %.prol.preheader
  %i.fx = phi ptr [ %i.fz, %.prol.preheader ], [ %i.fs, %bb.as ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.as ]
  store i32 0, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr null, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10
end_hunk_0
