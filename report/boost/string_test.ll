Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7799
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_Z14test_push_backv:bb.a
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.o:                                             ; preds = %.preheader, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9push_backEc.exit11
  %.015 = phi i32 [ 0, %.preheader ], [ %i.ee, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9push_backEc.exit11 ]
  %i.cy = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.cz = trunc i8 %i.cy to i1
  %i.da = lshr i8 %i.cy, 1
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = load i64, ptr %0, align 8               ; 2 uses
  %i.dd = lshr i64 %i.dc, 1                       ; 3 uses
  %i.de = select i1 %i.cz, i64 %i.db, i64 %i.dd   ; 3 uses
  %i.df = trunc i64 %i.dc to i1                   ; 3 uses
  %i.dg = load i64, ptr %i.i, align 8
  %i.dh = add i64 %i.dg, -1
  %i.di = select i1 %i.df, i64 22, i64 %i.dh
  %i.dj = icmp ult i64 %i.de, %i.di
  br i1 %i.dj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.dk = load ptr, ptr %i.co, align 8
  %i.dl = select i1 %i.df, ptr %i.f, ptr %i.dk    ; 2 uses
  %i.dm = add nuw i64 %i.de, 1                    ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 %i.dm
  store i8 0, ptr %i.dn, align 1, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.de
  store i8 33, ptr %i.do, align 1, !tbaa !51
  %i.dp = load i8, ptr %0, align 8, !tbaa !51
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dr = trunc i64 %i.dm to i8
  %i.ds = shl i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 1
  store i8 %i.dt, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9push_backEc.exit11

bb.r:                                             ; preds = %bb.p
  %i.du = load i64, ptr %0, align 8
  %i.dv = shl i64 %i.dm, 1
  %i.dw = and i64 %i.du, 1
  %i.dx = or disjoint i64 %i.dw, %i.dv
  store i64 %i.dx, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9push_backEc.exit11

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 33, ptr %i.a, align 1, !tbaa !51
  %i.dy = and i64 %i.dd, 127
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.dy
  %i.ea = load ptr, ptr %i.co, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dd
  %i.ec = select i1 %i.df, ptr %i.dz, ptr %i.eb
  %i.ed = invoke noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ec, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null)
          to label %.noexc10 unwind label %bb.t   ; 0 uses

.noexc10:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9push_backEc.exit11

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9push_backEc.exit11: ; preds = %.noexc10, %bb.r, %bb.q
  %i.ee = add nuw nsw i32 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, 100
  br i1 %exitcond.not, label %bb.m, label %bb.o, !llvm.loop !288

bb.t:                                             ; preds = %bb.s
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.u:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.eg = load i8, ptr %0, align 8, !tbaa !51
  %i.eh = trunc i8 %i.eg to i1
  br i1 %i.eh, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = load ptr, ptr %i.co, align 8, !tbaa !61 ; 2 uses
  %i.ej = load i64, ptr %i.i, align 8, !tbaa !62  ; 2 uses
  %i.ek = icmp ne ptr %i.ei, null
  %i.el = icmp ugt i64 %i.ej, 23
  %or.cond.i.i = and i1 %i.ek, %i.el
  br i1 %or.cond.i.i, label %bb.w, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.ej) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit: ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  ret void

bb.x:                                             ; preds = %bb.m
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.t ], [ %i.em, %bb.x ], [ %i.cx, %bb.n ]
  %i.en = load i8, ptr %0, align 8, !tbaa !51
  %i.eo = trunc i8 %i.en to i1
  br i1 %i.eo, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit13, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !61 ; 2 uses
  %i.er = load i64, ptr %i.i, align 8, !tbaa !62  ; 2 uses
  %i.es = icmp ne ptr %i.eq, null
  %i.et = icmp ugt i64 %i.er, 23
  %or.cond.i.i12 = and i1 %i.es, %i.et
  br i1 %or.cond.i.i12, label %bb.aa, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit13

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.er) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit13

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit13: ; preds = %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = trunc i64 %i.f to i1                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  %i.m = select i1 %i.i, i64 22, i64 %i.l
  %i.n = icmp ult i64 %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q       ; 2 uses
  %i.s = add nuw i64 %i.h, 1                      ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.h
  store i8 %1, ptr %i.u, align 1, !tbaa !51
  %i.v = load i8, ptr %0, align 8, !tbaa !51
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i64 %i.s to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl i64 %i.s, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = lshr i64 %i.f, 1
  %i.ag = and i64 %i.af, 127
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.g
  %i.al = select i1 %i.i, ptr %i.ah, ptr %i.ak
  %i.am = call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.al, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z13test_pop_backv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::basic_string", align 8 ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.c = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 6)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.a
  br i1 %i.c, label %bb.b, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %.noexc.i
  %i.d = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.e = trunc i8 %i.d to i1
  %i.f = lshr i8 %i.d, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = select i1 %i.e, ptr %i.h, ptr %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i: ; preds = %bb.b, %.noexc.i
  %i.n = load i8, ptr %0, align 8, !tbaa !51
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = select i1 %i.o, ptr %i.a, ptr %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.143, i64 6, i1 false)
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %.sroa.sel25 = select i1 %i.o, ptr %.sroa.gep, ptr %.sroa.gep24
  store i8 0, ptr %.sroa.sel25, align 1, !tbaa !51
  %i.r = load i8, ptr %0, align 8, !tbaa !51
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i
  store i8 13, ptr %0, align 8
  %.pre = load i64, ptr %0, align 8               ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.u = lshr i64 %.pre, 1                        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %.sroa.gep2647 = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.x = load i8, ptr %0, align 8, !tbaa !51
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.ac = icmp ne ptr %i.z, null
  %i.ad = icmp ugt i64 %i.ab, 23
  %or.cond.i.i14 = and i1 %i.ac, %i.ad
  br i1 %or.cond.i.i14, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ab) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %bb.d, %bb.c, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.fu, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit ], [ %i.w, %bb.c ], [ %i.w, %bb.d ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i
  %i.ae = load i64, ptr %0, align 8
  %.fr = freeze i64 %i.ae                         ; 2 uses
  %i.af = and i64 %.fr, 1
  %i.ag = or disjoint i64 %i.af, 12               ; 2 uses
  store i64 %i.ag, ptr %0, align 8
  %i.ah = trunc i64 %.fr to i1                    ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %.sroa.gep26 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.gep27 = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %spec.select = select i1 %i.ah, ptr %.sroa.gep26, ptr %.sroa.gep27
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread
  %i.ak = phi ptr [ %i.aj, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit ], [ %i.v, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread ]
  %i.al = phi i64 [ 6, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit ], [ %i.u, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread ] ; 2 uses
  %i.am = phi ptr [ %i.ai, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit ], [ %i.t, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread ]
  %i.an = phi i1 [ %i.ah, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit ], [ true, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread ]
  %i.ao = phi i64 [ %i.ag, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit ], [ %.pre, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread ] ; 2 uses
  %i.ap = phi ptr [ %spec.select, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit ], [ %.sroa.gep2647, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit.thread ] ; 2 uses
  %.pre-phi50 = trunc i64 %i.ao to i8
  %i.aq = trunc i64 %i.ao to i1                   ; 2 uses
  %i.ar = and i64 %i.al, 127
  %i.as = select i1 %i.aq, i64 %i.ar, i64 %i.al   ; 2 uses
  %i.at = select i1 %i.aq, ptr %i.a, ptr %i.am
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64
  %.neg.i.i = sub i64 %i.av, %i.au
  %i.aw = add i64 %.neg.i.i, %i.as                ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.sel.v = select i1 %i.an, ptr %i.ay, ptr %i.ak
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %.sroa.sel.v, i64 %i.aw, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.g, %bb.f
  %i.az = phi i8 [ %.pre-phi50, %bb.f ], [ %.pre.i.i, %bb.g ]
  %i.ba = add nsw i64 %i.as, -1                   ; 2 uses
  %i.bb = trunc i8 %i.az to i1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bc = trunc i64 %i.ba to i8
  %i.bd = shl i8 %i.bc, 1
  %i.be = or disjoint i8 %i.bd, 1                 ; 2 uses
  store i8 %i.be, ptr %0, align 8
  %.pre32 = load i64, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bf = load i64, ptr %0, align 8
  %i.bg = shl i64 %i.ba, 1
  %i.bh = and i64 %i.bf, 1
  %i.bi = or disjoint i64 %i.bh, %i.bg            ; 3 uses
  store i64 %i.bi, ptr %0, align 8
  %i.bj = trunc i64 %i.bi to i8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit: ; preds = %bb.h, %bb.i
  %i.bk = phi i64 [ %.pre32, %bb.h ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bl = phi i8 [ %i.be, %bb.h ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bm = trunc i8 %i.bl to i1
  %i.bn = lshr i8 %i.bl, 1
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = lshr i64 %i.bk, 1
  %i.bq = select i1 %i.bm, i64 %i.bo, i64 %i.bp
  %i.br = icmp eq i64 %i.bq, 5
  br i1 %i.br, label %bb.j, label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit

bb.j:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit
  %i.bs = trunc i64 %i.bk to i1
  %i.bt = load ptr, ptr %i.b, align 8
  %i.bu = select i1 %i.bs, ptr %i.a, ptr %i.bt    ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = xor i32 %i.bv, 1819043144
  %i.bx = getelementptr i8, ptr %i.bu, i64 4
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = xor i32 %i.bz, 111
  %i.cb = or i32 %i.bw, %i.ca
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit

_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit, %bb.j
  %i.cf = phi i1 [ false, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit ], [ %i.ce, %bb.j ]
  %i.cg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 1355, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_pop_backv, i1 noundef zeroext %i.cf)
          to label %bb.k unwind label %bb.s       ; 0 uses

bb.k:                                             ; preds = %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit
  %i.ch = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.ci = trunc i8 %i.ch to i1                    ; 2 uses
  %i.cj = lshr i8 %i.ch, 1
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck ; 2 uses
  %i.cm = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cn = load i64, ptr %0, align 8               ; 3 uses
  %i.co = lshr i64 %i.cn, 1                       ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co ; 2 uses
  %.sroa.sel19.v.sroa.sel.v.sroa.sel.v = select i1 %i.ci, ptr %i.cl, ptr %i.cp
  %.sroa.sel19.v.sroa.sel.v.sroa.sel = getelementptr inbounds i8, ptr %.sroa.sel19.v.sroa.sel.v.sroa.sel.v, i64 -1 ; 2 uses
  %i.cq = trunc i64 %i.cn to i8
  %i.cr = trunc i64 %i.cn to i1                   ; 2 uses
  %i.cs = and i64 %i.co, 127
  %i.ct = select i1 %i.cr, i64 %i.cs, i64 %i.co   ; 2 uses
  %i.cu = select i1 %i.cr, ptr %i.a, ptr %i.cm
  %i.cv = ptrtoint ptr %.sroa.sel19.v.sroa.sel.v.sroa.sel to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %.neg.i.i1 = sub i64 %i.cw, %i.cv
  %i.cx = add i64 %.neg.i.i1, %i.ct               ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i3, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.sel19.v = select i1 %i.ci, ptr %i.cl, ptr %i.cp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sroa.sel19.v.sroa.sel.v.sroa.sel, ptr nonnull align 1 %.sroa.sel19.v, i64 %i.cx, i1 false)
  %.pre.i.i2 = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i3

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i3:      ; preds = %bb.l, %bb.k
  %i.cz = phi i8 [ %i.cq, %bb.k ], [ %.pre.i.i2, %bb.l ]
  %i.da = add nsw i64 %i.ct, -1                   ; 2 uses
  %i.db = trunc i8 %i.cz to i1
  br i1 %i.db, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i3
  %i.dc = trunc i64 %i.da to i8
  %i.dd = shl i8 %i.dc, 1
  %i.de = or disjoint i8 %i.dd, 1                 ; 2 uses
  store i8 %i.de, ptr %0, align 8
  %.pre33 = load i64, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit4

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i3
  %i.df = load i64, ptr %0, align 8
  %i.dg = shl i64 %i.da, 1
  %i.dh = and i64 %i.df, 1
  %i.di = or disjoint i64 %i.dh, %i.dg            ; 3 uses
  store i64 %i.di, ptr %0, align 8
  %i.dj = trunc i64 %i.di to i8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit4

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit4: ; preds = %bb.m, %bb.n
  %i.dk = phi i64 [ %.pre33, %bb.m ], [ %i.di, %bb.n ] ; 2 uses
  %i.dl = phi i8 [ %i.de, %bb.m ], [ %i.dj, %bb.n ] ; 2 uses
  %i.dm = trunc i8 %i.dl to i1
  %i.dn = lshr i8 %i.dl, 1
  %i.do = zext nneg i8 %i.dn to i64
  %i.dp = lshr i64 %i.dk, 1
  %i.dq = select i1 %i.dm, i64 %i.do, i64 %i.dp
  %i.dr = icmp eq i64 %i.dq, 4
  br i1 %i.dr, label %bb.o, label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit6

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit4
  %i.ds = trunc i64 %i.dk to i1
  %i.dt = load ptr, ptr %i.b, align 8
  %i.du = select i1 %i.ds, ptr %i.a, ptr %i.dt
  %i.dv = load i32, ptr %i.du, align 1
  %i.dw = icmp ne i32 %i.dv, 1819043144
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  br label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit6

_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit6: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit4, %bb.o
  %i.dz = phi i1 [ false, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit4 ], [ %i.dy, %bb.o ]
  %i.ea = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.1, i32 noundef 1358, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_pop_backv, i1 noundef zeroext %i.dz)
          to label %.preheader unwind label %bb.s ; 0 uses

.preheader:                                       ; preds = %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit6
  %i.eb = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.ec = trunc i8 %i.eb to i1
  %i.ed = lshr i8 %i.eb, 1
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = load i64, ptr %0, align 8               ; 3 uses
  %i.eg = lshr i64 %i.ef, 1                       ; 2 uses
  %i.eh = select i1 %i.ec, i64 %i.ee, i64 %i.eg
  %.not.i23 = icmp eq i64 %i.eh, 0
  %i.ei = trunc i64 %i.ef to i8                   ; 2 uses
  br i1 %.not.i23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre35 = load ptr, ptr %i.b, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10
  %i.ej = phi i64 [ %i.ef, %.lr.ph.preheader ], [ %i.fn, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10 ] ; 3 uses
  %1 = phi ptr [ %.pre35, %.lr.ph.preheader ], [ %2, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10 ] ; 3 uses
  %i.ek = phi i8 [ %i.ei, %.lr.ph.preheader ], [ %i.fm, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10 ] ; 2 uses
  %i.el = trunc i8 %i.ek to i1                    ; 2 uses
  %i.em = lshr i8 %i.ek, 1
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.en ; 2 uses
  %i.ep = lshr i64 %i.ej, 1                       ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep ; 2 uses
  %.sroa.sel22.v.sroa.sel.v.sroa.sel.v = select i1 %i.el, ptr %i.eo, ptr %i.eq
  %.sroa.sel22.v.sroa.sel.v.sroa.sel = getelementptr inbounds i8, ptr %.sroa.sel22.v.sroa.sel.v.sroa.sel.v, i64 -1 ; 2 uses
  %i.er = trunc i64 %i.ej to i8
  %i.es = trunc i64 %i.ej to i1                   ; 2 uses
  %i.et = and i64 %i.ep, 127
  %i.eu = select i1 %i.es, i64 %i.et, i64 %i.ep   ; 2 uses
  %i.ev = select i1 %i.es, ptr %i.a, ptr %1
  %i.ew = ptrtoint ptr %.sroa.sel22.v.sroa.sel.v.sroa.sel to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %.neg.i.i7 = sub i64 %i.ex, %i.ew
  %i.ey = add i64 %.neg.i.i7, %i.eu               ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i9, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %.sroa.sel22.v = select i1 %i.el, ptr %i.eo, ptr %i.eq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sroa.sel22.v.sroa.sel.v.sroa.sel, ptr nonnull align 1 %.sroa.sel22.v, i64 %i.ey, i1 false)
  %.pre.i.i8 = load i8, ptr %0, align 8, !tbaa !51
  %.pre34 = load ptr, ptr %i.b, align 8
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i9

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i9:      ; preds = %bb.p, %.lr.ph
  %2 = phi ptr [ %1, %.lr.ph ], [ %.pre34, %bb.p ]
  %i.fa = phi i8 [ %i.er, %.lr.ph ], [ %.pre.i.i8, %bb.p ]
  %i.fb = add nsw i64 %i.eu, -1                   ; 2 uses
  %i.fc = trunc i8 %i.fa to i1
  br i1 %i.fc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i9
  %i.fd = trunc i64 %i.fb to i8
  %i.fe = shl i8 %i.fd, 1
  %i.ff = or disjoint i8 %i.fe, 1                 ; 2 uses
  store i8 %i.ff, ptr %0, align 8
  %.pre34.a = load i64, ptr %0, align 8           ; 2 uses
  %i.fg = trunc i64 %.pre34.a to i8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i9
  %i.fh = load i64, ptr %0, align 8
  %i.fi = shl i64 %i.fb, 1
  %i.fj = and i64 %i.fh, 1
  %i.fk = or disjoint i64 %i.fj, %i.fi            ; 3 uses
  store i64 %i.fk, ptr %0, align 8
  %i.fl = trunc i64 %i.fk to i8                   ; 2 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10: ; preds = %bb.q, %bb.r
  %i.fm = phi i8 [ %i.fg, %bb.q ], [ %i.fl, %bb.r ] ; 2 uses
  %i.fn = phi i64 [ %.pre34.a, %bb.q ], [ %i.fk, %bb.r ] ; 2 uses
  %i.fo = phi i8 [ %i.ff, %bb.q ], [ %i.fl, %bb.r ] ; 2 uses
  %i.fp = trunc i8 %i.fo to i1
  %i.fq = lshr i8 %i.fo, 1
  %i.fr = zext nneg i8 %i.fq to i64
  %i.fs = lshr i64 %i.fn, 1                       ; 2 uses
  %i.ft = select i1 %i.fp, i64 %i.fr, i64 %i.fs
  %.not.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !289

bb.s:                                             ; preds = %._crit_edge, %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit6, %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load i8, ptr %0, align 8, !tbaa !51
  %i.fw = trunc i8 %i.fv to i1
  br i1 %i.fw, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fx = load ptr, ptr %i.b, align 8, !tbaa !61  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !62 ; 2 uses
  %i.ga = icmp ne ptr %i.fx, null
  %i.gb = icmp ugt i64 %i.fz, 23
  %or.cond.i.i = and i1 %i.ga, %i.gb
  br i1 %or.cond.i.i, label %bb.u, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit

bb.u:                                             ; preds = %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.fz) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit: ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  br label %common.resume

._crit_edge:                                      ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10, %.preheader
  %.pre-phi36 = phi i64 [ %i.eg, %.preheader ], [ %i.fs, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10 ]
  %i.gc = phi i8 [ %i.ei, %.preheader ], [ %i.fm, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv.exit10 ] ; 2 uses
  %i.gd = trunc i8 %i.gc to i1
  %i.ge = lshr i8 %i.gc, 1
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = select i1 %i.gd, i64 %i.gf, i64 %.pre-phi36
  %.not.i11 = icmp eq i64 %i.gg, 0
  %i.gh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1363, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_pop_backv, i1 noundef zeroext %.not.i11)
          to label %bb.v unwind label %bb.s       ; 0 uses

bb.v:                                             ; preds = %._crit_edge
  %i.gi = load i8, ptr %0, align 8, !tbaa !51
  %i.gj = trunc i8 %i.gi to i1
  br i1 %i.gj, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit13, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !61  ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !62 ; 2 uses
  %i.gn = icmp ne ptr %i.gk, null
  %i.go = icmp ugt i64 %i.gm, 23
  %or.cond.i.i12 = and i1 %i.gn, %i.go
  br i1 %or.cond.i.i12, label %bb.x, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit13

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gm) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit13

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit13: ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i64, ptr %0, align 8                ; 5 uses
  %i.j = lshr i64 %i.i, 1                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k       ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  %i.n = trunc i64 %i.i to i8
  %i.o = trunc i64 %i.i to i1
  %i.p = lshr i64 %i.i, 1
  %i.q = and i64 %i.p, 127
  %i.r = select i1 %i.o, i64 %i.q, i64 %i.j       ; 2 uses
  %i.s = trunc i64 %i.i to i1
  %i.t = select i1 %i.s, ptr %i.c, ptr %i.h
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = ptrtoint ptr %i.t to i64
  %.neg.i = sub i64 %i.v, %i.u
  %i.w = add i64 %.neg.i, %i.r                    ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.l, i64 %i.w, i1 false)
  %.pre.i = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i:         ; preds = %bb.b, %bb.a
  %i.y = phi i8 [ %i.n, %bb.a ], [ %.pre.i, %bb.b ]
  %i.z = add nsw i64 %i.r, -1                     ; 2 uses
  %i.aa = trunc i8 %i.y to i1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i
  %i.ab = trunc i64 %i.z to i8
  %i.ac = shl i8 %i.ab, 1
  %i.ad = or disjoint i8 %i.ac, 1
  store i8 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE5eraseEPKc.exit

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i
  %i.ae = load i64, ptr %0, align 8
  %i.af = shl i64 %i.z, 1
  %i.ag = and i64 %i.ae, 1
  %i.ah = or disjoint i64 %i.ag, %i.af
  store i64 %i.ah, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE5eraseEPKc.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE5eraseEPKc.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z18test_append_stringv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::basic_string", align 8 ; 31 uses
  %1 = alloca %"class.boost::container::basic_string", align 8 ; 23 uses
  %2 = alloca %"class.boost::container::basic_string", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.c = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 5)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.a
  br i1 %i.c, label %bb.b, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %.noexc.i
  %i.d = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.e = trunc i8 %i.d to i1
  %i.f = lshr i8 %i.d, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = select i1 %i.e, ptr %i.h, ptr %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i: ; preds = %bb.b, %.noexc.i
  %i.n = load i8, ptr %0, align 8, !tbaa !51
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = select i1 %i.o, ptr %i.a, ptr %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.q, ptr noundef nonnull align 1 dereferenceable(5) @__const._Z25test_iterator_constructorv.arr, i64 5, i1 false)
  %.sroa.gep44 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %.sroa.sel46 = select i1 %i.o, ptr %.sroa.gep44, ptr %.sroa.gep45
  store i8 0, ptr %.sroa.sel46, align 1, !tbaa !51
  %i.r = load i8, ptr %0, align 8, !tbaa !51
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i
  store i8 11, ptr %0, align 8
end_hunk_0
