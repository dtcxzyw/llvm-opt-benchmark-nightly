Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/connectedcomponents?download=true
inline.NumInlined: 3211
inline.NumDeleted: 270
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4309) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4310) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068: ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8, !tbaa !32
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068, %bb.k
  %.pn1851 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068 ], [ %i.s, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.m:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %3, 8
  br i1 %i.y, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4311) #16
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073

bb.r:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071, %bb.q
  %.pn1853 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.s:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.b, 1
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i32 %i.n, 1
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = add nsw i64 %i.am, 1                    ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 4611686018427387903
  br i1 %i.ao, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, label %.noexc2074

.noexc2074:                                       ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 1                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !54
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.an
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %.noexc2074, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.as, %.noexc2074 ] ; 2 uses
  %.sroa.03089.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aq, %.noexc2074 ] ; 461 uses
  %i.at = icmp sgt i32 %i.b, 0
  br i1 %i.at, label %.lr.ph3365, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph3365:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ay = icmp sgt i32 %i.n, 0
  br i1 %i.ay, label %.lr.ph.us.preheader, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph.us.preheader:                              ; preds = %.lr.ph3365
  %i.az = zext nneg i32 %i.n to i64               ; 13 uses
  %i.ba = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv3547 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next3548, %._crit_edge.us ] ; 5 uses
  %.017903363.us = phi i16 [ 1, %.lr.ph.us.preheader ], [ %.2.us, %._crit_edge.us ]
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !40 ; 3 uses
  %i.bd = mul i64 %i.bc, %indvars.iv3547
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd ; 21 uses
  %i.bf = sub i64 0, %i.bc                        ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf ; 73 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bf ; 39 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc ; 5 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %i.bl = mul i64 %i.bk, %indvars.iv3547
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 221 uses
  %11 = sub i64 0, %i.bk                          ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.bm, i64 %11
  %i.bn = getelementptr inbounds i8, ptr %12, i64 %11 ; 101 uses
  %.not2024.us = icmp eq i64 %indvars.iv3547, 0   ; 15 uses
  %i.bo = or disjoint i64 %indvars.iv3547, 1
  %i.bp = icmp samesign ult i64 %i.bo, %i.ba      ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.us, %bb.qt
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.qt ] ; 265 uses
  %.13360.us = phi i16 [ %.017903363.us, %.lr.ph.us ], [ %.2.us, %bb.qt ] ; 161 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !32
  %.not1878.us = icmp eq i8 %i.br, 0
  br i1 %.not1878.us, label %bb.jw, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1952.us = icmp eq i64 %indvars.iv, 0       ; 5 uses
  br i1 %.not1952.us, label %.critedge.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !32
  %.not1953.us = icmp eq i8 %i.bu, 0
  br i1 %.not1953.us, label %bb.bq, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.bw = icmp samesign uge i64 %i.bv, %i.az      ; 2 uses
  %or.cond.us = or i1 %.not2024.us, %i.bw
  br i1 %or.cond.us, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32
  %.not2025.us = icmp eq i8 %i.by, 0
  br i1 %.not2025.us, label %bb.ap, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !32
  %.not2035.us = icmp eq i8 %i.ca, 0
  br i1 %.not2035.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -4
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !54
  store i16 %i.cd, ptr %i.cb, align 2, !tbaa !54
  br label %bb.qt

bb.aa:                                            ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !32
  %.not2036.us = icmp eq i8 %i.cf, 0
  br i1 %.not2036.us, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bs
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !32
  %.not2037.us = icmp eq i8 %i.ch, 0
  br i1 %.not2037.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -4
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !54
  store i16 %i.ck, ptr %i.ci, align 2, !tbaa !54
  br label %bb.qt

bb.ad:                                            ; preds = %bb.ab
  %i.cl = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !32
  %.not2038.us = icmp eq i8 %i.cn, 0
  br i1 %.not2038.us, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !32
  %.not2039.us = icmp eq i8 %i.cp, 0
  br i1 %.not2039.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.cl
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !54
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !54
  br label %bb.qt

bb.ag:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !54 ; 4 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.cl
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !54 ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0.i.i.us = phi i16 [ %i.cu, %bb.ag ], [ %i.cz, %bb.ah ] ; 4 uses
  %i.cx = zext i16 %.0.i.i.us to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !54 ; 2 uses
  %i.da = icmp ult i16 %i.cz, %.0.i.i.us
  br i1 %i.da, label %bb.ah, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us: ; preds = %bb.ah
  %.not.i.us = icmp eq i16 %i.cu, %i.cw
  br i1 %.not.i.us, label %bb.ai, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i15.i.us = phi i16 [ %i.dd, %.preheader.i.us ], [ %i.cw, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.db = zext i16 %.0.i15.i.us to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !54 ; 2 uses
  %i.de = icmp ult i16 %i.dd, %.0.i15.i.us
  br i1 %i.de, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i.us, i16 %.0.i15.i.us) ; 3 uses
  %i.df = zext i16 %i.cw to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.df ; 3 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !54 ; 2 uses
  %i.di = icmp ult i16 %i.dh, %i.cw
  br i1 %i.di, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us, %.lr.ph.i.i.us
  %i.dj = phi i16 [ %i.dn, %.lr.ph.i.i.us ], [ %i.dh, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us ] ; 2 uses
  %i.dk = phi ptr [ %i.dm, %.lr.ph.i.i.us ], [ %i.dg, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us ]
  store i16 %spec.select.i.us, ptr %i.dk, align 2, !tbaa !54
  %i.dl = zext i16 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dl ; 3 uses
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !54 ; 2 uses
  %i.do = icmp ult i16 %i.dn, %i.dj
  br i1 %i.do, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us
  %.lcssa.i.i.us = phi ptr [ %i.dg, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i.us ], [ %i.dm, %.lr.ph.i.i.us ]
  store i16 %spec.select.i.us, ptr %.lcssa.i.i.us, align 2, !tbaa !54
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us
  %.1.i2075.us = phi i16 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.dp = zext i16 %i.cu to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dp ; 3 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !54 ; 2 uses
  %i.ds = icmp ult i16 %i.dr, %i.cu
  br i1 %i.ds, label %.lr.ph.i18.i.us, label %.loopexit3204.us

.lr.ph.i18.i.us:                                  ; preds = %bb.ai, %.lr.ph.i18.i.us
  %i.dt = phi i16 [ %i.dx, %.lr.ph.i18.i.us ], [ %i.dr, %bb.ai ] ; 2 uses
  %i.du = phi ptr [ %i.dw, %.lr.ph.i18.i.us ], [ %i.dq, %bb.ai ]
  store i16 %.1.i2075.us, ptr %i.du, align 2, !tbaa !54
  %i.dv = zext i16 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.dv ; 3 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !54 ; 2 uses
  %i.dy = icmp ult i16 %i.dx, %i.dt
  br i1 %i.dy, label %.lr.ph.i18.i.us, label %.loopexit3204.us, !llvm.loop !1

.loopexit3204.us:                                 ; preds = %.lr.ph.i18.i.us, %bb.ai
  %.lcssa.i17.i.us = phi ptr [ %i.dq, %bb.ai ], [ %i.dw, %.lr.ph.i18.i.us ]
  store i16 %.1.i2075.us, ptr %.lcssa.i17.i.us, align 2, !tbaa !54
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2075.us, ptr %i.dz, align 2, !tbaa !54
  br label %bb.qt

bb.aj:                                            ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !54 ; 4 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.cl
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !54 ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i2076.us = phi i16 [ %i.eb, %bb.aj ], [ %i.eg, %bb.ak ] ; 4 uses
  %i.ee = zext i16 %.0.i.i2076.us to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !54 ; 2 uses
  %i.eh = icmp ult i16 %i.eg, %.0.i.i2076.us
  br i1 %i.eh, label %bb.ak, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2077.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2077.us: ; preds = %bb.ak
  %.not.i2078.us = icmp eq i16 %i.eb, %i.ed
  br i1 %.not.i2078.us, label %bb.al, label %.preheader.i2079.us

.preheader.i2079.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2077.us, %.preheader.i2079.us
  %.0.i15.i2080.us = phi i16 [ %i.ek, %.preheader.i2079.us ], [ %i.ed, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2077.us ] ; 3 uses
  %i.ei = zext i16 %.0.i15.i2080.us to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !54 ; 2 uses
  %i.el = icmp ult i16 %i.ek, %.0.i15.i2080.us
  br i1 %i.el, label %.preheader.i2079.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2081.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2081.us: ; preds = %.preheader.i2079.us
  %spec.select.i2082.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2076.us, i16 %.0.i15.i2080.us) ; 3 uses
  %i.em = zext i16 %i.ed to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !54 ; 2 uses
  %i.ep = icmp ult i16 %i.eo, %i.ed
  br i1 %i.ep, label %.lr.ph.i.i2088.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2083.us

.lr.ph.i.i2088.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2081.us, %.lr.ph.i.i2088.us
  %i.eq = phi i16 [ %i.eu, %.lr.ph.i.i2088.us ], [ %i.eo, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2081.us ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4309) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4310) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068: ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8, !tbaa !32
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2070: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068, %bb.k
  %.pn1855 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2068 ], [ %i.s, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.m:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %3, 8
  br i1 %i.y, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4311) #16
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073

bb.r:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071, %bb.q
  %.pn1857 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.s:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.b, 1
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i32 %i.n, 1
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = add nsw i64 %i.am, 1                    ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 2305843009213693951
  br i1 %i.ao, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc2074

.noexc2074:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 2                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !33
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc2074, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.as, %.noexc2074 ] ; 2 uses
  %.sroa.03089.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aq, %.noexc2074 ] ; 460 uses
  %i.at = icmp sgt i32 %i.b, 0
  br i1 %i.at, label %.lr.ph3365, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

.lr.ph3365:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ay = icmp sgt i32 %i.n, 0
  br i1 %i.ay, label %.lr.ph.us.preheader, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

.lr.ph.us.preheader:                              ; preds = %.lr.ph3365
  %i.az = zext nneg i32 %i.n to i64               ; 13 uses
  %i.ba = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv3549 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next3550, %._crit_edge.us ] ; 5 uses
  %.017903363.us = phi i32 [ 1, %.lr.ph.us.preheader ], [ %.2.us, %._crit_edge.us ]
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !40 ; 3 uses
  %i.bd = mul i64 %i.bc, %indvars.iv3549
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd ; 21 uses
  %i.bf = sub i64 0, %i.bc                        ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf ; 73 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bf ; 39 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc ; 5 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %i.bl = mul i64 %i.bk, %indvars.iv3549
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 221 uses
  %11 = sub i64 0, %i.bk                          ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.bm, i64 %11
  %i.bn = getelementptr inbounds i8, ptr %12, i64 %11 ; 101 uses
  %.not2024.us = icmp eq i64 %indvars.iv3549, 0   ; 15 uses
  %i.bo = or disjoint i64 %indvars.iv3549, 1
  %i.bp = icmp samesign ult i64 %i.bo, %i.ba      ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.us, %bb.qt
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.qt ] ; 265 uses
  %.13360.us = phi i32 [ %.017903363.us, %.lr.ph.us ], [ %.2.us, %bb.qt ] ; 161 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !32
  %.not1878.us = icmp eq i8 %i.br, 0
  br i1 %.not1878.us, label %bb.jw, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1952.us = icmp eq i64 %indvars.iv, 0       ; 5 uses
  br i1 %.not1952.us, label %.critedge.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !32
  %.not1953.us = icmp eq i8 %i.bu, 0
  br i1 %.not1953.us, label %bb.bq, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.bw = icmp samesign uge i64 %i.bv, %i.az      ; 2 uses
  %or.cond.us = or i1 %.not2024.us, %i.bw
  br i1 %or.cond.us, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32
  %.not2025.us = icmp eq i8 %i.by, 0
  br i1 %.not2025.us, label %bb.ap, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !32
  %.not2035.us = icmp eq i8 %i.ca, 0
  br i1 %.not2035.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr [4 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !33
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !33
  br label %bb.qt

bb.aa:                                            ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !32
  %.not2036.us = icmp eq i8 %i.cf, 0
  br i1 %.not2036.us, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bs
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !32
  %.not2037.us = icmp eq i8 %i.ch, 0
  br i1 %.not2037.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = getelementptr [4 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !33
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !33
  br label %bb.qt

bb.ad:                                            ; preds = %bb.ab
  %i.cl = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !32
  %.not2038.us = icmp eq i8 %i.cn, 0
  br i1 %.not2038.us, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !32
  %.not2039.us = icmp eq i8 %i.cp, 0
  br i1 %.not2039.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cl
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !33
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !33
  br label %bb.qt

bb.ag:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !33 ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cl
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !33 ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0.i.i.us = phi i32 [ %i.cu, %bb.ag ], [ %i.cz, %bb.ah ] ; 4 uses
  %i.cx = sext i32 %.0.i.i.us to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !33 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %.0.i.i.us
  br i1 %i.da, label %bb.ah, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %bb.ah
  %.not.i.us = icmp eq i32 %i.cu, %i.cw
  br i1 %.not.i.us, label %bb.ai, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.dd, %.preheader.i.us ], [ %i.cw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.db = sext i32 %.0.i18.i.us to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !33 ; 2 uses
  %i.de = icmp slt i32 %i.dd, %.0.i18.i.us
  br i1 %i.de, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.df = sext i32 %i.cw to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.df ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !33 ; 2 uses
  %i.di = icmp slt i32 %i.dh, %i.cw
  br i1 %i.di, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.dj = phi i32 [ %i.dn, %.lr.ph.i.i.us ], [ %i.dh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.dk = phi ptr [ %i.dm, %.lr.ph.i.i.us ], [ %i.dg, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.dk, align 4, !tbaa !33
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dl ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !33 ; 2 uses
  %i.do = icmp slt i32 %i.dn, %i.dj
  br i1 %i.do, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.dg, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.dm, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !33
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i2075.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.dp = sext i32 %i.cu to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dp ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33 ; 2 uses
  %i.ds = icmp slt i32 %i.dr, %i.cu
  br i1 %i.ds, label %.lr.ph.i21.i.us, label %.loopexit3204.us

.lr.ph.i21.i.us:                                  ; preds = %bb.ai, %.lr.ph.i21.i.us
  %i.dt = phi i32 [ %i.dx, %.lr.ph.i21.i.us ], [ %i.dr, %bb.ai ] ; 2 uses
  %i.du = phi ptr [ %i.dw, %.lr.ph.i21.i.us ], [ %i.dq, %bb.ai ]
  store i32 %.1.i2075.us, ptr %i.du, align 4, !tbaa !33
  %i.dv = sext i32 %i.dt to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.dv ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !33 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, %i.dt
  br i1 %i.dy, label %.lr.ph.i21.i.us, label %.loopexit3204.us, !llvm.loop !4

.loopexit3204.us:                                 ; preds = %.lr.ph.i21.i.us, %bb.ai
  %.lcssa.i20.i.us = phi ptr [ %i.dq, %bb.ai ], [ %i.dw, %.lr.ph.i21.i.us ]
  store i32 %.1.i2075.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !33
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2075.us, ptr %i.dz, align 4, !tbaa !33
  br label %bb.qt

bb.aj:                                            ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !33 ; 4 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.cl
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !33 ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i2076.us = phi i32 [ %i.eb, %bb.aj ], [ %i.eg, %bb.ak ] ; 4 uses
  %i.ee = sext i32 %.0.i.i2076.us to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !33 ; 2 uses
  %i.eh = icmp slt i32 %i.eg, %.0.i.i2076.us
  br i1 %i.eh, label %bb.ak, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2077.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2077.us: ; preds = %bb.ak
  %.not.i2078.us = icmp eq i32 %i.eb, %i.ed
  br i1 %.not.i2078.us, label %bb.al, label %.preheader.i2079.us

.preheader.i2079.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2077.us, %.preheader.i2079.us
  %.0.i18.i2080.us = phi i32 [ %i.ek, %.preheader.i2079.us ], [ %i.ed, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2077.us ] ; 3 uses
  %i.ei = sext i32 %.0.i18.i2080.us to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !33 ; 2 uses
  %i.el = icmp slt i32 %i.ek, %.0.i18.i2080.us
  br i1 %i.el, label %.preheader.i2079.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2081.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2081.us: ; preds = %.preheader.i2079.us
  %spec.select.i2082.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2076.us, i32 %.0.i18.i2080.us) ; 3 uses
  %i.em = sext i32 %i.ed to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.em ; 3 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !33 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, %i.ed
  br i1 %i.ep, label %.lr.ph.i.i2088.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2083.us

.lr.ph.i.i2088.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2081.us, %.lr.ph.i.i2088.us
  %i.eq = phi i32 [ %i.eu, %.lr.ph.i.i2088.us ], [ %i.eo, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2081.us ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2cv19connectedcomponents15LabelingBolelliIthNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
  br i1 %.not3366, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.cv, %bb.ce, %bb.ca
  %i.jc = getelementptr i8, ptr %i.ed, i64 %.53192.lcssa
  %i.jd = getelementptr i8, ptr %i.jc, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !32
  %.not3368 = icmp eq i8 %i.je, 0
  br i1 %.not3368, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %.53192.lcssa
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !54
  %i.jh = sext i32 %.lcssa5352 to i64
  %i.ji = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.jh
  store i16 %i.jg, ptr %i.ji, align 2, !tbaa !54
  br label %bb.cw

bb.cd:                                            ; preds = %bb.cb
  %i.jj = sext i32 %.lcssa5352 to i64
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.jj
  store i16 %.103210.ph5033.lcssa5370, ptr %i.jk, align 2, !tbaa !54
  %i.jl = zext i16 %.103210.ph5033.lcssa5370 to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.jl
  store i16 %.103210.ph5033.lcssa5370, ptr %i.jm, align 2, !tbaa !54
  %.not.i3886 = icmp eq i16 %.103210.ph5033.lcssa5370, -1
  br i1 %.not.i3886, label %.invoke6602, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3888

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3888: ; preds = %bb.cd
  %i.jn = add nuw i16 %.103210.ph5033.lcssa5370, 1
  br label %bb.cw

bb.ce:                                            ; preds = %bb.ca
  %i.jo = getelementptr inbounds i8, ptr %i.ed, i64 %i.gu
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !32
  %.not3367 = icmp eq i8 %i.jp, 0
  br i1 %.not3367, label %bb.cf, label %bb.cb

bb.cf:                                            ; preds = %bb.ce
  %i.jq = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.gu
  store i16 0, ptr %i.jq, align 2, !tbaa !54
  br label %bb.cw

bb.cg:                                            ; preds = %._crit_edge5422
  br i1 %.not3379, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cu, %bb.ck, %bb.cg
  %.pre-phi5962.a = phi i64 [ %i.gu, %bb.cu ], [ %i.ek, %bb.ck ], [ %i.ek, %bb.cg ] ; 2 uses
  %.113211 = phi i16 [ %.103210.ph5033.lcssa5370, %bb.cu ], [ %.53205.lcssa, %bb.ck ], [ %.53205.lcssa, %bb.cg ] ; 6 uses
  %i.jr = getelementptr i8, ptr %i.bb, i64 %.pre-phi5962.a
  %i.js = getelementptr i8, ptr %i.jr, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !32
  %.not3378 = icmp eq i8 %i.jt, 0
  %i.ju = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %.pre-phi5962.a
  store i16 %.113211, ptr %i.ju, align 2, !tbaa !54
  %i.jv = zext i16 %.113211 to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.jv
  store i16 %.113211, ptr %i.jw, align 2, !tbaa !54
  %.not.i3892 = icmp eq i16 %.113211, -1          ; 2 uses
  br i1 %.not3378, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %.not.i3892, label %.invoke6602, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3891

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3891: ; preds = %bb.ci
  %i.jx = add nuw i16 %.113211, 1
  br label %bb.cw

bb.cj:                                            ; preds = %bb.ch
  br i1 %.not.i3892, label %.invoke6602, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3894

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3894: ; preds = %bb.cj
  %i.jy = add nuw i16 %.113211, 1
  br label %bb.cw

bb.ck:                                            ; preds = %bb.cg
  %i.jz = getelementptr inbounds i8, ptr %i.ed, i64 %i.ek
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !32
  %.not3375 = icmp eq i8 %i.ka, 0
  br i1 %.not3375, label %bb.cl, label %bb.ch

bb.cl:                                            ; preds = %bb.cv, %bb.cs, %bb.ck
  %.123212 = phi i16 [ %.53205.lcssa, %bb.ck ], [ %.83208, %bb.cs ], [ %.103210.ph5033.lcssa5370, %bb.cv ] ; 11 uses
  %.73194 = phi i32 [ %.lcssa5381, %bb.ck ], [ %i.fv, %bb.cs ], [ %.lcssa5352, %bb.cv ] ; 3 uses
  %i.kb = add nsw i32 %.73194, 1
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.bb, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !32
  %.not3376 = icmp eq i8 %i.ke, 0
  br i1 %.not3376, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kf = sext i32 %.73194 to i64
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.kf
  store i16 %.123212, ptr %i.kg, align 2, !tbaa !54
  %i.kh = zext i16 %.123212 to i64
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.kh
  store i16 %.123212, ptr %i.ki, align 2, !tbaa !54
  %.not.i3895 = icmp eq i16 %.123212, -1
  br i1 %.not.i3895, label %.invoke6602, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3897

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3897: ; preds = %bb.cm
  %i.kj = add nuw i16 %.123212, 1
  br label %bb.cw

bb.cn:                                            ; preds = %bb.cl
  %i.kk = getelementptr inbounds i8, ptr %i.ed, i64 %i.kc
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !32
  %.not3377 = icmp eq i8 %i.kl, 0
  %i.km = sext i32 %.73194 to i64
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.km ; 2 uses
  br i1 %.not3377, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i16 %.123212, ptr %i.kn, align 2, !tbaa !54
  %i.ko = zext i16 %.123212 to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.ko
  store i16 %.123212, ptr %i.kp, align 2, !tbaa !54
  %.not.i3898 = icmp eq i16 %.123212, -1
  br i1 %.not.i3898, label %.invoke6602, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3900

.invoke6602:                                      ; preds = %bb.at, %bb.bm, %bb.az, %bb.ax, %bb.av, %bb.bp, %bb.co, %bb.cm, %bb.cj, %bb.ci, %bb.cd, %bb.bt, %bb.br
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 65535, i32 noundef 65535, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_E15__cv_check__269) #16
          to label %.cont6603 unwind label %bb.au

.cont6603:                                        ; preds = %.invoke6602
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3900: ; preds = %bb.co
  %i.kq = add nuw i16 %.123212, 1
  br label %bb.cw

bb.cp:                                            ; preds = %bb.cn
  store i16 0, ptr %i.kn, align 2, !tbaa !54
  br label %bb.cw

bb.cq:                                            ; preds = %bb.bc
  br i1 %.not3372, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cu, %bb.cs, %bb.cq
  %.pre-phi5963 = phi i64 [ %i.gu, %bb.cu ], [ %i.fx, %bb.cs ], [ %i.fx, %bb.cq ]
  %.133213 = phi i16 [ %.103210.ph5033.lcssa5370, %bb.cu ], [ %.83208, %bb.cs ], [ %.83208, %bb.cq ]
  %i.kr = getelementptr [2 x i8], ptr %i.ef, i64 %.pre-phi5963 ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -4
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !54
  store i16 %i.kt, ptr %i.kr, align 2, !tbaa !54
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  %i.ku = getelementptr inbounds i8, ptr %i.ed, i64 %i.fx
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !32
  %.not3370 = icmp eq i8 %i.kv, 0
  br i1 %.not3370, label %bb.cl, label %bb.cr

bb.ct:                                            ; preds = %.outer._crit_edge
  br i1 %.not3366, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kw = getelementptr i8, ptr %i.ed, i64 %.53192.lcssa
  %i.kx = getelementptr i8, ptr %i.kw, i64 1
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !32
  %.not3365 = icmp eq i8 %i.ky, 0
  br i1 %.not3365, label %bb.ch, label %bb.cr

bb.cv:                                            ; preds = %bb.ct
  %i.kz = getelementptr inbounds i8, ptr %i.ed, i64 %i.gu
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !32
  %.not3364 = icmp eq i8 %i.la, 0
  br i1 %.not3364, label %bb.cl, label %bb.cb

bb.cw:                                            ; preds = %bb.cr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3894, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3891, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3897, %bb.cp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3900, %bb.cf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3888, %bb.cc, %bb.bw, %bb.bz, %bb.by, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3882, %bb.bu, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3885
  %.143214 = phi i16 [ %i.ik, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3882 ], [ %i.iq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3885 ], [ %.53205.lcssa, %bb.bu ], [ %i.jx, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3891 ], [ %i.jy, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3894 ], [ %i.kj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3897 ], [ %i.kq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3900 ], [ %.123212, %bb.cp ], [ %.83208, %bb.bw ], [ %.83208, %bb.by ], [ %.83208, %bb.bz ], [ %.133213, %bb.cr ], [ %.103210.ph5033.lcssa5370, %bb.cf ], [ %.103210.ph5033.lcssa5370, %bb.cc ], [ %i.jn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3888 ] ; 2 uses
  %i.lb = icmp sgt i32 %i.ag, 2
  br i1 %i.lb, label %.lr.ph5447, label %._crit_edge5448

.lr.ph5447:                                       ; preds = %bb.cw
  %i.lc = icmp slt i32 %i.n, 3
  %.not3795.a = icmp eq i32 %i.n, 2
  %i.ld = sext i32 %i.eh to i64                   ; 3 uses
  %i.le = zext nneg i32 %i.ag to i64
  br label %bb.cx

._crit_edge5448:                                  ; preds = %bb.aaw, %bb.cw
  %.153215.lcssa = phi i16 [ %.143214, %bb.cw ], [ %.97, %bb.aaw ] ; 3 uses
  br i1 %i.ai, label %bb.aax, label %bb.ajn

bb.cx:                                            ; preds = %.lr.ph5447, %bb.aaw
  %indvars.iv5896 = phi i64 [ 2, %.lr.ph5447 ], [ %indvars.iv.next5897, %bb.aaw ] ; 3 uses
  %.1532155444 = phi i16 [ %.143214, %.lr.ph5447 ], [ %.97, %bb.aaw ] ; 6 uses
  %i.lf = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.lg = load i64, ptr %i.eb, align 8, !tbaa !40 ; 3 uses
  %i.lh = mul i64 %i.lg, %indvars.iv5896
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lh ; 74 uses
  %i.lj = sub i64 0, %i.lg                        ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %i.li, i64 %i.lj ; 100 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.lj ; 39 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lg ; 51 uses
  %i.ln = load ptr, ptr %i.ee, align 8, !tbaa !55
  %i.lo = load i64, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.lp = mul i64 %i.lo, %indvars.iv5896
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp ; 253 uses
  %11 = sub i64 0, %i.lo                          ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.lq, i64 %11
  %i.lr = getelementptr inbounds i8, ptr %12, i64 %11 ; 125 uses
  %i.ls = load i8, ptr %i.li, align 1, !tbaa !32
  %.not3796 = icmp eq i8 %i.ls, 0                 ; 3 uses
  br i1 %i.lc, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not3795.a, label %bb.vp, label %bb.sz

bb.cz:                                            ; preds = %bb.cx
  br i1 %.not3796, label %bb.ds, label %bb.da

bb.da:                                            ; preds = %bb.ri, %bb.ol, %bb.oc, %bb.cz
  %.163216 = phi i16 [ %.1532155444, %bb.cz ], [ %.503250, %bb.oc ], [ %.513251, %bb.ol ], [ %.593259, %bb.ri ] ; 8 uses
  %.03161 = phi i32 [ 0, %bb.cz ], [ %i.cbf, %bb.oc ], [ %i.cde, %bb.ol ], [ %i.csf, %bb.ri ] ; 7 uses
  %i.lt = add nsw i32 %.03161, 1
  %i.lu = sext i32 %i.lt to i64                   ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %i.lk, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !32
  %.not3506 = icmp eq i8 %i.lw, 0
  br i1 %.not3506, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lx = sext i32 %.03161 to i64                 ; 2 uses
  %i.ly = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !54
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.lx
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !54
  br label %.preheader4980

bb.dc:                                            ; preds = %bb.da
  %i.mb = getelementptr inbounds i8, ptr %i.li, i64 %i.lu
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !32
  %.not3507 = icmp eq i8 %i.mc, 0
  br i1 %.not3507, label %bb.dp, label %bb.dd

bb.dd:                                            ; preds = %bb.du, %bb.dc
  %.173217 = phi i16 [ %.203220, %bb.du ], [ %.163216, %bb.dc ] ; 8 uses
  %.13162 = phi i32 [ %.43165, %bb.du ], [ %.03161, %bb.dc ] ; 6 uses
  %i.md = add nsw i32 %.13162, 2
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.lk, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !32
  %.not3658.a = icmp eq i8 %i.mg, 0
  %i.mh = sext i32 %.13162 to i64                 ; 5 uses
  %i.mi = getelementptr inbounds i8, ptr %i.lk, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !32
  %.not3659 = icmp eq i8 %i.mj, 0                 ; 2 uses
  br i1 %.not3658.a, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %bb.dd
  br i1 %.not3659, label %bb.dl, label %bb.df

bb.df:                                            ; preds = %bb.qk, %bb.kw, %bb.eo, %bb.de
  %.183218 = phi i16 [ %.173217, %bb.de ], [ %.233223, %bb.eo ], [ %.373237.ph, %bb.kw ], [ %.583258.ph, %bb.qk ] ; 2 uses
  %.23163 = phi i32 [ %.13162, %bb.de ], [ %.73168, %bb.eo ], [ %i.bhb, %bb.kw ], [ %i.cpx, %bb.qk ] ; 3 uses
  %i.mk = sext i32 %.23163 to i64                 ; 4 uses
  %i.ml = getelementptr i8, ptr %i.ll, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !32
  %.not3661 = icmp eq i8 %i.mn, 0
  %i.mo = getelementptr [2 x i8], ptr %i.lr, i64 %i.mk ; 3 uses
  br i1 %.not3661, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mp = getelementptr i8, ptr %i.mo, i64 4
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !54
  %i.mr = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mk
  store i16 %i.mq, ptr %i.mr, align 2, !tbaa !54
  br label %.preheader5003

bb.dh:                                            ; preds = %bb.df
  %i.ms = load i16, ptr %i.mo, align 2, !tbaa !54 ; 4 uses
  %i.mt = getelementptr i8, ptr %i.mo, i64 4
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !54 ; 4 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %bb.dh
  %.0.i.i = phi i16 [ %i.ms, %bb.dh ], [ %i.mx, %bb.di ] ; 4 uses
  %i.mv = zext i16 %.0.i.i to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !54 ; 2 uses
  %i.my = icmp ult i16 %i.mx, %.0.i.i
  br i1 %i.my, label %bb.di, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i: ; preds = %bb.di
  %.not.i3901 = icmp eq i16 %i.ms, %i.mu
  br i1 %.not.i3901, label %bb.dj, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i15.i = phi i16 [ %i.nb, %.preheader.i ], [ %i.mu, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.mz = zext i16 %.0.i15.i to i64
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.mz
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !54 ; 2 uses
  %i.nc = icmp ult i16 %i.nb, %.0.i15.i
  br i1 %i.nc, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i: ; preds = %.preheader.i
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %.0.i.i, i16 %.0.i15.i) ; 3 uses
  %i.nd = zext i16 %i.mu to i64
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.nd ; 3 uses
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !54 ; 2 uses
  %i.ng = icmp ult i16 %i.nf, %i.mu
  br i1 %i.ng, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i, %.lr.ph.i.i
  %i.nh = phi i16 [ %i.nl, %.lr.ph.i.i ], [ %i.nf, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ] ; 2 uses
  %i.ni = phi ptr [ %i.nk, %.lr.ph.i.i ], [ %i.ne, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ]
  store i16 %spec.select.i, ptr %i.ni, align 2, !tbaa !54
  %i.nj = zext i16 %i.nh to i64
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.nj ; 3 uses
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !54 ; 2 uses
  %i.nm = icmp ult i16 %i.nl, %i.nh
  br i1 %i.nm, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i
  %.lcssa.i.i = phi ptr [ %i.ne, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ], [ %i.nk, %.lr.ph.i.i ]
  store i16 %spec.select.i, ptr %.lcssa.i.i, align 2, !tbaa !54
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i
  %.1.i = phi i16 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.nn = zext i16 %i.ms to i64
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.nn ; 3 uses
  %i.np = load i16, ptr %i.no, align 2, !tbaa !54 ; 2 uses
  %i.nq = icmp ult i16 %i.np, %i.ms
  br i1 %i.nq, label %.lr.ph.i18.i, label %.loopexit4977.a

.lr.ph.i18.i:                                     ; preds = %bb.dj, %.lr.ph.i18.i
  %i.nr = phi i16 [ %i.nv, %.lr.ph.i18.i ], [ %i.np, %bb.dj ] ; 2 uses
  %i.ns = phi ptr [ %i.nu, %.lr.ph.i18.i ], [ %i.no, %bb.dj ]
  store i16 %.1.i, ptr %i.ns, align 2, !tbaa !54
  %i.nt = zext i16 %i.nr to i64
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.nt ; 3 uses
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !54 ; 2 uses
  %i.nw = icmp ult i16 %i.nv, %i.nr
  br i1 %i.nw, label %.lr.ph.i18.i, label %.loopexit4977.a, !llvm.loop !1

.loopexit4977.a:                                  ; preds = %.lr.ph.i18.i, %bb.dj
  %.lcssa.i17.i = phi ptr [ %i.no, %bb.dj ], [ %i.nu, %.lr.ph.i18.i ]
  store i16 %.1.i, ptr %.lcssa.i17.i, align 2, !tbaa !54
  %i.nx = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mk
  store i16 %.1.i, ptr %i.nx, align 2, !tbaa !54
  br label %.preheader5003

bb.dk:                                            ; preds = %.invoke6604
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.thread4937

bb.dl:                                            ; preds = %bb.de
  %i.nz = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %i.me
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !54
  %i.ob = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mh
  store i16 %i.oa, ptr %i.ob, align 2, !tbaa !54
  br label %.preheader5003

bb.dm:                                            ; preds = %bb.dd
  br i1 %.not3659, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.oc = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %i.mh
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !54
  %i.oe = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mh
  store i16 %i.od, ptr %i.oe, align 2, !tbaa !54
  br label %bb.iw

bb.do:                                            ; preds = %bb.dm
  %i.of = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mh
  store i16 %.173217, ptr %i.of, align 2, !tbaa !54
  %i.og = zext i16 %.173217 to i64
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.og
  store i16 %.173217, ptr %i.oh, align 2, !tbaa !54
  %.not.i3902 = icmp eq i16 %.173217, -1
  br i1 %.not.i3902, label %.invoke6604, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3904

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3904: ; preds = %bb.do
  %i.oi = add nuw i16 %.173217, 1
  br label %bb.ia

bb.dp:                                            ; preds = %bb.dc
  %i.oj = sext i32 %.03161 to i64                 ; 4 uses
  %i.ok = getelementptr inbounds i8, ptr %i.lk, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !32
  %.not3508 = icmp eq i8 %i.ol, 0
  br i1 %.not3508, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.om = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %i.oj
  %i.on = load i16, ptr %i.om, align 2, !tbaa !54
  %i.oo = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.oj
  store i16 %i.on, ptr %i.oo, align 2, !tbaa !54
  br label %bb.oi

bb.dr:                                            ; preds = %bb.dp
  %i.op = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.oj
  store i16 %.163216, ptr %i.op, align 2, !tbaa !54
  %i.oq = zext i16 %.163216 to i64
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.oq
  store i16 %.163216, ptr %i.or, align 2, !tbaa !54
  %.not.i3905 = icmp eq i16 %.163216, -1
  br i1 %.not.i3905, label %.invoke6604, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3907
end_hunk_2
begin_hunk_3_@_ZN2cv19connectedcomponents15LabelingBolelliIthNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
bb.aae:                                           ; preds = %bb.aad
  %i.emu = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.cpf
  %i.emv = load i16, ptr %i.emu, align 2, !tbaa !54
  %i.emw = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.cpf
  store i16 %i.emv, ptr %i.emw, align 2, !tbaa !54
  br label %bb.aaw

bb.aaf:                                           ; preds = %bb.zz
  %i.emx = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.cpf
  %i.emy = load i8, ptr %i.emx, align 1, !tbaa !32
  %.not3774 = icmp eq i8 %i.emy, 0
  br i1 %.not3774, label %bb.vu, label %bb.aag

bb.aag:                                           ; preds = %bb.aaf
  %i.emz = add nsw i32 %.42.lcssa, 3
  %i.ena = zext nneg i32 %i.emz to i64            ; 2 uses
  %i.enb = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ena
  %i.enc = load i8, ptr %i.enb, align 1, !tbaa !32
  %.not3775 = icmp eq i8 %i.enc, 0
  br i1 %.not3775, label %bb.vb, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.end = add nsw i32 %.42.lcssa, 1
  %i.ene = zext nneg i32 %i.end to i64            ; 2 uses
  %i.enf = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ene
  %i.eng = load i8, ptr %i.enf, align 1, !tbaa !32
  %.not3776 = icmp eq i8 %i.eng, 0
  br i1 %.not3776, label %bb.aai, label %bb.yo

bb.aai:                                           ; preds = %bb.aah
  %i.enh = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ene
  %i.eni = load i8, ptr %i.enh, align 1, !tbaa !32
  %.not3777 = icmp eq i8 %i.eni, 0
  br i1 %.not3777, label %bb.vq, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  %i.enj = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ena
  %i.enk = load i8, ptr %i.enj, align 1, !tbaa !32
  %.not3778 = icmp eq i8 %i.enk, 0
  br i1 %.not3778, label %bb.aak, label %._crit_edge5975.a

._crit_edge5975.a:                                ; preds = %bb.aaj
  %.pre6006 = sext i32 %.lcssa5278 to i64
  br label %bb.yp

bb.aak:                                           ; preds = %bb.aaj
  %i.enl = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.cpf
  %i.enm = load i8, ptr %i.enl, align 1, !tbaa !32
  %.not3779 = icmp eq i8 %i.enm, 0
  br i1 %.not3779, label %bb.aam, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.enn = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.cpf
  %i.eno = load i16, ptr %i.enn, align 2, !tbaa !54
  %i.enp = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.cpf
  store i16 %i.eno, ptr %i.enp, align 2, !tbaa !54
  br label %bb.aaw

bb.aam:                                           ; preds = %bb.aak
  %i.enq = sext i32 %.42.lcssa to i64
  %i.enr = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.enq
  %i.ens = load i16, ptr %i.enr, align 2, !tbaa !54
  %i.ent = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.cpf
  store i16 %i.ens, ptr %i.ent, align 2, !tbaa !54
  br label %bb.aaw

bb.aan:                                           ; preds = %bb.rg
  br i1 %.not3741.a, label %bb.aau, label %._crit_edge5974

._crit_edge5974:                                  ; preds = %bb.aan
  %.pre6008 = sext i32 %.43 to i64
  br label %bb.aao

bb.aao:                                           ; preds = %._crit_edge5974, %bb.aav
  %.pre-phi6009 = phi i64 [ %.pre6008, %._crit_edge5974 ], [ %i.epi, %bb.aav ] ; 2 uses
  %i.enu = getelementptr i8, ptr %i.lm, i64 %.pre-phi6009
  %i.env = getelementptr i8, ptr %i.enu, i64 1
  %i.enw = load i8, ptr %i.env, align 1, !tbaa !32
  %.not3737.a = icmp eq i8 %i.enw, 0
  br i1 %.not3737.a, label %bb.vq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.enx = getelementptr i8, ptr %i.lk, i64 %.pre-phi6009 ; 2 uses
  %i.eny = getelementptr i8, ptr %i.enx, i64 3
  %i.enz = load i8, ptr %i.eny, align 1, !tbaa !32
  %.not3738 = icmp eq i8 %i.enz, 0
  br i1 %.not3738, label %bb.vj, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap
  %i.eoa = load i8, ptr %i.enx, align 1, !tbaa !32
  %.not3739 = icmp eq i8 %i.eoa, 0
  br i1 %.not3739, label %bb.aar, label %bb.zt

bb.aar:                                           ; preds = %bb.aaq
  %i.eob = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.csh
  %i.eoc = load i16, ptr %i.eob, align 2, !tbaa !54 ; 4 uses
  br label %bb.aas

bb.aas:                                           ; preds = %bb.aas, %bb.aar
  %.0.i.i4849 = phi i16 [ %i.eoc, %bb.aar ], [ %i.eof, %bb.aas ] ; 4 uses
  %i.eod = zext i16 %.0.i.i4849 to i64
  %i.eoe = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.eod
  %i.eof = load i16, ptr %i.eoe, align 2, !tbaa !54 ; 2 uses
  %i.eog = icmp ult i16 %i.eof, %.0.i.i4849
  br i1 %i.eog, label %bb.aas, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4850, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4850: ; preds = %bb.aas
  %.not.i4851 = icmp eq i16 %i.eoc, %i.cse
  br i1 %.not.i4851, label %bb.aat, label %.preheader.i4852

.preheader.i4852:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4850, %.preheader.i4852
  %.0.i15.i4853 = phi i16 [ %i.eoj, %.preheader.i4852 ], [ %i.cse, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4850 ] ; 3 uses
  %i.eoh = zext i16 %.0.i15.i4853 to i64
  %i.eoi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.eoh
  %i.eoj = load i16, ptr %i.eoi, align 2, !tbaa !54 ; 2 uses
  %i.eok = icmp ult i16 %i.eoj, %.0.i15.i4853
  br i1 %i.eok, label %.preheader.i4852, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4854, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4854: ; preds = %.preheader.i4852
  %spec.select.i4855 = tail call i16 @llvm.umin.i16(i16 %.0.i.i4849, i16 %.0.i15.i4853) ; 3 uses
  %i.eol = zext i16 %i.cse to i64
  %i.eom = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.eol ; 3 uses
  %i.eon = load i16, ptr %i.eom, align 2, !tbaa !54 ; 2 uses
  %i.eoo = icmp ult i16 %i.eon, %i.cse
  br i1 %i.eoo, label %.lr.ph.i.i4861, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4856

.lr.ph.i.i4861:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4854, %.lr.ph.i.i4861
  %i.eop = phi i16 [ %i.eot, %.lr.ph.i.i4861 ], [ %i.eon, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4854 ] ; 2 uses
  %i.eoq = phi ptr [ %i.eos, %.lr.ph.i.i4861 ], [ %i.eom, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4854 ]
  store i16 %spec.select.i4855, ptr %i.eoq, align 2, !tbaa !54
  %i.eor = zext i16 %i.eop to i64
  %i.eos = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.eor ; 3 uses
  %i.eot = load i16, ptr %i.eos, align 2, !tbaa !54 ; 2 uses
  %i.eou = icmp ult i16 %i.eot, %i.eop
  br i1 %i.eou, label %.lr.ph.i.i4861, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4856, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4856: ; preds = %.lr.ph.i.i4861, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4854
  %.lcssa.i.i4857 = phi ptr [ %i.eom, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4854 ], [ %i.eos, %.lr.ph.i.i4861 ]
  store i16 %spec.select.i4855, ptr %.lcssa.i.i4857, align 2, !tbaa !54
  br label %bb.aat

bb.aat:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4856, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4850
  %.1.i4858 = phi i16 [ %spec.select.i4855, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4856 ], [ %.0.i.i4849, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4850 ] ; 3 uses
  %i.eov = zext i16 %i.eoc to i64
  %i.eow = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.eov ; 3 uses
  %i.eox = load i16, ptr %i.eow, align 2, !tbaa !54 ; 2 uses
  %i.eoy = icmp ult i16 %i.eox, %i.eoc
  br i1 %i.eoy, label %.lr.ph.i18.i4860, label %.loopexit4990

.lr.ph.i18.i4860:                                 ; preds = %bb.aat, %.lr.ph.i18.i4860
  %i.eoz = phi i16 [ %i.epd, %.lr.ph.i18.i4860 ], [ %i.eox, %bb.aat ] ; 2 uses
  %i.epa = phi ptr [ %i.epc, %.lr.ph.i18.i4860 ], [ %i.eow, %bb.aat ]
  store i16 %.1.i4858, ptr %i.epa, align 2, !tbaa !54
  %i.epb = zext i16 %i.eoz to i64
  %i.epc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.epb ; 3 uses
  %i.epd = load i16, ptr %i.epc, align 2, !tbaa !54 ; 2 uses
  %i.epe = icmp ult i16 %i.epd, %i.eoz
  br i1 %i.epe, label %.lr.ph.i18.i4860, label %.loopexit4990, !llvm.loop !1

.loopexit4990:                                    ; preds = %.lr.ph.i18.i4860, %bb.aat
  %.lcssa.i17.i4859 = phi ptr [ %i.eow, %bb.aat ], [ %i.epc, %.lr.ph.i18.i4860 ]
  store i16 %.1.i4858, ptr %.lcssa.i17.i4859, align 2, !tbaa !54
  %i.epf = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.csh
  store i16 %.1.i4858, ptr %i.epf, align 2, !tbaa !54
  br label %bb.aaw

bb.aau:                                           ; preds = %bb.aan
  %i.epg = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.csh
  %i.eph = load i8, ptr %i.epg, align 1, !tbaa !32
  %.not3735 = icmp eq i8 %i.eph, 0
  br i1 %.not3735, label %bb.vu, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.epi = sext i32 %.43 to i64                   ; 2 uses
  %i.epj = getelementptr i8, ptr %i.li, i64 %i.epi
  %i.epk = getelementptr i8, ptr %i.epj, i64 3
  %i.epl = load i8, ptr %i.epk, align 1, !tbaa !32
  %.not3736 = icmp eq i8 %i.epl, 0
  br i1 %.not3736, label %bb.ud, label %bb.aao

bb.aaw:                                           ; preds = %bb.aae, %bb.aal, %bb.aam, %bb.zo, %bb.zl, %.loopexit4998, %bb.yz, %bb.yq, %.loopexit4979, %bb.ys, %bb.yw, %bb.yh, %bb.yg, %bb.ym, %bb.yk, %bb.yd, %bb.ya, %.loopexit5002, %bb.xm, %.loopexit5006, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4792, %bb.xs, %bb.xp, %.loopexit5028.a, %.loopexit5027.a, %.loopexit5025.a, %.loopexit5024.a, %.loopexit5023, %bb.xg, %bb.wb, %bb.we, %bb.wf, %bb.wg, %bb.vr, %bb.vx, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4691, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4688, %.loopexit4988, %bb.vo, %bb.uw, %bb.uz, %bb.uy, %bb.uu, %bb.vc, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4671, %bb.ve, %bb.vg, %bb.ur, %.loopexit4989.a, %bb.un, %bb.ue, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4654, %bb.ug, %.loopexit5021, %bb.tu, %.loopexit5022.a, %bb.tx, %bb.tw, %bb.tj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4623, %bb.th, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4617, %bb.tb, %bb.te, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4620, %.loopexit4990, %.loopexit4991.a, %bb.tz
  %.97 = phi i16 [ %.83, %bb.wg ], [ %.593259, %bb.vo ], [ %.513251, %bb.ur ], [ %.373237.ph, %bb.yh ], [ %.493249.ph, %bb.zo ], [ %.81, %bb.vx ], [ %.69, %bb.tz ], [ %i.dfn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4623 ], [ %.333233, %bb.yd ], [ %.70, %bb.ug ], [ %.583258.ph, %bb.vg ], [ %.383238, %bb.yz ], [ %i.pv, %bb.xg ], [ %.663266, %bb.tu ], [ %.96, %.loopexit4991.a ], [ %.593259, %.loopexit4990 ], [ %.313231, %bb.xp ], [ %.613261, %bb.te ], [ %.603260, %bb.tb ], [ %i.deq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4617 ], [ %i.dex, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4620 ], [ %.633263, %bb.th ], [ %.633263, %bb.tj ], [ %.673267, %bb.tw ], [ %.673267, %bb.tx ], [ %.653265, %.loopexit5022.a ], [ %.663266, %.loopexit5021 ], [ %.71, %bb.ue ], [ %i.djt, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4654 ], [ %.73, %bb.un ], [ %.73, %.loopexit4989.a ], [ %.583258.ph, %bb.uu ], [ %.583258.ph, %bb.uw ], [ %.583258.ph, %bb.uy ], [ %.583258.ph, %bb.uz ], [ %.583258.ph, %bb.vc ], [ %.583258.ph, %bb.ve ], [ %i.dnn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4671 ], [ %.76, %.loopexit4988 ], [ %.78, %bb.vr ], [ %i.dpz, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4688 ], [ %i.dql, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4691 ], [ %.84, %bb.we ], [ %.84, %bb.wf ], [ %.83, %bb.wb ], [ %.86, %.loopexit5028.a ], [ %.86, %.loopexit5027.a ], [ %.86, %.loopexit5025.a ], [ %.86, %.loopexit5024.a ], [ %.87, %.loopexit5023 ], [ %.89, %bb.xs ], [ %i.ecp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4792 ], [ %.313231, %.loopexit5006 ], [ %.313231, %bb.xm ], [ %.333233, %.loopexit5002 ], [ %.333233, %bb.ya ], [ %.373237.ph, %bb.yk ], [ %.373237.ph, %bb.ym ], [ %.373237.ph, %bb.yg ], [ %.92, %bb.yq ], [ %.92, %bb.ys ], [ %.92, %.loopexit4979 ], [ %.91, %bb.yw ], [ %.493249.ph, %.loopexit4998 ], [ %.493249.ph, %bb.zl ], [ %.583258.ph, %bb.aam ], [ %.583258.ph, %bb.aal ], [ %.583258.ph, %bb.aae ] ; 2 uses
  %indvars.iv.next5897 = add nuw nsw i64 %indvars.iv5896, 2 ; 2 uses
  %i.epm = icmp samesign ult i64 %indvars.iv.next5897, %i.le
  br i1 %i.epm, label %bb.cx, label %._crit_edge5448, !llvm.loop !198

bb.aax:                                           ; preds = %._crit_edge5448
  %i.epn = add nsw i32 %i.b, -1
  %i.epo = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.epp = load i64, ptr %i.eb, align 8, !tbaa !40 ; 2 uses
  %i.epq = zext nneg i32 %i.epn to i64            ; 2 uses
  %i.epr = mul i64 %i.epp, %i.epq
  %i.eps = getelementptr inbounds nuw i8, ptr %i.epo, i64 %i.epr ; 35 uses
  %i.ept = sub i64 0, %i.epp                      ; 2 uses
  %i.epu = getelementptr inbounds i8, ptr %i.eps, i64 %i.ept ; 53 uses
  %i.epv = getelementptr inbounds i8, ptr %i.epu, i64 %i.ept ; 20 uses
  %i.epw = load ptr, ptr %i.ee, align 8, !tbaa !55
  %i.epx = load i64, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.epy = mul i64 %i.epx, %i.epq
  %i.epz = getelementptr inbounds nuw i8, ptr %i.epw, i64 %i.epy ; 116 uses
  %13 = sub i64 0, %i.epx                         ; 2 uses
  %14 = getelementptr inbounds i8, ptr %i.epz, i64 %13
  %i.eqa = getelementptr inbounds i8, ptr %14, i64 %13 ; 59 uses
  br i1 %.not5418, label %.lr.ph5484.preheader, label %._crit_edge5485

.lr.ph5484.preheader:                             ; preds = %bb.aax
  %i.eqb = zext nneg i32 %i.eh to i64             ; 3 uses
  br label %.lr.ph5484

._crit_edge5485:                                  ; preds = %.backedge4957.a, %bb.aax
  %.98.lcssa = phi i16 [ %.153215.lcssa, %bb.aax ], [ %.98.be, %.backedge4957.a ] ; 4 uses
  %.lcssa5117 = phi i32 [ 0, %bb.aax ], [ %i.etb, %.backedge4957.a ] ; 2 uses
  %i.eqc = icmp sgt i32 %.lcssa5117, %i.eh
  %i.eqd = sext i32 %.lcssa5117 to i64            ; 5 uses
  %i.eqe = getelementptr inbounds i8, ptr %i.eps, i64 %i.eqd
  %i.eqf = load i8, ptr %i.eqe, align 1, !tbaa !32
  %.not3503 = icmp eq i8 %i.eqf, 0                ; 2 uses
  br i1 %i.eqc, label %bb.agl, label %bb.ahh

.lr.ph5484:                                       ; preds = %.lr.ph5484.preheader, %.backedge4957.a
  %i.eqg = phi i32 [ %i.etb, %.backedge4957.a ], [ 0, %.lr.ph5484.preheader ] ; 6 uses
  %.031605482 = phi i32 [ %.03160.be, %.backedge4957.a ], [ -2, %.lr.ph5484.preheader ]
  %.985481 = phi i16 [ %.98.be, %.backedge4957.a ], [ %.153215.lcssa, %.lr.ph5484.preheader ] ; 9 uses
  %i.eqh = sext i32 %i.eqg to i64                 ; 7 uses
  %i.eqi = getelementptr inbounds i8, ptr %i.eps, i64 %i.eqh
  %i.eqj = load i8, ptr %i.eqi, align 1, !tbaa !32
  %.not3382 = icmp eq i8 %i.eqj, 0
  br i1 %.not3382, label %.loopexit4950, label %bb.aay

bb.aay:                                           ; preds = %.lr.ph5484
  %i.eqk = add nsw i32 %.031605482, 3
  %i.eql = sext i32 %i.eqk to i64                 ; 2 uses
  %i.eqm = getelementptr inbounds i8, ptr %i.epu, i64 %i.eql
  %i.eqn = load i8, ptr %i.eqm, align 1, !tbaa !32
  %.not3383 = icmp eq i8 %i.eqn, 0
  br i1 %.not3383, label %bb.aba, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.eqo = getelementptr inbounds [2 x i8], ptr %i.eqa, i64 %i.eqh
  %i.eqp = load i16, ptr %i.eqo, align 2, !tbaa !54
  %i.eqq = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.eqh
  store i16 %i.eqp, ptr %i.eqq, align 2, !tbaa !54
  br label %.preheader4949

bb.aba:                                           ; preds = %bb.aay
  %i.eqr = getelementptr inbounds i8, ptr %i.eps, i64 %i.eql
  %i.eqs = load i8, ptr %i.eqr, align 1, !tbaa !32
  %.not3384 = icmp eq i8 %i.eqs, 0
  br i1 %.not3384, label %bb.abm, label %bb.abb

bb.abb:                                           ; preds = %bb.abp, %bb.aba
  %.99 = phi i16 [ %.101, %bb.abp ], [ %.985481, %bb.aba ] ; 8 uses
  %.1 = phi i32 [ %.3, %bb.abp ], [ %i.eqg, %bb.aba ] ; 6 uses
  %i.eqt = add nsw i32 %.1, 2
  %i.equ = sext i32 %i.eqt to i64                 ; 2 uses
  %i.eqv = getelementptr inbounds i8, ptr %i.epu, i64 %i.equ
  %i.eqw = load i8, ptr %i.eqv, align 1, !tbaa !32
  %.not3442 = icmp eq i8 %i.eqw, 0
  %i.eqx = sext i32 %.1 to i64                    ; 4 uses
  %i.eqy = getelementptr inbounds i8, ptr %i.epu, i64 %i.eqx
  %i.eqz = load i8, ptr %i.eqy, align 1, !tbaa !32
  %.not3443 = icmp eq i8 %i.eqz, 0                ; 2 uses
  br i1 %.not3442, label %bb.abk, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  br i1 %.not3443, label %bb.abj, label %bb.abd

bb.abd:                                           ; preds = %bb.afq, %bb.aeo, %bb.ace, %bb.abc
  %.100 = phi i16 [ %.99, %bb.abc ], [ %.102, %bb.ace ], [ %.110.ph, %bb.aeo ], [ %.113.ph, %bb.afq ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.abc ], [ %i.etq, %bb.ace ], [ %i.fef, %bb.aeo ], [ %i.fix, %bb.afq ] ; 3 uses
  %i.era = sext i32 %.2 to i64                    ; 4 uses
  %i.erb = getelementptr i8, ptr %i.epv, i64 %i.era
  %i.erc = getelementptr i8, ptr %i.erb, i64 1
  %i.erd = load i8, ptr %i.erc, align 1, !tbaa !32
  %.not3463 = icmp eq i8 %i.erd, 0
  %i.ere = getelementptr [2 x i8], ptr %i.eqa, i64 %i.era ; 3 uses
  br i1 %.not3463, label %bb.abf, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  %i.erf = getelementptr i8, ptr %i.ere, i64 4
  %i.erg = load i16, ptr %i.erf, align 2, !tbaa !54
  %i.erh = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.era
  store i16 %i.erg, ptr %i.erh, align 2, !tbaa !54
  br label %.preheader4955

bb.abf:                                           ; preds = %bb.abd
  %i.eri = load i16, ptr %i.ere, align 2, !tbaa !54 ; 4 uses
  %i.erj = getelementptr i8, ptr %i.ere, i64 4
  %i.erk = load i16, ptr %i.erj, align 2, !tbaa !54 ; 4 uses
  br label %bb.abg

bb.abg:                                           ; preds = %bb.abg, %bb.abf
  %.0.i.i4863 = phi i16 [ %i.eri, %bb.abf ], [ %i.ern, %bb.abg ] ; 4 uses
  %i.erl = zext i16 %.0.i.i4863 to i64
  %i.erm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.erl
  %i.ern = load i16, ptr %i.erm, align 2, !tbaa !54 ; 2 uses
  %i.ero = icmp ult i16 %i.ern, %.0.i.i4863
  br i1 %i.ero, label %bb.abg, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4864, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4864: ; preds = %bb.abg
  %.not.i4865 = icmp eq i16 %i.eri, %i.erk
  br i1 %.not.i4865, label %bb.abh, label %.preheader.i4866

.preheader.i4866:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4864, %.preheader.i4866
  %.0.i15.i4867 = phi i16 [ %i.err, %.preheader.i4866 ], [ %i.erk, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4864 ] ; 3 uses
  %i.erp = zext i16 %.0.i15.i4867 to i64
  %i.erq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.erp
  %i.err = load i16, ptr %i.erq, align 2, !tbaa !54 ; 2 uses
  %i.ers = icmp ult i16 %i.err, %.0.i15.i4867
  br i1 %i.ers, label %.preheader.i4866, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4868, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4868: ; preds = %.preheader.i4866
  %spec.select.i4869 = tail call i16 @llvm.umin.i16(i16 %.0.i.i4863, i16 %.0.i15.i4867) ; 3 uses
  %i.ert = zext i16 %i.erk to i64
  %i.eru = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.ert ; 3 uses
  %i.erv = load i16, ptr %i.eru, align 2, !tbaa !54 ; 2 uses
  %i.erw = icmp ult i16 %i.erv, %i.erk
  br i1 %i.erw, label %.lr.ph.i.i4875, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4870

.lr.ph.i.i4875:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4868, %.lr.ph.i.i4875
  %i.erx = phi i16 [ %i.esb, %.lr.ph.i.i4875 ], [ %i.erv, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4868 ] ; 2 uses
  %i.ery = phi ptr [ %i.esa, %.lr.ph.i.i4875 ], [ %i.eru, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4868 ]
  store i16 %spec.select.i4869, ptr %i.ery, align 2, !tbaa !54
  %i.erz = zext i16 %i.erx to i64
  %i.esa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.erz ; 3 uses
  %i.esb = load i16, ptr %i.esa, align 2, !tbaa !54 ; 2 uses
  %i.esc = icmp ult i16 %i.esb, %i.erx
  br i1 %i.esc, label %.lr.ph.i.i4875, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4870, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4870: ; preds = %.lr.ph.i.i4875, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4868
  %.lcssa.i.i4871 = phi ptr [ %i.eru, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4868 ], [ %i.esa, %.lr.ph.i.i4875 ]
  store i16 %spec.select.i4869, ptr %.lcssa.i.i4871, align 2, !tbaa !54
  br label %bb.abh

bb.abh:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4870, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4864
  %.1.i4872 = phi i16 [ %spec.select.i4869, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4870 ], [ %.0.i.i4863, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4864 ] ; 3 uses
  %i.esd = zext i16 %i.eri to i64
  %i.ese = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.esd ; 3 uses
  %i.esf = load i16, ptr %i.ese, align 2, !tbaa !54 ; 2 uses
  %i.esg = icmp ult i16 %i.esf, %i.eri
  br i1 %i.esg, label %.lr.ph.i18.i4874, label %.loopexit4947.a

.lr.ph.i18.i4874:                                 ; preds = %bb.abh, %.lr.ph.i18.i4874
  %i.esh = phi i16 [ %i.esl, %.lr.ph.i18.i4874 ], [ %i.esf, %bb.abh ] ; 2 uses
  %i.esi = phi ptr [ %i.esk, %.lr.ph.i18.i4874 ], [ %i.ese, %bb.abh ]
  store i16 %.1.i4872, ptr %i.esi, align 2, !tbaa !54
  %i.esj = zext i16 %i.esh to i64
  %i.esk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.esj ; 3 uses
  %i.esl = load i16, ptr %i.esk, align 2, !tbaa !54 ; 2 uses
  %i.esm = icmp ult i16 %i.esl, %i.esh
  br i1 %i.esm, label %.lr.ph.i18.i4874, label %.loopexit4947.a, !llvm.loop !1

.loopexit4947.a:                                  ; preds = %.lr.ph.i18.i4874, %bb.abh
  %.lcssa.i17.i4873 = phi ptr [ %i.ese, %bb.abh ], [ %i.esk, %.lr.ph.i18.i4874 ]
  store i16 %.1.i4872, ptr %.lcssa.i17.i4873, align 2, !tbaa !54
  %i.esn = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.era
  store i16 %.1.i4872, ptr %i.esn, align 2, !tbaa !54
  br label %.preheader4955

bb.abi:                                           ; preds = %.invoke6608
  %i.eso = landingpad { ptr, i32 }
          cleanup
  br label %.thread4937

bb.abj:                                           ; preds = %bb.abc
  %i.esp = getelementptr inbounds [2 x i8], ptr %i.eqa, i64 %i.equ
  %i.esq = load i16, ptr %i.esp, align 2, !tbaa !54
  %i.esr = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.eqx
  store i16 %i.esq, ptr %i.esr, align 2, !tbaa !54
  br label %.preheader4955

bb.abk:                                           ; preds = %bb.abb
  br i1 %.not3443, label %bb.abl, label %bb.adk

bb.abl:                                           ; preds = %bb.abk
  %i.ess = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.eqx
  store i16 %.99, ptr %i.ess, align 2, !tbaa !54
  %i.est = zext i16 %.99 to i64
  %i.esu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04932.0, i64 %i.est
  store i16 %.99, ptr %i.esu, align 2, !tbaa !54
  %.not.i4877 = icmp eq i16 %.99, -1
  br i1 %.not.i4877, label %.invoke6608, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4879

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4879: ; preds = %bb.abl
  %i.esv = add nuw i16 %.99, 1
  br label %bb.acu

bb.abm:                                           ; preds = %bb.aba
  %i.esw = getelementptr inbounds i8, ptr %i.epu, i64 %i.eqh
  %i.esx = load i8, ptr %i.esw, align 1, !tbaa !32
  %.not3385 = icmp eq i8 %i.esx, 0
  br i1 %.not3385, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.esy = getelementptr inbounds [2 x i8], ptr %i.eqa, i64 %i.eqh
  %i.esz = load i16, ptr %i.esy, align 2, !tbaa !54
  %i.eta = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.eqh
  store i16 %i.esz, ptr %i.eta, align 2, !tbaa !54
  br label %.backedge4957.a

.backedge4957.a:                                  ; preds = %bb.abn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4882, %bb.acq, %bb.acs, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4888, %bb.add, %bb.aeb, %bb.ael, %bb.afj, %bb.afu, %bb.afv, %bb.agk
  %.98.be = phi i16 [ %.114.ph, %bb.agk ], [ %.107, %bb.aeb ], [ %.105, %bb.add ], [ %.102, %bb.acq ], [ %.102, %bb.acs ], [ %i.exj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4888 ], [ %.110.ph, %bb.ael ], [ %.112, %bb.afj ], [ %.113.ph, %bb.afu ], [ %.113.ph, %bb.afv ], [ %.985481, %bb.abn ], [ %i.etf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4882 ] ; 2 uses
  %.03160.be = phi i32 [ %i.fma, %bb.agk ], [ %i.ezu, %bb.aeb ], [ %i.exk, %bb.add ], [ %i.etq, %bb.acq ], [ %i.etq, %bb.acs ], [ %i.etq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4888 ], [ %i.feb, %bb.ael ], [ %.14, %bb.afj ], [ %i.fix, %bb.afu ], [ %i.fix, %bb.afv ], [ %i.eqg, %bb.abn ], [ %i.eqg, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4882 ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2cv19connectedcomponents15LabelingBolelliIihNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
  br i1 %.not3370, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.cv, %bb.ce, %bb.ca
  %i.jd = getelementptr i8, ptr %i.ed, i64 %.53192.lcssa
  %i.je = getelementptr i8, ptr %i.jd, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !32
  %.not3372 = icmp eq i8 %i.jf, 0
  br i1 %.not3372, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.53192.lcssa
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !33
  %i.ji = sext i32 %.lcssa5352 to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ji
  store i32 %i.jh, ptr %i.jj, align 4, !tbaa !33
  br label %bb.cw

bb.cd:                                            ; preds = %bb.cb
  %i.jk = sext i32 %.lcssa5352 to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.jk
  store i32 %.103210.ph5033.lcssa5370, ptr %i.jl, align 4, !tbaa !33
  %i.jm = sext i32 %.103210.ph5033.lcssa5370 to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.jm
  store i32 %.103210.ph5033.lcssa5370, ptr %i.jn, align 4, !tbaa !33
  %.not.i3886 = icmp eq i32 %.103210.ph5033.lcssa5370, 2147483647
  br i1 %.not.i3886, label %.invoke6603, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3888

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3888: ; preds = %bb.cd
  %i.jo = add nsw i32 %.103210.ph5033.lcssa5370, 1
  br label %bb.cw

bb.ce:                                            ; preds = %bb.ca
  %i.jp = getelementptr inbounds i8, ptr %i.ed, i64 %i.gu
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !32
  %.not3371 = icmp eq i8 %i.jq, 0
  br i1 %.not3371, label %bb.cf, label %bb.cb

bb.cf:                                            ; preds = %bb.ce
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gu
  store i32 0, ptr %i.jr, align 4, !tbaa !33
  br label %bb.cw

bb.cg:                                            ; preds = %._crit_edge5422
  br i1 %.not3383, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cu, %bb.ck, %bb.cg
  %.pre-phi5963.a = phi i64 [ %i.gu, %bb.cu ], [ %i.ek, %bb.ck ], [ %i.ek, %bb.cg ] ; 2 uses
  %.113211 = phi i32 [ %.103210.ph5033.lcssa5370, %bb.cu ], [ %.53205.lcssa, %bb.ck ], [ %.53205.lcssa, %bb.cg ] ; 6 uses
  %i.js = getelementptr i8, ptr %i.bb, i64 %.pre-phi5963.a
  %i.jt = getelementptr i8, ptr %i.js, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !32
  %.not3382 = icmp eq i8 %i.ju, 0
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.pre-phi5963.a
  store i32 %.113211, ptr %i.jv, align 4, !tbaa !33
  %i.jw = sext i32 %.113211 to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.jw
  store i32 %.113211, ptr %i.jx, align 4, !tbaa !33
  %.not.i3892 = icmp eq i32 %.113211, 2147483647  ; 2 uses
  br i1 %.not3382, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %.not.i3892, label %.invoke6603, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3891

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3891: ; preds = %bb.ci
  %i.jy = add nsw i32 %.113211, 1
  br label %bb.cw

bb.cj:                                            ; preds = %bb.ch
  br i1 %.not.i3892, label %.invoke6603, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3894

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3894: ; preds = %bb.cj
  %i.jz = add nsw i32 %.113211, 1
  br label %bb.cw

bb.ck:                                            ; preds = %bb.cg
  %i.ka = getelementptr inbounds i8, ptr %i.ed, i64 %i.ek
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !32
  %.not3379 = icmp eq i8 %i.kb, 0
  br i1 %.not3379, label %bb.cl, label %bb.ch

bb.cl:                                            ; preds = %bb.cv, %bb.cs, %bb.ck
  %.123212 = phi i32 [ %.53205.lcssa, %bb.ck ], [ %.83208, %bb.cs ], [ %.103210.ph5033.lcssa5370, %bb.cv ] ; 11 uses
  %.73194 = phi i32 [ %.lcssa5381, %bb.ck ], [ %i.fv, %bb.cs ], [ %.lcssa5352, %bb.cv ] ; 3 uses
  %i.kc = add nsw i32 %.73194, 1
  %i.kd = sext i32 %i.kc to i64                   ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %i.bb, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !32
  %.not3380 = icmp eq i8 %i.kf, 0
  br i1 %.not3380, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kg = sext i32 %.73194 to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.kg
  store i32 %.123212, ptr %i.kh, align 4, !tbaa !33
  %i.ki = sext i32 %.123212 to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.ki
  store i32 %.123212, ptr %i.kj, align 4, !tbaa !33
  %.not.i3895 = icmp eq i32 %.123212, 2147483647
  br i1 %.not.i3895, label %.invoke6603, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3897

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3897: ; preds = %bb.cm
  %i.kk = add nsw i32 %.123212, 1
  br label %bb.cw

bb.cn:                                            ; preds = %bb.cl
  %i.kl = getelementptr inbounds i8, ptr %i.ed, i64 %i.kd
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !32
  %.not3381 = icmp eq i8 %i.km, 0
  %i.kn = sext i32 %.73194 to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.kn ; 2 uses
  br i1 %.not3381, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i32 %.123212, ptr %i.ko, align 4, !tbaa !33
  %i.kp = sext i32 %.123212 to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.kp
  store i32 %.123212, ptr %i.kq, align 4, !tbaa !33
  %.not.i3898 = icmp eq i32 %.123212, 2147483647
  br i1 %.not.i3898, label %.invoke6603, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3900

.invoke6603:                                      ; preds = %bb.at, %bb.bm, %bb.az, %bb.ax, %bb.av, %bb.bp, %bb.co, %bb.cm, %bb.cj, %bb.ci, %bb.cd, %bb.bt, %bb.br
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
          to label %.cont6604 unwind label %bb.au

.cont6604:                                        ; preds = %.invoke6603
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3900: ; preds = %bb.co
  %i.kr = add nsw i32 %.123212, 1
  br label %bb.cw

bb.cp:                                            ; preds = %bb.cn
  store i32 0, ptr %i.ko, align 4, !tbaa !33
  br label %bb.cw

bb.cq:                                            ; preds = %bb.bc
  br i1 %.not3376, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cu, %bb.cs, %bb.cq
  %.pre-phi5964 = phi i64 [ %i.gu, %bb.cu ], [ %i.fx, %bb.cs ], [ %i.fx, %bb.cq ]
  %.133213 = phi i32 [ %.103210.ph5033.lcssa5370, %bb.cu ], [ %.83208, %bb.cs ], [ %.83208, %bb.cq ]
  %i.ks = getelementptr [4 x i8], ptr %i.ef, i64 %.pre-phi5964 ; 2 uses
  %i.kt = getelementptr i8, ptr %i.ks, i64 -8
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !33
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !33
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  %i.kv = getelementptr inbounds i8, ptr %i.ed, i64 %i.fx
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !32
  %.not3374 = icmp eq i8 %i.kw, 0
  br i1 %.not3374, label %bb.cl, label %bb.cr

bb.ct:                                            ; preds = %.outer._crit_edge
  br i1 %.not3370, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kx = getelementptr i8, ptr %i.ed, i64 %.53192.lcssa
  %i.ky = getelementptr i8, ptr %i.kx, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !32
  %.not3369 = icmp eq i8 %i.kz, 0
  br i1 %.not3369, label %bb.ch, label %bb.cr

bb.cv:                                            ; preds = %bb.ct
  %i.la = getelementptr inbounds i8, ptr %i.ed, i64 %i.gu
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !32
  %.not3368 = icmp eq i8 %i.lb, 0
  br i1 %.not3368, label %bb.cl, label %bb.cb

bb.cw:                                            ; preds = %bb.cr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3894, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3891, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3897, %bb.cp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3900, %bb.cf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3888, %bb.cc, %bb.bw, %bb.bz, %bb.by, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3882, %bb.bu, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3885
  %.143214 = phi i32 [ %i.il, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3882 ], [ %i.ir, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3885 ], [ %.53205.lcssa, %bb.bu ], [ %i.jy, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3891 ], [ %i.jz, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3894 ], [ %i.kk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3897 ], [ %i.kr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3900 ], [ %.123212, %bb.cp ], [ %.83208, %bb.bw ], [ %.83208, %bb.by ], [ %.83208, %bb.bz ], [ %.133213, %bb.cr ], [ %.103210.ph5033.lcssa5370, %bb.cf ], [ %.103210.ph5033.lcssa5370, %bb.cc ], [ %i.jo, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3888 ] ; 2 uses
  %i.lc = icmp sgt i32 %i.ag, 2
  br i1 %i.lc, label %.lr.ph5447, label %._crit_edge5448

.lr.ph5447:                                       ; preds = %bb.cw
  %i.ld = icmp slt i32 %i.n, 3
  %.not3799.a = icmp eq i32 %i.n, 2
  %i.le = sext i32 %i.eh to i64                   ; 3 uses
  %i.lf = zext nneg i32 %i.ag to i64
  br label %bb.cx

._crit_edge5448:                                  ; preds = %bb.aaw, %bb.cw
  %.153215.lcssa = phi i32 [ %.143214, %bb.cw ], [ %.97, %bb.aaw ] ; 3 uses
  br i1 %i.ai, label %bb.aax, label %bb.ajn

bb.cx:                                            ; preds = %.lr.ph5447, %bb.aaw
  %indvars.iv5896 = phi i64 [ 2, %.lr.ph5447 ], [ %indvars.iv.next5897, %bb.aaw ] ; 3 uses
  %.1532155444 = phi i32 [ %.143214, %.lr.ph5447 ], [ %.97, %bb.aaw ] ; 6 uses
  %i.lg = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.lh = load i64, ptr %i.eb, align 8, !tbaa !40 ; 3 uses
  %i.li = mul i64 %i.lh, %indvars.iv5896
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.li ; 74 uses
  %i.lk = sub i64 0, %i.lh                        ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lj, i64 %i.lk ; 100 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 %i.lk ; 39 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lh ; 51 uses
  %i.lo = load ptr, ptr %i.ee, align 8, !tbaa !55
  %i.lp = load i64, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.lq = mul i64 %i.lp, %indvars.iv5896
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lq ; 253 uses
  %11 = sub i64 0, %i.lp                          ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.lr, i64 %11
  %i.ls = getelementptr inbounds i8, ptr %12, i64 %11 ; 125 uses
  %i.lt = load i8, ptr %i.lj, align 1, !tbaa !32
  %.not3800 = icmp eq i8 %i.lt, 0                 ; 3 uses
  br i1 %i.ld, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not3799.a, label %bb.vp, label %bb.sz

bb.cz:                                            ; preds = %bb.cx
  br i1 %.not3800, label %bb.ds, label %bb.da

bb.da:                                            ; preds = %bb.ri, %bb.ol, %bb.oc, %bb.cz
  %.163216 = phi i32 [ %.1532155444, %bb.cz ], [ %.503250, %bb.oc ], [ %.513251, %bb.ol ], [ %.593259, %bb.ri ] ; 8 uses
  %.03161 = phi i32 [ 0, %bb.cz ], [ %i.cbg, %bb.oc ], [ %i.cdf, %bb.ol ], [ %i.csg, %bb.ri ] ; 7 uses
  %i.lu = add nsw i32 %.03161, 1
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.ll, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !32
  %.not3510 = icmp eq i8 %i.lx, 0
  br i1 %.not3510, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ly = sext i32 %.03161 to i64                 ; 2 uses
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !33
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ly
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !33
  br label %.preheader4980

bb.dc:                                            ; preds = %bb.da
  %i.mc = getelementptr inbounds i8, ptr %i.lj, i64 %i.lv
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !32
  %.not3511 = icmp eq i8 %i.md, 0
  br i1 %.not3511, label %bb.dp, label %bb.dd

bb.dd:                                            ; preds = %bb.du, %bb.dc
  %.173217 = phi i32 [ %.203220, %bb.du ], [ %.163216, %bb.dc ] ; 8 uses
  %.13162 = phi i32 [ %.43165, %bb.du ], [ %.03161, %bb.dc ] ; 6 uses
  %i.me = add nsw i32 %.13162, 2
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.ll, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !32
  %.not3662.a = icmp eq i8 %i.mh, 0
  %i.mi = sext i32 %.13162 to i64                 ; 5 uses
  %i.mj = getelementptr inbounds i8, ptr %i.ll, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !32
  %.not3663 = icmp eq i8 %i.mk, 0                 ; 2 uses
  br i1 %.not3662.a, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %bb.dd
  br i1 %.not3663, label %bb.dl, label %bb.df

bb.df:                                            ; preds = %bb.qk, %bb.kw, %bb.eo, %bb.de
  %.183218 = phi i32 [ %.173217, %bb.de ], [ %.233223, %bb.eo ], [ %.373237.ph, %bb.kw ], [ %.583258.ph, %bb.qk ] ; 2 uses
  %.23163 = phi i32 [ %.13162, %bb.de ], [ %.73168, %bb.eo ], [ %i.bhc, %bb.kw ], [ %i.cpy, %bb.qk ] ; 3 uses
  %i.ml = sext i32 %.23163 to i64                 ; 4 uses
  %i.mm = getelementptr i8, ptr %i.lm, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mm, i64 1
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !32
  %.not3665 = icmp eq i8 %i.mo, 0
  %i.mp = getelementptr [4 x i8], ptr %i.ls, i64 %i.ml ; 3 uses
  br i1 %.not3665, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mq = getelementptr i8, ptr %i.mp, i64 8
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !33
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ml
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !33
  br label %.preheader5003

bb.dh:                                            ; preds = %bb.df
  %i.mt = load i32, ptr %i.mp, align 4, !tbaa !33 ; 4 uses
  %i.mu = getelementptr i8, ptr %i.mp, i64 8
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !33 ; 4 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %bb.dh
  %.0.i.i = phi i32 [ %i.mt, %bb.dh ], [ %i.my, %bb.di ] ; 4 uses
  %i.mw = sext i32 %.0.i.i to i64
  %i.mx = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !33 ; 2 uses
  %i.mz = icmp slt i32 %i.my, %.0.i.i
  br i1 %i.mz, label %bb.di, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i: ; preds = %bb.di
  %.not.i3901 = icmp eq i32 %i.mt, %i.mv
  br i1 %.not.i3901, label %bb.dj, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i18.i = phi i32 [ %i.nc, %.preheader.i ], [ %i.mv, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.na = sext i32 %.0.i18.i to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !33 ; 2 uses
  %i.nd = icmp slt i32 %i.nc, %.0.i18.i
  br i1 %i.nd, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i: ; preds = %.preheader.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i) ; 3 uses
  %i.ne = sext i32 %i.mv to i64
  %i.nf = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.ne ; 3 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !33 ; 2 uses
  %i.nh = icmp slt i32 %i.ng, %i.mv
  br i1 %i.nh, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, %.lr.ph.i.i
  %i.ni = phi i32 [ %i.nm, %.lr.ph.i.i ], [ %i.ng, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ] ; 2 uses
  %i.nj = phi ptr [ %i.nl, %.lr.ph.i.i ], [ %i.nf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ]
  store i32 %spec.select.i, ptr %i.nj, align 4, !tbaa !33
  %i.nk = sext i32 %i.ni to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.nk ; 3 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !33 ; 2 uses
  %i.nn = icmp slt i32 %i.nm, %i.ni
  br i1 %i.nn, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i
  %.lcssa.i.i = phi ptr [ %i.nf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ], [ %i.nl, %.lr.ph.i.i ]
  store i32 %spec.select.i, ptr %.lcssa.i.i, align 4, !tbaa !33
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i
  %.1.i = phi i32 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.no = sext i32 %i.mt to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.no ; 3 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !33 ; 2 uses
  %i.nr = icmp slt i32 %i.nq, %i.mt
  br i1 %i.nr, label %.lr.ph.i21.i, label %.loopexit4977.a

.lr.ph.i21.i:                                     ; preds = %bb.dj, %.lr.ph.i21.i
  %i.ns = phi i32 [ %i.nw, %.lr.ph.i21.i ], [ %i.nq, %bb.dj ] ; 2 uses
  %i.nt = phi ptr [ %i.nv, %.lr.ph.i21.i ], [ %i.np, %bb.dj ]
  store i32 %.1.i, ptr %i.nt, align 4, !tbaa !33
  %i.nu = sext i32 %i.ns to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.nu ; 3 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !33 ; 2 uses
  %i.nx = icmp slt i32 %i.nw, %i.ns
  br i1 %i.nx, label %.lr.ph.i21.i, label %.loopexit4977.a, !llvm.loop !4

.loopexit4977.a:                                  ; preds = %.lr.ph.i21.i, %bb.dj
  %.lcssa.i20.i = phi ptr [ %i.np, %bb.dj ], [ %i.nv, %.lr.ph.i21.i ]
  store i32 %.1.i, ptr %.lcssa.i20.i, align 4, !tbaa !33
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ml
  store i32 %.1.i, ptr %i.ny, align 4, !tbaa !33
  br label %.preheader5003

bb.dk:                                            ; preds = %.invoke6605
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %.thread4937

bb.dl:                                            ; preds = %bb.de
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.mf
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !33
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.mi
  store i32 %i.ob, ptr %i.oc, align 4, !tbaa !33
  br label %.preheader5003

bb.dm:                                            ; preds = %bb.dd
  br i1 %.not3663, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.od = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.mi
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !33
  %i.of = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.mi
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !33
  br label %bb.iw

bb.do:                                            ; preds = %bb.dm
  %i.og = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.mi
  store i32 %.173217, ptr %i.og, align 4, !tbaa !33
  %i.oh = sext i32 %.173217 to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.oh
  store i32 %.173217, ptr %i.oi, align 4, !tbaa !33
  %.not.i3902 = icmp eq i32 %.173217, 2147483647
  br i1 %.not.i3902, label %.invoke6605, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3904

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3904: ; preds = %bb.do
  %i.oj = add nsw i32 %.173217, 1
  br label %bb.ia

bb.dp:                                            ; preds = %bb.dc
  %i.ok = sext i32 %.03161 to i64                 ; 4 uses
  %i.ol = getelementptr inbounds i8, ptr %i.ll, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !32
  %.not3512 = icmp eq i8 %i.om, 0
  br i1 %.not3512, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.on = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.ok
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !33
  %i.op = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ok
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !33
  br label %bb.oi

bb.dr:                                            ; preds = %bb.dp
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ok
  store i32 %.163216, ptr %i.oq, align 4, !tbaa !33
  %i.or = sext i32 %.163216 to i64
  %i.os = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.or
  store i32 %.163216, ptr %i.os, align 4, !tbaa !33
  %.not.i3905 = icmp eq i32 %.163216, 2147483647
  br i1 %.not.i3905, label %.invoke6605, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3907
end_hunk_4
begin_hunk_5_@_ZN2cv19connectedcomponents15LabelingBolelliIihNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
bb.aae:                                           ; preds = %bb.aad
  %i.emv = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.cpg
  %i.emw = load i32, ptr %i.emv, align 4, !tbaa !33
  %i.emx = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.cpg
  store i32 %i.emw, ptr %i.emx, align 4, !tbaa !33
  br label %bb.aaw

bb.aaf:                                           ; preds = %bb.zz
  %i.emy = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.cpg
  %i.emz = load i8, ptr %i.emy, align 1, !tbaa !32
  %.not3778 = icmp eq i8 %i.emz, 0
  br i1 %.not3778, label %bb.vu, label %bb.aag

bb.aag:                                           ; preds = %bb.aaf
  %i.ena = add nsw i32 %.42.lcssa, 3
  %i.enb = zext nneg i32 %i.ena to i64            ; 2 uses
  %i.enc = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.enb
  %i.end = load i8, ptr %i.enc, align 1, !tbaa !32
  %.not3779 = icmp eq i8 %i.end, 0
  br i1 %.not3779, label %bb.vb, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.ene = add nsw i32 %.42.lcssa, 1
  %i.enf = zext nneg i32 %i.ene to i64            ; 2 uses
  %i.eng = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.enf
  %i.enh = load i8, ptr %i.eng, align 1, !tbaa !32
  %.not3780 = icmp eq i8 %i.enh, 0
  br i1 %.not3780, label %bb.aai, label %bb.yo

bb.aai:                                           ; preds = %bb.aah
  %i.eni = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.enf
  %i.enj = load i8, ptr %i.eni, align 1, !tbaa !32
  %.not3781 = icmp eq i8 %i.enj, 0
  br i1 %.not3781, label %bb.vq, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  %i.enk = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.enb
  %i.enl = load i8, ptr %i.enk, align 1, !tbaa !32
  %.not3782 = icmp eq i8 %i.enl, 0
  br i1 %.not3782, label %bb.aak, label %._crit_edge5976.a

._crit_edge5976.a:                                ; preds = %bb.aaj
  %.pre6007 = sext i32 %.lcssa5278 to i64
  br label %bb.yp

bb.aak:                                           ; preds = %bb.aaj
  %i.enm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.cpg
  %i.enn = load i8, ptr %i.enm, align 1, !tbaa !32
  %.not3783 = icmp eq i8 %i.enn, 0
  br i1 %.not3783, label %bb.aam, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.eno = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.cpg
  %i.enp = load i32, ptr %i.eno, align 4, !tbaa !33
  %i.enq = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.cpg
  store i32 %i.enp, ptr %i.enq, align 4, !tbaa !33
  br label %bb.aaw

bb.aam:                                           ; preds = %bb.aak
  %i.enr = sext i32 %.42.lcssa to i64
  %i.ens = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.enr
  %i.ent = load i32, ptr %i.ens, align 4, !tbaa !33
  %i.enu = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.cpg
  store i32 %i.ent, ptr %i.enu, align 4, !tbaa !33
  br label %bb.aaw

bb.aan:                                           ; preds = %bb.rg
  br i1 %.not3745.a, label %bb.aau, label %._crit_edge5975

._crit_edge5975:                                  ; preds = %bb.aan
  %.pre6009 = sext i32 %.43 to i64
  br label %bb.aao

bb.aao:                                           ; preds = %._crit_edge5975, %bb.aav
  %.pre-phi6010 = phi i64 [ %.pre6009, %._crit_edge5975 ], [ %i.epj, %bb.aav ] ; 2 uses
  %i.env = getelementptr i8, ptr %i.ln, i64 %.pre-phi6010
  %i.enw = getelementptr i8, ptr %i.env, i64 1
  %i.enx = load i8, ptr %i.enw, align 1, !tbaa !32
  %.not3741.a = icmp eq i8 %i.enx, 0
  br i1 %.not3741.a, label %bb.vq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.eny = getelementptr i8, ptr %i.ll, i64 %.pre-phi6010 ; 2 uses
  %i.enz = getelementptr i8, ptr %i.eny, i64 3
  %i.eoa = load i8, ptr %i.enz, align 1, !tbaa !32
  %.not3742 = icmp eq i8 %i.eoa, 0
  br i1 %.not3742, label %bb.vj, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap
  %i.eob = load i8, ptr %i.eny, align 1, !tbaa !32
  %.not3743 = icmp eq i8 %i.eob, 0
  br i1 %.not3743, label %bb.aar, label %bb.zt

bb.aar:                                           ; preds = %bb.aaq
  %i.eoc = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.csi
  %i.eod = load i32, ptr %i.eoc, align 4, !tbaa !33 ; 4 uses
  br label %bb.aas

bb.aas:                                           ; preds = %bb.aas, %bb.aar
  %.0.i.i4849 = phi i32 [ %i.eod, %bb.aar ], [ %i.eog, %bb.aas ] ; 4 uses
  %i.eoe = sext i32 %.0.i.i4849 to i64
  %i.eof = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.eoe
  %i.eog = load i32, ptr %i.eof, align 4, !tbaa !33 ; 2 uses
  %i.eoh = icmp slt i32 %i.eog, %.0.i.i4849
  br i1 %i.eoh, label %bb.aas, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4850, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4850: ; preds = %bb.aas
  %.not.i4851 = icmp eq i32 %i.eod, %i.csf
  br i1 %.not.i4851, label %bb.aat, label %.preheader.i4852

.preheader.i4852:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4850, %.preheader.i4852
  %.0.i18.i4853 = phi i32 [ %i.eok, %.preheader.i4852 ], [ %i.csf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4850 ] ; 3 uses
  %i.eoi = sext i32 %.0.i18.i4853 to i64
  %i.eoj = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.eoi
  %i.eok = load i32, ptr %i.eoj, align 4, !tbaa !33 ; 2 uses
  %i.eol = icmp slt i32 %i.eok, %.0.i18.i4853
  br i1 %i.eol, label %.preheader.i4852, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4854, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4854: ; preds = %.preheader.i4852
  %spec.select.i4855 = tail call i32 @llvm.smin.i32(i32 %.0.i.i4849, i32 %.0.i18.i4853) ; 3 uses
  %i.eom = sext i32 %i.csf to i64
  %i.eon = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.eom ; 3 uses
  %i.eoo = load i32, ptr %i.eon, align 4, !tbaa !33 ; 2 uses
  %i.eop = icmp slt i32 %i.eoo, %i.csf
  br i1 %i.eop, label %.lr.ph.i.i4861, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4856

.lr.ph.i.i4861:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4854, %.lr.ph.i.i4861
  %i.eoq = phi i32 [ %i.eou, %.lr.ph.i.i4861 ], [ %i.eoo, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4854 ] ; 2 uses
  %i.eor = phi ptr [ %i.eot, %.lr.ph.i.i4861 ], [ %i.eon, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4854 ]
  store i32 %spec.select.i4855, ptr %i.eor, align 4, !tbaa !33
  %i.eos = sext i32 %i.eoq to i64
  %i.eot = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.eos ; 3 uses
  %i.eou = load i32, ptr %i.eot, align 4, !tbaa !33 ; 2 uses
  %i.eov = icmp slt i32 %i.eou, %i.eoq
  br i1 %i.eov, label %.lr.ph.i.i4861, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4856, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4856: ; preds = %.lr.ph.i.i4861, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4854
  %.lcssa.i.i4857 = phi ptr [ %i.eon, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4854 ], [ %i.eot, %.lr.ph.i.i4861 ]
  store i32 %spec.select.i4855, ptr %.lcssa.i.i4857, align 4, !tbaa !33
  br label %bb.aat

bb.aat:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4856, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4850
  %.1.i4858 = phi i32 [ %spec.select.i4855, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4856 ], [ %.0.i.i4849, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4850 ] ; 3 uses
  %i.eow = sext i32 %i.eod to i64
  %i.eox = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.eow ; 3 uses
  %i.eoy = load i32, ptr %i.eox, align 4, !tbaa !33 ; 2 uses
  %i.eoz = icmp slt i32 %i.eoy, %i.eod
  br i1 %i.eoz, label %.lr.ph.i21.i4860, label %.loopexit4990

.lr.ph.i21.i4860:                                 ; preds = %bb.aat, %.lr.ph.i21.i4860
  %i.epa = phi i32 [ %i.epe, %.lr.ph.i21.i4860 ], [ %i.eoy, %bb.aat ] ; 2 uses
  %i.epb = phi ptr [ %i.epd, %.lr.ph.i21.i4860 ], [ %i.eox, %bb.aat ]
  store i32 %.1.i4858, ptr %i.epb, align 4, !tbaa !33
  %i.epc = sext i32 %i.epa to i64
  %i.epd = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.epc ; 3 uses
  %i.epe = load i32, ptr %i.epd, align 4, !tbaa !33 ; 2 uses
  %i.epf = icmp slt i32 %i.epe, %i.epa
  br i1 %i.epf, label %.lr.ph.i21.i4860, label %.loopexit4990, !llvm.loop !4

.loopexit4990:                                    ; preds = %.lr.ph.i21.i4860, %bb.aat
  %.lcssa.i20.i4859 = phi ptr [ %i.eox, %bb.aat ], [ %i.epd, %.lr.ph.i21.i4860 ]
  store i32 %.1.i4858, ptr %.lcssa.i20.i4859, align 4, !tbaa !33
  %i.epg = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.csi
  store i32 %.1.i4858, ptr %i.epg, align 4, !tbaa !33
  br label %bb.aaw

bb.aau:                                           ; preds = %bb.aan
  %i.eph = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.csi
  %i.epi = load i8, ptr %i.eph, align 1, !tbaa !32
  %.not3739 = icmp eq i8 %i.epi, 0
  br i1 %.not3739, label %bb.vu, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.epj = sext i32 %.43 to i64                   ; 2 uses
  %i.epk = getelementptr i8, ptr %i.lj, i64 %i.epj
  %i.epl = getelementptr i8, ptr %i.epk, i64 3
  %i.epm = load i8, ptr %i.epl, align 1, !tbaa !32
  %.not3740 = icmp eq i8 %i.epm, 0
  br i1 %.not3740, label %bb.ud, label %bb.aao

bb.aaw:                                           ; preds = %bb.aae, %bb.aal, %bb.aam, %bb.zo, %bb.zl, %.loopexit4998, %bb.yz, %bb.yq, %.loopexit4979, %bb.ys, %bb.yw, %bb.yh, %bb.yg, %bb.ym, %bb.yk, %bb.yd, %bb.ya, %.loopexit5002, %bb.xm, %.loopexit5006, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4792, %bb.xs, %bb.xp, %.loopexit5028.a, %.loopexit5027.a, %.loopexit5025.a, %.loopexit5024.a, %.loopexit5023, %bb.xg, %bb.wb, %bb.we, %bb.wf, %bb.wg, %bb.vr, %bb.vx, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4691, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4688, %.loopexit4988, %bb.vo, %bb.uw, %bb.uz, %bb.uy, %bb.uu, %bb.vc, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4671, %bb.ve, %bb.vg, %bb.ur, %.loopexit4989.a, %bb.un, %bb.ue, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4654, %bb.ug, %.loopexit5021, %bb.tu, %.loopexit5022.a, %bb.tx, %bb.tw, %bb.tj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4623, %bb.th, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4617, %bb.tb, %bb.te, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4620, %.loopexit4990, %.loopexit4991.a, %bb.tz
  %.97 = phi i32 [ %.83, %bb.wg ], [ %.593259, %bb.vo ], [ %.513251, %bb.ur ], [ %.373237.ph, %bb.yh ], [ %.493249.ph, %bb.zo ], [ %.81, %bb.vx ], [ %.69, %bb.tz ], [ %i.dfo, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4623 ], [ %.333233, %bb.yd ], [ %.70, %bb.ug ], [ %.583258.ph, %bb.vg ], [ %.383238, %bb.yz ], [ %i.pw, %bb.xg ], [ %.663266, %bb.tu ], [ %.96, %.loopexit4991.a ], [ %.593259, %.loopexit4990 ], [ %.313231, %bb.xp ], [ %.613261, %bb.te ], [ %.603260, %bb.tb ], [ %i.der, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4617 ], [ %i.dey, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4620 ], [ %.633263, %bb.th ], [ %.633263, %bb.tj ], [ %.673267, %bb.tw ], [ %.673267, %bb.tx ], [ %.653265, %.loopexit5022.a ], [ %.663266, %.loopexit5021 ], [ %.71, %bb.ue ], [ %i.dju, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4654 ], [ %.73, %bb.un ], [ %.73, %.loopexit4989.a ], [ %.583258.ph, %bb.uu ], [ %.583258.ph, %bb.uw ], [ %.583258.ph, %bb.uy ], [ %.583258.ph, %bb.uz ], [ %.583258.ph, %bb.vc ], [ %.583258.ph, %bb.ve ], [ %i.dno, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4671 ], [ %.76, %.loopexit4988 ], [ %.78, %bb.vr ], [ %i.dqa, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4688 ], [ %i.dqm, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4691 ], [ %.84, %bb.we ], [ %.84, %bb.wf ], [ %.83, %bb.wb ], [ %.86, %.loopexit5028.a ], [ %.86, %.loopexit5027.a ], [ %.86, %.loopexit5025.a ], [ %.86, %.loopexit5024.a ], [ %.87, %.loopexit5023 ], [ %.89, %bb.xs ], [ %i.ecq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4792 ], [ %.313231, %.loopexit5006 ], [ %.313231, %bb.xm ], [ %.333233, %.loopexit5002 ], [ %.333233, %bb.ya ], [ %.373237.ph, %bb.yk ], [ %.373237.ph, %bb.ym ], [ %.373237.ph, %bb.yg ], [ %.92, %bb.yq ], [ %.92, %bb.ys ], [ %.92, %.loopexit4979 ], [ %.91, %bb.yw ], [ %.493249.ph, %.loopexit4998 ], [ %.493249.ph, %bb.zl ], [ %.583258.ph, %bb.aam ], [ %.583258.ph, %bb.aal ], [ %.583258.ph, %bb.aae ] ; 2 uses
  %indvars.iv.next5897 = add nuw nsw i64 %indvars.iv5896, 2 ; 2 uses
  %i.epn = icmp samesign ult i64 %indvars.iv.next5897, %i.lf
  br i1 %i.epn, label %bb.cx, label %._crit_edge5448, !llvm.loop !202

bb.aax:                                           ; preds = %._crit_edge5448
  %i.epo = add nsw i32 %i.b, -1
  %i.epp = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.epq = load i64, ptr %i.eb, align 8, !tbaa !40 ; 2 uses
  %i.epr = zext nneg i32 %i.epo to i64            ; 2 uses
  %i.eps = mul i64 %i.epq, %i.epr
  %i.ept = getelementptr inbounds nuw i8, ptr %i.epp, i64 %i.eps ; 35 uses
  %i.epu = sub i64 0, %i.epq                      ; 2 uses
  %i.epv = getelementptr inbounds i8, ptr %i.ept, i64 %i.epu ; 53 uses
  %i.epw = getelementptr inbounds i8, ptr %i.epv, i64 %i.epu ; 20 uses
  %i.epx = load ptr, ptr %i.ee, align 8, !tbaa !55
  %i.epy = load i64, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.epz = mul i64 %i.epy, %i.epr
  %i.eqa = getelementptr inbounds nuw i8, ptr %i.epx, i64 %i.epz ; 116 uses
  %13 = sub i64 0, %i.epy                         ; 2 uses
  %14 = getelementptr inbounds i8, ptr %i.eqa, i64 %13
  %i.eqb = getelementptr inbounds i8, ptr %14, i64 %13 ; 59 uses
  br i1 %.not5418, label %.lr.ph5484.preheader, label %._crit_edge5485

.lr.ph5484.preheader:                             ; preds = %bb.aax
  %i.eqc = zext nneg i32 %i.eh to i64             ; 3 uses
  br label %.lr.ph5484

._crit_edge5485:                                  ; preds = %.backedge4957.a, %bb.aax
  %.98.lcssa = phi i32 [ %.153215.lcssa, %bb.aax ], [ %.98.be, %.backedge4957.a ] ; 4 uses
  %.lcssa5117 = phi i32 [ 0, %bb.aax ], [ %i.etc, %.backedge4957.a ] ; 2 uses
  %i.eqd = icmp sgt i32 %.lcssa5117, %i.eh
  %i.eqe = sext i32 %.lcssa5117 to i64            ; 5 uses
  %i.eqf = getelementptr inbounds i8, ptr %i.ept, i64 %i.eqe
  %i.eqg = load i8, ptr %i.eqf, align 1, !tbaa !32
  %.not3507 = icmp eq i8 %i.eqg, 0                ; 2 uses
  br i1 %i.eqd, label %bb.agl, label %bb.ahh

.lr.ph5484:                                       ; preds = %.lr.ph5484.preheader, %.backedge4957.a
  %i.eqh = phi i32 [ %i.etc, %.backedge4957.a ], [ 0, %.lr.ph5484.preheader ] ; 6 uses
  %.031605482 = phi i32 [ %.03160.be, %.backedge4957.a ], [ -2, %.lr.ph5484.preheader ]
  %.985481 = phi i32 [ %.98.be, %.backedge4957.a ], [ %.153215.lcssa, %.lr.ph5484.preheader ] ; 9 uses
  %i.eqi = sext i32 %i.eqh to i64                 ; 7 uses
  %i.eqj = getelementptr inbounds i8, ptr %i.ept, i64 %i.eqi
  %i.eqk = load i8, ptr %i.eqj, align 1, !tbaa !32
  %.not3386 = icmp eq i8 %i.eqk, 0
  br i1 %.not3386, label %.loopexit4950, label %bb.aay

bb.aay:                                           ; preds = %.lr.ph5484
  %i.eql = add nsw i32 %.031605482, 3
  %i.eqm = sext i32 %i.eql to i64                 ; 2 uses
  %i.eqn = getelementptr inbounds i8, ptr %i.epv, i64 %i.eqm
  %i.eqo = load i8, ptr %i.eqn, align 1, !tbaa !32
  %.not3387 = icmp eq i8 %i.eqo, 0
  br i1 %.not3387, label %bb.aba, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.eqp = getelementptr inbounds [4 x i8], ptr %i.eqb, i64 %i.eqi
  %i.eqq = load i32, ptr %i.eqp, align 4, !tbaa !33
  %i.eqr = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.eqi
  store i32 %i.eqq, ptr %i.eqr, align 4, !tbaa !33
  br label %.preheader4949

bb.aba:                                           ; preds = %bb.aay
  %i.eqs = getelementptr inbounds i8, ptr %i.ept, i64 %i.eqm
  %i.eqt = load i8, ptr %i.eqs, align 1, !tbaa !32
  %.not3388 = icmp eq i8 %i.eqt, 0
  br i1 %.not3388, label %bb.abm, label %bb.abb

bb.abb:                                           ; preds = %bb.abp, %bb.aba
  %.99 = phi i32 [ %.101, %bb.abp ], [ %.985481, %bb.aba ] ; 8 uses
  %.1 = phi i32 [ %.3, %bb.abp ], [ %i.eqh, %bb.aba ] ; 6 uses
  %i.equ = add nsw i32 %.1, 2
  %i.eqv = sext i32 %i.equ to i64                 ; 2 uses
  %i.eqw = getelementptr inbounds i8, ptr %i.epv, i64 %i.eqv
  %i.eqx = load i8, ptr %i.eqw, align 1, !tbaa !32
  %.not3446 = icmp eq i8 %i.eqx, 0
  %i.eqy = sext i32 %.1 to i64                    ; 4 uses
  %i.eqz = getelementptr inbounds i8, ptr %i.epv, i64 %i.eqy
  %i.era = load i8, ptr %i.eqz, align 1, !tbaa !32
  %.not3447 = icmp eq i8 %i.era, 0                ; 2 uses
  br i1 %.not3446, label %bb.abk, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  br i1 %.not3447, label %bb.abj, label %bb.abd

bb.abd:                                           ; preds = %bb.afq, %bb.aeo, %bb.ace, %bb.abc
  %.100 = phi i32 [ %.99, %bb.abc ], [ %.102, %bb.ace ], [ %.110.ph, %bb.aeo ], [ %.113.ph, %bb.afq ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.abc ], [ %i.etr, %bb.ace ], [ %i.feg, %bb.aeo ], [ %i.fiy, %bb.afq ] ; 3 uses
  %i.erb = sext i32 %.2 to i64                    ; 4 uses
  %i.erc = getelementptr i8, ptr %i.epw, i64 %i.erb
  %i.erd = getelementptr i8, ptr %i.erc, i64 1
  %i.ere = load i8, ptr %i.erd, align 1, !tbaa !32
  %.not3467 = icmp eq i8 %i.ere, 0
  %i.erf = getelementptr [4 x i8], ptr %i.eqb, i64 %i.erb ; 3 uses
  br i1 %.not3467, label %bb.abf, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  %i.erg = getelementptr i8, ptr %i.erf, i64 8
  %i.erh = load i32, ptr %i.erg, align 4, !tbaa !33
  %i.eri = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.erb
  store i32 %i.erh, ptr %i.eri, align 4, !tbaa !33
  br label %.preheader4955

bb.abf:                                           ; preds = %bb.abd
  %i.erj = load i32, ptr %i.erf, align 4, !tbaa !33 ; 4 uses
  %i.erk = getelementptr i8, ptr %i.erf, i64 8
  %i.erl = load i32, ptr %i.erk, align 4, !tbaa !33 ; 4 uses
  br label %bb.abg

bb.abg:                                           ; preds = %bb.abg, %bb.abf
  %.0.i.i4863 = phi i32 [ %i.erj, %bb.abf ], [ %i.ero, %bb.abg ] ; 4 uses
  %i.erm = sext i32 %.0.i.i4863 to i64
  %i.ern = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.erm
  %i.ero = load i32, ptr %i.ern, align 4, !tbaa !33 ; 2 uses
  %i.erp = icmp slt i32 %i.ero, %.0.i.i4863
  br i1 %i.erp, label %bb.abg, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4864, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4864: ; preds = %bb.abg
  %.not.i4865 = icmp eq i32 %i.erj, %i.erl
  br i1 %.not.i4865, label %bb.abh, label %.preheader.i4866

.preheader.i4866:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4864, %.preheader.i4866
  %.0.i18.i4867 = phi i32 [ %i.ers, %.preheader.i4866 ], [ %i.erl, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4864 ] ; 3 uses
  %i.erq = sext i32 %.0.i18.i4867 to i64
  %i.err = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.erq
  %i.ers = load i32, ptr %i.err, align 4, !tbaa !33 ; 2 uses
  %i.ert = icmp slt i32 %i.ers, %.0.i18.i4867
  br i1 %i.ert, label %.preheader.i4866, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4868, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4868: ; preds = %.preheader.i4866
  %spec.select.i4869 = tail call i32 @llvm.smin.i32(i32 %.0.i.i4863, i32 %.0.i18.i4867) ; 3 uses
  %i.eru = sext i32 %i.erl to i64
  %i.erv = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.eru ; 3 uses
  %i.erw = load i32, ptr %i.erv, align 4, !tbaa !33 ; 2 uses
  %i.erx = icmp slt i32 %i.erw, %i.erl
  br i1 %i.erx, label %.lr.ph.i.i4875, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4870

.lr.ph.i.i4875:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4868, %.lr.ph.i.i4875
  %i.ery = phi i32 [ %i.esc, %.lr.ph.i.i4875 ], [ %i.erw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4868 ] ; 2 uses
  %i.erz = phi ptr [ %i.esb, %.lr.ph.i.i4875 ], [ %i.erv, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4868 ]
  store i32 %spec.select.i4869, ptr %i.erz, align 4, !tbaa !33
  %i.esa = sext i32 %i.ery to i64
  %i.esb = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.esa ; 3 uses
  %i.esc = load i32, ptr %i.esb, align 4, !tbaa !33 ; 2 uses
  %i.esd = icmp slt i32 %i.esc, %i.ery
  br i1 %i.esd, label %.lr.ph.i.i4875, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4870, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4870: ; preds = %.lr.ph.i.i4875, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4868
  %.lcssa.i.i4871 = phi ptr [ %i.erv, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4868 ], [ %i.esb, %.lr.ph.i.i4875 ]
  store i32 %spec.select.i4869, ptr %.lcssa.i.i4871, align 4, !tbaa !33
  br label %bb.abh

bb.abh:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4870, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4864
  %.1.i4872 = phi i32 [ %spec.select.i4869, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4870 ], [ %.0.i.i4863, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4864 ] ; 3 uses
  %i.ese = sext i32 %i.erj to i64
  %i.esf = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.ese ; 3 uses
  %i.esg = load i32, ptr %i.esf, align 4, !tbaa !33 ; 2 uses
  %i.esh = icmp slt i32 %i.esg, %i.erj
  br i1 %i.esh, label %.lr.ph.i21.i4874, label %.loopexit4947.a

.lr.ph.i21.i4874:                                 ; preds = %bb.abh, %.lr.ph.i21.i4874
  %i.esi = phi i32 [ %i.esm, %.lr.ph.i21.i4874 ], [ %i.esg, %bb.abh ] ; 2 uses
  %i.esj = phi ptr [ %i.esl, %.lr.ph.i21.i4874 ], [ %i.esf, %bb.abh ]
  store i32 %.1.i4872, ptr %i.esj, align 4, !tbaa !33
  %i.esk = sext i32 %i.esi to i64
  %i.esl = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.esk ; 3 uses
  %i.esm = load i32, ptr %i.esl, align 4, !tbaa !33 ; 2 uses
  %i.esn = icmp slt i32 %i.esm, %i.esi
  br i1 %i.esn, label %.lr.ph.i21.i4874, label %.loopexit4947.a, !llvm.loop !4

.loopexit4947.a:                                  ; preds = %.lr.ph.i21.i4874, %bb.abh
  %.lcssa.i20.i4873 = phi ptr [ %i.esf, %bb.abh ], [ %i.esl, %.lr.ph.i21.i4874 ]
  store i32 %.1.i4872, ptr %.lcssa.i20.i4873, align 4, !tbaa !33
  %i.eso = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.erb
  store i32 %.1.i4872, ptr %i.eso, align 4, !tbaa !33
  br label %.preheader4955

bb.abi:                                           ; preds = %.invoke6609
  %i.esp = landingpad { ptr, i32 }
          cleanup
  br label %.thread4937

bb.abj:                                           ; preds = %bb.abc
  %i.esq = getelementptr inbounds [4 x i8], ptr %i.eqb, i64 %i.eqv
  %i.esr = load i32, ptr %i.esq, align 4, !tbaa !33
  %i.ess = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.eqy
  store i32 %i.esr, ptr %i.ess, align 4, !tbaa !33
  br label %.preheader4955

bb.abk:                                           ; preds = %bb.abb
  br i1 %.not3447, label %bb.abl, label %bb.adk

bb.abl:                                           ; preds = %bb.abk
  %i.est = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.eqy
  store i32 %.99, ptr %i.est, align 4, !tbaa !33
  %i.esu = sext i32 %.99 to i64
  %i.esv = getelementptr inbounds [4 x i8], ptr %.sroa.04932.0, i64 %i.esu
  store i32 %.99, ptr %i.esv, align 4, !tbaa !33
  %.not.i4877 = icmp eq i32 %.99, 2147483647
  br i1 %.not.i4877, label %.invoke6609, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4879

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4879: ; preds = %bb.abl
  %i.esw = add nsw i32 %.99, 1
  br label %bb.acu

bb.abm:                                           ; preds = %bb.aba
  %i.esx = getelementptr inbounds i8, ptr %i.epv, i64 %i.eqi
  %i.esy = load i8, ptr %i.esx, align 1, !tbaa !32
  %.not3389 = icmp eq i8 %i.esy, 0
  br i1 %.not3389, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.esz = getelementptr inbounds [4 x i8], ptr %i.eqb, i64 %i.eqi
  %i.eta = load i32, ptr %i.esz, align 4, !tbaa !33
  %i.etb = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.eqi
  store i32 %i.eta, ptr %i.etb, align 4, !tbaa !33
  br label %.backedge4957.a

.backedge4957.a:                                  ; preds = %bb.abn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4882, %bb.acq, %bb.acs, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4888, %bb.add, %bb.aeb, %bb.ael, %bb.afj, %bb.afu, %bb.afv, %bb.agk
  %.98.be = phi i32 [ %.114.ph, %bb.agk ], [ %.107, %bb.aeb ], [ %.105, %bb.add ], [ %.102, %bb.acq ], [ %.102, %bb.acs ], [ %i.exk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4888 ], [ %.110.ph, %bb.ael ], [ %.112, %bb.afj ], [ %.113.ph, %bb.afu ], [ %.113.ph, %bb.afv ], [ %.985481, %bb.abn ], [ %i.etg, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4882 ] ; 2 uses
  %.03160.be = phi i32 [ %i.fmb, %bb.agk ], [ %i.ezv, %bb.aeb ], [ %i.exl, %bb.add ], [ %i.etr, %bb.acq ], [ %i.etr, %bb.acs ], [ %i.etr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4888 ], [ %i.fec, %bb.ael ], [ %.14, %bb.afj ], [ %i.fiy, %bb.afu ], [ %i.fiy, %bb.afv ], [ %i.eqh, %bb.abn ], [ %i.eqh, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4882 ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK2cv19connectedcomponents18LabelingWuParallelIihNS0_4NoOpEE10SecondScanclERKNS_5RangeE:bb.a
.lr.ph54.preheader:                               ; preds = %bb.b
  %i.ag = add nsw i64 %.idx58, -4                 ; 2 uses
  %i.ah = lshr exact i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 1
  %xtraiter67 = and i64 %i.ai, 7                  ; 2 uses
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol

.lr.ph54.prol:                                    ; preds = %.lr.ph54.preheader, %.lr.ph54.prol
  %.03952.prol = phi ptr [ %i.an, %.lr.ph54.prol ], [ %i.ac, %.lr.ph54.preheader ] ; 3 uses
  %prol.iter69 = phi i64 [ %prol.iter69.next, %.lr.ph54.prol ], [ 0, %.lr.ph54.preheader ]
  %i.aj = load i32, ptr %.03952.prol, align 4, !tbaa !33
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33
  store i32 %i.am, ptr %.03952.prol, align 4, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %.03952.prol, i64 4 ; 2 uses
  %prol.iter69.next = add i64 %prol.iter69, 1     ; 2 uses
  %prol.iter69.cmp.not = icmp eq i64 %prol.iter69.next, %xtraiter67
  br i1 %prol.iter69.cmp.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol, !llvm.loop !233

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %.lr.ph54.preheader
  %.03952.unr = phi ptr [ %i.ac, %.lr.ph54.preheader ], [ %i.an, %.lr.ph54.prol ]
  %i.ao = icmp ult i64 %i.ag, 28
  br i1 %i.ao, label %._crit_edge55, label %.lr.ph54

._crit_edge55:                                    ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54, %bb.b
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv.next62 to i32
  %i.aq = icmp sgt i32 %.sroa.speculated, %i.ap
  br i1 %i.aq, label %bb.b, label %.loopexit, !llvm.loop !234

.lr.ph54:                                         ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54
  %.03952 = phi ptr [ %i.ce, %.lr.ph54 ], [ %.03952.unr, %.lr.ph54.prol.loopexit ] ; 10 uses
  %i.ar = load i32, ptr %.03952, align 4, !tbaa !33
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !33
  store i32 %i.au, ptr %.03952, align 4, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %.03952, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !33
  store i32 %i.az, ptr %i.av, align 4, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %.03952, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !33
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !33
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %.03952, i64 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !33
  store i32 %i.bj, ptr %i.bf, align 4, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %.03952, i64 16 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !33
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !33
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %.03952, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !33
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !33
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %.03952, i64 24 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !33
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !33
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %.03952, i64 28 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !33
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %.03952, i64 32 ; 2 uses
  %.not43.7 = icmp eq ptr %i.ce, %i.af
  br i1 %.not43.7, label %._crit_edge55, label %.lr.ph54, !llvm.loop !235

bb.c:                                             ; preds = %.lr.ph50, %._crit_edge
  %indvars.iv = phi i64 [ %i.s, %.lr.ph50 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.cf = mul i64 %i.o, %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cf ; 3 uses
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !52  ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %.idx = shl nsw i64 %i.ci, 2                    ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %.idx
  %.not47 = icmp eq i32 %i.ch, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ck = add nsw i64 %.idx, -4                   ; 2 uses
  %i.cl = lshr exact i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1
  %xtraiter = and i64 %i.cm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03748.prol = phi ptr [ %i.cr, %.lr.ph.prol ], [ %i.cg, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.cn = load i32, ptr %.03748.prol, align 4, !tbaa !33
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !33
  store i32 %i.cq, ptr %.03748.prol, align 4, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %.03748.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !236

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.03748.unr = phi ptr [ %i.cg, %.lr.ph.preheader ], [ %i.cr, %.lr.ph.prol ]
  %i.cs = icmp ult i64 %i.ck, 28
  br i1 %i.cs, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !237

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03748 = phi ptr [ %i.eg, %.lr.ph ], [ %.03748.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.ct = load i32, ptr %.03748, align 4, !tbaa !33
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !33
  store i32 %i.cw, ptr %.03748, align 4, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %.03748, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !33
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !33
  store i32 %i.db, ptr %i.cx, align 4, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %.03748, i64 8 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !33
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !33
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %.03748, i64 12 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !33
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !33
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %.03748, i64 16 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !33
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !33
  store i32 %i.dq, ptr %i.dm, align 4, !tbaa !33
  %i.dr = getelementptr inbounds nuw i8, ptr %.03748, i64 20 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !33
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !33
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %.03748, i64 24 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !33
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !33
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %.03748, i64 28 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !33
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !33
  store i32 %i.ef, ptr %i.eb, align 4, !tbaa !33
  %i.eg = getelementptr inbounds nuw i8, ptr %.03748, i64 32 ; 2 uses
  %.not.7 = icmp eq ptr %i.eg, %i.cj
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !238

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge55, %.preheader45, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents21LabelingGranaParallelIihNS0_4NoOpEE11mergeLabelsERKNS_3MatERS4_PiS8_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.087159 = load i32, ptr %3, align 4, !tbaa !33 ; 2 uses
  %i.e = icmp slt i32 %.087159, %i.d
  br i1 %i.e, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %4 = sub i64 0, %i.i                            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = sub i64 0, %i.m
  %i.o = icmp sgt i32 %i.b, 0
  br i1 %i.o, label %.lr.ph.us.preheader, label %._crit_edge163

.lr.ph.us.preheader:                              ; preds = %.lr.ph162
  %i.p = add nsw i32 %i.b, -2
  %i.q = add nsw i32 %i.b, -1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = sext i32 %i.p to i64
  %i.t = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.087160.us = phi i32 [ %.087.us, %._crit_edge.us ], [ %.087159, %.lr.ph.us.preheader ]
  %i.u = sext i32 %.087160.us to i64              ; 3 uses
  %i.v = mul i64 %i.i, %i.u
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %5, i64 %4
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %4 ; 3 uses
  %i.y = mul i64 %i.m, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.n ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.ab ] ; 16 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33 ; 9 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %.not.us = icmp eq i64 %indvars.iv, 0
  br i1 %.not.us, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33 ; 5 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32
  %.not93.us = icmp eq i8 %i.aj, 0
  br i1 %.not93.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.aa, i64 %indvars.iv
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %.not94.us = icmp eq i8 %i.am, 0
  br i1 %.not94.us, label %bb.h, label %.preheader.us

.preheader.us:                                    ; preds = %bb.f, %.preheader.us
  %.0.i.i.us = phi i32 [ %i.ap, %.preheader.us ], [ %i.ag, %bb.f ] ; 4 uses
  %i.an = sext i32 %.0.i.i.us to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !33 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %.0.i.i.us
  br i1 %i.aq, label %.preheader.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %.preheader.us
  %.not.i.us = icmp eq i32 %i.ag, %i.ac
  br i1 %.not.i.us, label %bb.g, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.at, %.preheader.i.us ], [ %i.ac, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.ar = sext i32 %.0.i18.i.us to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33 ; 2 uses
  %i.au = icmp slt i32 %i.at, %.0.i18.i.us
  br i1 %i.au, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.av = zext nneg i32 %i.ac to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !33 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.ac
  br i1 %i.ay, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.az = phi i32 [ %i.bd, %.lr.ph.i.i.us ], [ %i.ax, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.ba = phi ptr [ %i.bc, %.lr.ph.i.i.us ], [ %i.aw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.ba, align 4, !tbaa !33
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !33 ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.az
  br i1 %i.be, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.aw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.bc, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 4 uses
  %i.bf = zext nneg i32 %i.ag to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bf ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.ag
  br i1 %i.bi, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us

.lr.ph.i21.i.us:                                  ; preds = %bb.g, %.lr.ph.i21.i.us
  %i.bj = phi i32 [ %i.bn, %.lr.ph.i21.i.us ], [ %i.bh, %bb.g ] ; 2 uses
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i21.i.us ], [ %i.bg, %bb.g ]
  store i32 %.1.i.us, ptr %i.bk, align 4, !tbaa !33
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bl ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !33 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bj
  br i1 %i.bo, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us: ; preds = %.lr.ph.i21.i.us, %bb.g
  %.lcssa.i20.i.us = phi ptr [ %i.bg, %bb.g ], [ %i.bm, %.lr.ph.i21.i.us ]
  store i32 %.1.i.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !33
  store i32 %.1.i.us, ptr %i.ab, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bp = phi i32 [ %.1.i.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us ], [ %i.ac, %bb.f ], [ %i.ac, %bb.e ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 13 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33 ; 9 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bt = icmp samesign ult i64 %indvars.iv, %i.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %.not97.us = icmp eq i8 %i.bv, 0                ; 3 uses
  br i1 %i.bt, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %.not96.us = icmp eq i8 %i.bx, 0
  br i1 %.not96.us, label %bb.w, label %.preheader195

.preheader195:                                    ; preds = %bb.k, %.preheader195
  %.0.i.i121.us = phi i32 [ %i.ca, %.preheader195 ], [ %i.br, %bb.k ] ; 4 uses
  %i.by = sext i32 %.0.i.i121.us to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %.0.i.i121.us
  br i1 %i.cb, label %.preheader195, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us: ; preds = %.preheader195
  %.not.i123.us = icmp eq i32 %i.br, %i.bp
  br i1 %.not.i123.us, label %bb.l, label %.preheader.i124.us

.preheader.i124.us:                               ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, %.preheader.i124.us
  %.0.i18.i125.us = phi i32 [ %i.ce, %.preheader.i124.us ], [ %i.bp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us ] ; 3 uses
  %i.cc = sext i32 %.0.i18.i125.us to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !33 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %.0.i18.i125.us
  br i1 %i.cf, label %.preheader.i124.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us: ; preds = %.preheader.i124.us
  %spec.select.i127.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i121.us, i32 %.0.i18.i125.us) ; 3 uses
  %i.cg = sext i32 %i.bp to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !33 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.bp
  br i1 %i.cj, label %.lr.ph.i.i133.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us

.lr.ph.i.i133.us:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us, %.lr.ph.i.i133.us
  %i.ck = phi i32 [ %i.co, %.lr.ph.i.i133.us ], [ %i.ci, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ] ; 2 uses
  %i.cl = phi ptr [ %i.cn, %.lr.ph.i.i133.us ], [ %i.ch, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ]
  store i32 %spec.select.i127.us, ptr %i.cl, align 4, !tbaa !33
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cm ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !33 ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.ck
  br i1 %i.cp, label %.lr.ph.i.i133.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us: ; preds = %.lr.ph.i.i133.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us
  %.lcssa.i.i129.us = phi ptr [ %i.ch, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ], [ %i.cn, %.lr.ph.i.i133.us ]
  store i32 %spec.select.i127.us, ptr %.lcssa.i.i129.us, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us
  %.1.i130.us = phi i32 [ %spec.select.i127.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us ], [ %.0.i.i121.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us ] ; 3 uses
  %i.cq = zext nneg i32 %i.br to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cq ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !33 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.br
  br i1 %i.ct, label %.lr.ph.i21.i132.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us

.lr.ph.i21.i132.us:                               ; preds = %bb.l, %.lr.ph.i21.i132.us
  %i.cu = phi i32 [ %i.cy, %.lr.ph.i21.i132.us ], [ %i.cs, %bb.l ] ; 2 uses
  %i.cv = phi ptr [ %i.cx, %.lr.ph.i21.i132.us ], [ %i.cr, %bb.l ]
  store i32 %.1.i130.us, ptr %i.cv, align 4, !tbaa !33
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cw ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !33 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cu
  br i1 %i.cz, label %.lr.ph.i21.i132.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us: ; preds = %.lr.ph.i21.i132.us, %bb.l
  %.lcssa.i20.i131.us = phi ptr [ %i.cr, %bb.l ], [ %i.cx, %.lr.ph.i21.i132.us ]
  store i32 %.1.i130.us, ptr %.lcssa.i20.i131.us, align 4, !tbaa !33
  br label %.sink.split

bb.m:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !32
  %.not98.us = icmp eq i8 %i.db, 0
  br i1 %.not98.us, label %bb.o, label %.preheader203

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !32
  %.not99.us = icmp eq i8 %i.de, 0                ; 2 uses
  br i1 %.not99.us, label %bb.q, label %bb.p

end_hunk_6
begin_hunk_7_@_ZN2cv19connectedcomponents21LabelingGranaParallelIihNS0_4NoOpEE11mergeLabelsERKNS_3MatERS4_PiS8_:bb.a
  %i.ei = phi ptr [ %i.ek, %.lr.ph.i21.i118.us ], [ %i.ee, %bb.v ]
  store i32 %.1.i116.us, ptr %i.ei, align 4, !tbaa !33
  %i.ej = sext i32 %i.eh to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ej ; 3 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !33 ; 2 uses
  %i.em = icmp slt i32 %i.el, %i.eh
  br i1 %i.em, label %.lr.ph.i21.i118.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit120.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit120.us: ; preds = %.lr.ph.i21.i118.us, %bb.v
  %.lcssa.i20.i117.us = phi ptr [ %i.ee, %bb.v ], [ %i.ek, %.lr.ph.i21.i118.us ]
  store i32 %.1.i116.us, ptr %.lcssa.i20.i117.us, align 4, !tbaa !33
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit120.us
  %.1.i116.us.sink = phi i32 [ %.1.i116.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit120.us ], [ %.1.i130.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us ] ; 2 uses
  store i32 %.1.i116.us.sink, ptr %i.ab, align 4, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.t, %bb.s, %bb.k, %bb.j, %bb.h
  %i.en = phi i32 [ %i.bp, %bb.j ], [ %i.bp, %bb.t ], [ %i.bp, %bb.s ], [ %i.bp, %bb.h ], [ %i.bp, %bb.k ], [ %.1.i116.us.sink, %.sink.split ] ; 4 uses
  %i.eo = icmp slt i64 %indvars.iv, %i.s
  br i1 %i.eo, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ep = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !33 ; 5 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !32
  %.not105.us = icmp eq i8 %i.ev, 0
  br i1 %.not105.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ep
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !32
  %.not106.us = icmp eq i8 %i.ex, 0
  br i1 %.not106.us, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.z, %.preheader
  %.0.i.i135.us = phi i32 [ %i.fa, %.preheader ], [ %i.er, %bb.z ] ; 4 uses
  %i.ey = sext i32 %.0.i.i135.us to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !33 ; 2 uses
  %i.fb = icmp slt i32 %i.fa, %.0.i.i135.us
  br i1 %i.fb, label %.preheader, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us: ; preds = %.preheader
  %.not.i137.us = icmp eq i32 %i.er, %i.en
  br i1 %.not.i137.us, label %bb.aa, label %.preheader.i138.us

.preheader.i138.us:                               ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us, %.preheader.i138.us
  %.0.i18.i139.us = phi i32 [ %i.fe, %.preheader.i138.us ], [ %i.en, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us ] ; 3 uses
  %i.fc = sext i32 %.0.i18.i139.us to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !33 ; 2 uses
  %i.ff = icmp slt i32 %i.fe, %.0.i18.i139.us
  br i1 %i.ff, label %.preheader.i138.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us: ; preds = %.preheader.i138.us
  %spec.select.i141.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i135.us, i32 %.0.i18.i139.us) ; 3 uses
  %i.fg = sext i32 %i.en to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fg ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !33 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, %i.en
  br i1 %i.fj, label %.lr.ph.i.i147.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us

.lr.ph.i.i147.us:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us, %.lr.ph.i.i147.us
  %i.fk = phi i32 [ %i.fo, %.lr.ph.i.i147.us ], [ %i.fi, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us ] ; 2 uses
  %i.fl = phi ptr [ %i.fn, %.lr.ph.i.i147.us ], [ %i.fh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us ]
  store i32 %spec.select.i141.us, ptr %i.fl, align 4, !tbaa !33
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fm ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !33 ; 2 uses
  %i.fp = icmp slt i32 %i.fo, %i.fk
  br i1 %i.fp, label %.lr.ph.i.i147.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us: ; preds = %.lr.ph.i.i147.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us
  %.lcssa.i.i143.us = phi ptr [ %i.fh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us ], [ %i.fn, %.lr.ph.i.i147.us ]
  store i32 %spec.select.i141.us, ptr %.lcssa.i.i143.us, align 4, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us
  %.1.i144.us = phi i32 [ %spec.select.i141.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us ], [ %.0.i.i135.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us ] ; 3 uses
  %i.fq = zext nneg i32 %i.er to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fq ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !33 ; 2 uses
  %i.ft = icmp slt i32 %i.fs, %i.er
  br i1 %i.ft, label %.lr.ph.i21.i146.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit148.us

.lr.ph.i21.i146.us:                               ; preds = %bb.aa, %.lr.ph.i21.i146.us
  %i.fu = phi i32 [ %i.fy, %.lr.ph.i21.i146.us ], [ %i.fs, %bb.aa ] ; 2 uses
  %i.fv = phi ptr [ %i.fx, %.lr.ph.i21.i146.us ], [ %i.fr, %bb.aa ]
  store i32 %.1.i144.us, ptr %i.fv, align 4, !tbaa !33
  %i.fw = sext i32 %i.fu to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fw ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !33 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %i.fu
  br i1 %i.fz, label %.lr.ph.i21.i146.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit148.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit148.us: ; preds = %.lr.ph.i21.i146.us, %bb.aa
  %.lcssa.i20.i145.us = phi ptr [ %i.fr, %bb.aa ], [ %i.fx, %.lr.ph.i21.i146.us ]
  store i32 %.1.i144.us, ptr %.lcssa.i20.i145.us, align 4, !tbaa !33
  store i32 %.1.i144.us, ptr %i.ab, align 4, !tbaa !33
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit148.us, %bb.z, %bb.y, %bb.x, %bb.w, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ga = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.ga, label %bb.b, label %._crit_edge.us, !llvm.loop !240

._crit_edge.us:                                   ; preds = %bb.ab
  %i.gb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.u
  %.087.us = load i32, ptr %i.gb, align 4, !tbaa !33 ; 2 uses
  %i.gc = icmp slt i32 %.087.us, %i.d
  br i1 %i.gc, label %.lr.ph.us, label %._crit_edge163, !llvm.loop !241

._crit_edge163:                                   ; preds = %._crit_edge.us, %.lr.ph162, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents21LabelingGranaParallelIihNS0_4NoOpEE9FirstScanD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_4NoOpEE9FirstScanclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !60     ; 2 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61
  %i.e = shl nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !244, !nonnull !93, !align !94 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.e) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = sext i32 %i.b to i64                     ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store i32 %.sroa.speculated, ptr %i.m, align 4, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !245, !nonnull !93, !align !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52
  %i.r = add nsw i32 %i.q, 1
  %i.s = sdiv i32 %i.r, 2
  %i.t = mul nsw i32 %i.s, %i.a
  %i.u = add nsw i32 %i.t, 1                      ; 4 uses
  %i.v = load i32, ptr %i.h, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52   ; 2 uses
  %i.y = or disjoint i32 %i.b, 1                  ; 2 uses
  %i.z = icmp slt i32 %i.b, %.sroa.speculated
  br i1 %i.z, label %.lr.ph2745, label %._crit_edge2746

.lr.ph2745:                                       ; preds = %bb.a
  %i.aa = icmp sgt i32 %i.x, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 75 uses
  br i1 %i.aa, label %.lr.ph.us.preheader, label %._crit_edge2746

.lr.ph.us.preheader:                              ; preds = %.lr.ph2745
  %i.ac = zext nneg i32 %i.x to i64               ; 13 uses
  %i.ad = sext i32 %.sroa.speculated to i64
  %i.ae = sext i32 %i.y to i64
  %i.af = sext i32 %i.v to i64
  %invariant.op = add nsw i64 %i.af, -1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv2901 = phi i64 [ %i.l, %.lr.ph.us.preheader ], [ %indvars.iv.next2902, %._crit_edge.us ] ; 6 uses
  %.013712743.us = phi i32 [ %i.u, %.lr.ph.us.preheader ], [ %.2.us, %._crit_edge.us ]
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !244, !nonnull !93, !align !94 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !40 ; 3 uses
  %i.al = mul i64 %i.ak, %indvars.iv2901
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 21 uses
  %i.an = sub i64 0, %i.ak                        ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an ; 73 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.an ; 40 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 5 uses
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !245, !nonnull !93, !align !94 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.av = load i64, ptr %i.au, align 8, !tbaa !40 ; 2 uses
  %i.aw = mul i64 %i.av, %indvars.iv2901
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw ; 221 uses
  %2 = sub i64 0, %i.av                           ; 2 uses
  %3 = getelementptr inbounds i8, ptr %i.ax, i64 %2
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %2 ; 102 uses
  %i.az = icmp sgt i64 %indvars.iv2901, %i.l      ; 14 uses
  %i.ba = icmp sgt i64 %indvars.iv2901, %i.ae     ; 24 uses
  %i.bb = icmp slt i64 %indvars.iv2901, %invariant.op ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.qy
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.qy ] ; 266 uses
  %.12739.us = phi i32 [ %.013712743.us, %.lr.ph.us ], [ %.2.us, %bb.qy ] ; 161 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !32
  %.not.us = icmp eq i8 %i.bd, 0
  br i1 %.not.us, label %bb.js, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1473.us = icmp eq i64 %indvars.iv, 0       ; 5 uses
  br i1 %.not1473.us, label %.critedge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32
  %.not1474.us = icmp eq i8 %i.bg, 0
  br i1 %.not1474.us, label %bb.ba, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.bi = icmp samesign ult i64 %i.bh, %i.ac      ; 2 uses
  %or.cond.us = and i1 %i.az, %i.bi
  br i1 %or.cond.us, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32
  %.not1535.us = icmp eq i8 %i.bk, 0
  br i1 %.not1535.us, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !32
  %.not1544.us = icmp eq i8 %i.bm, 0
  br i1 %.not1544.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr [4 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !33
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !33
  br label %bb.qy

bb.i:                                             ; preds = %bb.g
  br i1 %i.ba, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !32
  %.not1545.us = icmp eq i8 %i.br, 0
  br i1 %.not1545.us, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.be
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !32
  %.not1546.us = icmp eq i8 %i.bt, 0
  br i1 %.not1546.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr [4 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !33
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !33
  br label %bb.qy

bb.m:                                             ; preds = %bb.k
  %i.bx = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !32
  %.not1547.us = icmp eq i8 %i.bz, 0
  br i1 %.not1547.us, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.be
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %.not1548.us = icmp eq i8 %i.cb, 0
  br i1 %.not1548.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bx
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !33
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !33
  br label %bb.qy

bb.p:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !33 ; 4 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bx
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !33 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0.i.i.us = phi i32 [ %i.ch, %bb.p ], [ %i.cm, %bb.q ] ; 4 uses
  %i.ck = sext i32 %.0.i.i.us to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !33 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %.0.i.i.us
  br i1 %i.cn, label %bb.q, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %bb.q
  %.not.i.us = icmp eq i32 %i.ch, %i.cj
  br i1 %.not.i.us, label %bb.r, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.cq, %.preheader.i.us ], [ %i.cj, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.co = sext i32 %.0.i18.i.us to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !33 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %.0.i18.i.us
  br i1 %i.cr, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.cs = sext i32 %i.cj to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cs ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !33 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.cj
  br i1 %i.cv, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.cw = phi i32 [ %i.da, %.lr.ph.i.i.us ], [ %i.cu, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.cx = phi ptr [ %i.cz, %.lr.ph.i.i.us ], [ %i.ct, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.cx, align 4, !tbaa !33
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cy ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !33 ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.cw
  br i1 %i.db, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.ct, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.cz, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !33
  br label %bb.r

bb.r:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.dc = sext i32 %i.ch to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.dc ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !33 ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.ch
  br i1 %i.df, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us

.lr.ph.i21.i.us:                                  ; preds = %bb.r, %.lr.ph.i21.i.us
  %i.dg = phi i32 [ %i.dk, %.lr.ph.i21.i.us ], [ %i.de, %bb.r ] ; 2 uses
  %i.dh = phi ptr [ %i.dj, %.lr.ph.i21.i.us ], [ %i.dd, %bb.r ]
  store i32 %.1.i.us, ptr %i.dh, align 4, !tbaa !33
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.di ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !33 ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %i.dg
  br i1 %i.dl, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us: ; preds = %.lr.ph.i21.i.us, %bb.r
  %.lcssa.i20.i.us = phi ptr [ %i.dd, %bb.r ], [ %i.dj, %.lr.ph.i21.i.us ]
  store i32 %.1.i.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !33
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store i32 %.1.i.us, ptr %i.dm, align 4, !tbaa !33
  br label %bb.qy

bb.s:                                             ; preds = %bb.m
  %i.dn = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !33 ; 4 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bx
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.0.i.i1572.us = phi i32 [ %i.dp, %bb.s ], [ %i.du, %bb.t ] ; 4 uses
  %i.ds = sext i32 %.0.i.i1572.us to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !33 ; 2 uses
  %i.dv = icmp slt i32 %i.du, %.0.i.i1572.us
  br i1 %i.dv, label %bb.t, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i1573.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i1573.us: ; preds = %bb.t
  %.not.i1574.us = icmp eq i32 %i.dp, %i.dr
  br i1 %.not.i1574.us, label %bb.u, label %.preheader.i1575.us

.preheader.i1575.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i1573.us, %.preheader.i1575.us
  %.0.i18.i1576.us = phi i32 [ %i.dy, %.preheader.i1575.us ], [ %i.dr, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i1573.us ] ; 3 uses
  %i.dw = sext i32 %.0.i18.i1576.us to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !33 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %.0.i18.i1576.us
  br i1 %i.dz, label %.preheader.i1575.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i1577.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i1577.us: ; preds = %.preheader.i1575.us
  %spec.select.i1578.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i1572.us, i32 %.0.i18.i1576.us) ; 3 uses
  %i.ea = sext i32 %i.dr to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ea ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !33 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_4NoOpEE10SecondScanclERKNS_5RangeE:bb.a
.preheader825:                                    ; preds = %bb.bk
  br i1 %i.s, label %.lr.ph853, label %.loopexit

.lr.ph853:                                        ; preds = %.preheader825
  %i.nm = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !55
  %i.no = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.np = load i64, ptr %i.no, align 8, !tbaa !40 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !55
  %i.ns = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !40 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nv = sext i32 %i.b to i64
  %i.nw = sext i32 %.sroa.speculated to i64
  br label %bb.br

bb.bl:                                            ; preds = %.lr.ph847, %._crit_edge845
  %i.nx = phi i32 [ %i.q, %.lr.ph847 ], [ %i.of, %._crit_edge845 ] ; 2 uses
  %indvars.iv900 = phi i64 [ %i.nk, %.lr.ph847 ], [ %indvars.iv.next901, %._crit_edge845 ] ; 3 uses
  %i.ny = mul i64 %i.ne, %indvars.iv900
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ny ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.ne ; 2 uses
  %i.ob = mul i64 %i.ni, %indvars.iv900
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ob ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ni ; 3 uses
  %i.oe = icmp sgt i32 %i.nx, 0
  br i1 %i.oe, label %.lr.ph844, label %._crit_edge845

._crit_edge845:                                   ; preds = %bb.bq, %bb.bl
  %i.of = phi i32 [ %i.nx, %bb.bl ], [ %i.pj, %bb.bq ]
  %indvars.iv.next901 = add nsw i64 %indvars.iv900, 2 ; 2 uses
  %i.og = icmp slt i64 %indvars.iv.next901, %i.nl
  br i1 %i.og, label %bb.bl, label %.loopexit, !llvm.loop !258

.lr.ph844:                                        ; preds = %bb.bl, %bb.bq
  %indvars.iv897 = phi i64 [ %indvars.iv.next898, %bb.bq ], [ 0, %bb.bl ] ; 8 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv897 ; 3 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !33 ; 2 uses
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %.lr.ph844
  %i.ok = load ptr, ptr %i.nj, align 8, !tbaa !83
  %i.ol = zext nneg i32 %i.oi to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !33 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nz, i64 %indvars.iv897
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !32
  %.not770 = icmp eq i8 %i.op, 0
  %.817 = select i1 %.not770, i32 0, i32 %i.on
  store i32 %.817, ptr %i.oh, align 4, !tbaa !33
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oa, i64 %indvars.iv897
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !32
  %.not771 = icmp eq i8 %i.or, 0
  %spec.select1011 = select i1 %.not771, i32 0, i32 %i.on
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv897
  store i32 %spec.select1011, ptr %i.os, align 4, !tbaa !33
  %i.ot = or disjoint i64 %indvars.iv897, 1       ; 5 uses
  %i.ou = load i32, ptr %i.p, align 4, !tbaa !52
  %i.ov = sext i32 %i.ou to i64
  %i.ow = icmp slt i64 %i.ot, %i.ov
  br i1 %i.ow, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.ot
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !32
  %.not772 = icmp eq i8 %i.oy, 0
  %spec.select1012 = select i1 %.not772, i32 0, i32 %i.on
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.ot
  store i32 %spec.select1012, ptr %i.oz, align 4, !tbaa !33
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ot
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !32
  %.not773 = icmp eq i8 %i.pb, 0
  %.1024 = select i1 %.not773, i32 0, i32 %i.on
  br label %.sink.split1013

bb.bo:                                            ; preds = %.lr.ph844
  store i32 0, ptr %i.oh, align 4, !tbaa !33
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv897
  store i32 0, ptr %i.pc, align 4, !tbaa !33
  %i.pd = or disjoint i64 %indvars.iv897, 1       ; 3 uses
  %i.pe = load i32, ptr %i.p, align 4, !tbaa !52
  %i.pf = sext i32 %i.pe to i64
  %i.pg = icmp slt i64 %i.pd, %i.pf
  br i1 %i.pg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.pd
  store i32 0, ptr %i.ph, align 4, !tbaa !33
  br label %.sink.split1013

.sink.split1013:                                  ; preds = %bb.bn, %bb.bp
  %.sink1016 = phi i64 [ %i.pd, %bb.bp ], [ %i.ot, %bb.bn ]
  %.sink1014 = phi i32 [ 0, %bb.bp ], [ %.1024, %bb.bn ]
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.sink1016
  store i32 %.sink1014, ptr %i.pi, align 4, !tbaa !33
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split1013, %bb.bo, %bb.bm
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 2 ; 2 uses
  %i.pj = load i32, ptr %i.p, align 4, !tbaa !52  ; 2 uses
  %i.pk = sext i32 %i.pj to i64
  %i.pl = icmp slt i64 %indvars.iv.next898, %i.pk
  br i1 %i.pl, label %.lr.ph844, label %._crit_edge845, !llvm.loop !259

bb.br:                                            ; preds = %.lr.ph853, %._crit_edge851
  %i.pm = phi i32 [ %i.q, %.lr.ph853 ], [ %i.pu, %._crit_edge851 ] ; 2 uses
  %indvars.iv906 = phi i64 [ %i.nv, %.lr.ph853 ], [ %indvars.iv.next907, %._crit_edge851 ] ; 3 uses
  %i.pn = mul i64 %i.np, %indvars.iv906
  %i.po = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.pn ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.np ; 2 uses
  %i.pq = mul i64 %i.nt, %indvars.iv906
  %i.pr = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.pq ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.nt ; 3 uses
  %i.pt = icmp sgt i32 %i.pm, 0
  br i1 %i.pt, label %.lr.ph850, label %._crit_edge851

._crit_edge851:                                   ; preds = %bb.bu, %bb.br
  %i.pu = phi i32 [ %i.pm, %bb.br ], [ %i.qs, %bb.bu ]
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, 2 ; 2 uses
  %i.pv = icmp slt i64 %indvars.iv.next907, %i.nw
  br i1 %i.pv, label %bb.br, label %.loopexit, !llvm.loop !260

.lr.ph850:                                        ; preds = %bb.br, %bb.bu
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %bb.bu ], [ 0, %bb.br ] ; 8 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv903 ; 3 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !33 ; 2 uses
  %i.py = icmp sgt i32 %i.px, 0
  br i1 %i.py, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph850
  %i.pz = load ptr, ptr %i.nu, align 8, !tbaa !83
  %i.qa = zext nneg i32 %i.px to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !33 ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.po, i64 %indvars.iv903
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !32
  %.not766 = icmp eq i8 %i.qe, 0
  %.818 = select i1 %.not766, i32 0, i32 %i.qc
  store i32 %.818, ptr %i.pw, align 4, !tbaa !33
  %i.qf = or disjoint i64 %indvars.iv903, 1       ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !32
  %.not767 = icmp eq i8 %i.qh, 0
  %spec.select1017 = select i1 %.not767, i32 0, i32 %i.qc
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qf
  store i32 %spec.select1017, ptr %i.qi, align 4, !tbaa !33
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pp, i64 %indvars.iv903
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !32
  %.not768 = icmp eq i8 %i.qk, 0
  %.sink947 = select i1 %.not768, i32 0, i32 %i.qc
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv903
  store i32 %.sink947, ptr %i.ql, align 4, !tbaa !33
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.qf
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !32
  %.not769 = icmp eq i8 %i.qn, 0
  %spec.select1026 = select i1 %.not769, i32 0, i32 %i.qc
  br label %bb.bu

bb.bt:                                            ; preds = %.lr.ph850
  store i32 0, ptr %i.pw, align 4, !tbaa !33
  %i.qo = or disjoint i64 %indvars.iv903, 1       ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qo
  store i32 0, ptr %i.qp, align 4, !tbaa !33
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv903
  store i32 0, ptr %i.qq, align 4, !tbaa !33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %.sink1020 = phi i64 [ %i.qo, %bb.bt ], [ %i.qf, %bb.bs ]
  %.sink1018 = phi i32 [ 0, %bb.bt ], [ %spec.select1026, %bb.bs ]
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %.sink1020
  store i32 %.sink1018, ptr %i.qr, align 4, !tbaa !33
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 2 ; 2 uses
  %i.qs = load i32, ptr %i.p, align 4, !tbaa !52  ; 2 uses
  %i.qt = sext i32 %i.qs to i64
  %i.qu = icmp slt i64 %indvars.iv.next904, %i.qt
  br i1 %i.qu, label %.lr.ph850, label %._crit_edge851, !llvm.loop !261

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge839, %._crit_edge845, %._crit_edge851, %._crit_edge857, %._crit_edge863, %._crit_edge869, %._crit_edge875, %.lr.ph841, %.lr.ph835, %.preheader831, %.preheader829, %.preheader827, %.preheader825, %.preheader823, %.preheader821, %.preheader819, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents23LabelingBolelliParallelIihNS0_4NoOpEE11mergeLabelsERKNS_3MatERS4_PiS8_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.087159 = load i32, ptr %3, align 4, !tbaa !33 ; 2 uses
  %i.e = icmp slt i32 %.087159, %i.d
  br i1 %i.e, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %4 = sub i64 0, %i.i                            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = sub i64 0, %i.m
  %i.o = icmp sgt i32 %i.b, 0
  br i1 %i.o, label %.lr.ph.us.preheader, label %._crit_edge163

.lr.ph.us.preheader:                              ; preds = %.lr.ph162
  %i.p = add nsw i32 %i.b, -2
  %i.q = add nsw i32 %i.b, -1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = sext i32 %i.p to i64
  %i.t = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.087160.us = phi i32 [ %.087.us, %._crit_edge.us ], [ %.087159, %.lr.ph.us.preheader ]
  %i.u = sext i32 %.087160.us to i64              ; 3 uses
  %i.v = mul i64 %i.i, %i.u
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %5, i64 %4
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %4 ; 3 uses
  %i.y = mul i64 %i.m, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.n ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.ab ] ; 16 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33 ; 9 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %.not.us = icmp eq i64 %indvars.iv, 0
  br i1 %.not.us, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33 ; 5 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32
  %.not93.us = icmp eq i8 %i.aj, 0
  br i1 %.not93.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.aa, i64 %indvars.iv
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %.not94.us = icmp eq i8 %i.am, 0
  br i1 %.not94.us, label %bb.h, label %.preheader.us

.preheader.us:                                    ; preds = %bb.f, %.preheader.us
  %.0.i.i.us = phi i32 [ %i.ap, %.preheader.us ], [ %i.ag, %bb.f ] ; 4 uses
  %i.an = sext i32 %.0.i.i.us to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !33 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %.0.i.i.us
  br i1 %i.aq, label %.preheader.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %.preheader.us
  %.not.i.us = icmp eq i32 %i.ag, %i.ac
  br i1 %.not.i.us, label %bb.g, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.at, %.preheader.i.us ], [ %i.ac, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.ar = sext i32 %.0.i18.i.us to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33 ; 2 uses
  %i.au = icmp slt i32 %i.at, %.0.i18.i.us
  br i1 %i.au, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.av = zext nneg i32 %i.ac to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !33 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.ac
  br i1 %i.ay, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.az = phi i32 [ %i.bd, %.lr.ph.i.i.us ], [ %i.ax, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.ba = phi ptr [ %i.bc, %.lr.ph.i.i.us ], [ %i.aw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.ba, align 4, !tbaa !33
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !33 ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.az
  br i1 %i.be, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.aw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.bc, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 4 uses
  %i.bf = zext nneg i32 %i.ag to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bf ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.ag
  br i1 %i.bi, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us

.lr.ph.i21.i.us:                                  ; preds = %bb.g, %.lr.ph.i21.i.us
  %i.bj = phi i32 [ %i.bn, %.lr.ph.i21.i.us ], [ %i.bh, %bb.g ] ; 2 uses
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i21.i.us ], [ %i.bg, %bb.g ]
  store i32 %.1.i.us, ptr %i.bk, align 4, !tbaa !33
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bl ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !33 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bj
  br i1 %i.bo, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us: ; preds = %.lr.ph.i21.i.us, %bb.g
  %.lcssa.i20.i.us = phi ptr [ %i.bg, %bb.g ], [ %i.bm, %.lr.ph.i21.i.us ]
  store i32 %.1.i.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !33
  store i32 %.1.i.us, ptr %i.ab, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bp = phi i32 [ %.1.i.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us ], [ %i.ac, %bb.f ], [ %i.ac, %bb.e ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 13 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33 ; 9 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bt = icmp samesign ult i64 %indvars.iv, %i.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %.not97.us = icmp eq i8 %i.bv, 0                ; 3 uses
  br i1 %i.bt, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %.not96.us = icmp eq i8 %i.bx, 0
  br i1 %.not96.us, label %bb.w, label %.preheader195

.preheader195:                                    ; preds = %bb.k, %.preheader195
  %.0.i.i121.us = phi i32 [ %i.ca, %.preheader195 ], [ %i.br, %bb.k ] ; 4 uses
  %i.by = sext i32 %.0.i.i121.us to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %.0.i.i121.us
  br i1 %i.cb, label %.preheader195, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us: ; preds = %.preheader195
  %.not.i123.us = icmp eq i32 %i.br, %i.bp
  br i1 %.not.i123.us, label %bb.l, label %.preheader.i124.us

.preheader.i124.us:                               ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, %.preheader.i124.us
  %.0.i18.i125.us = phi i32 [ %i.ce, %.preheader.i124.us ], [ %i.bp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us ] ; 3 uses
  %i.cc = sext i32 %.0.i18.i125.us to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !33 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %.0.i18.i125.us
  br i1 %i.cf, label %.preheader.i124.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us: ; preds = %.preheader.i124.us
  %spec.select.i127.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i121.us, i32 %.0.i18.i125.us) ; 3 uses
  %i.cg = sext i32 %i.bp to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !33 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.bp
  br i1 %i.cj, label %.lr.ph.i.i133.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us

.lr.ph.i.i133.us:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us, %.lr.ph.i.i133.us
  %i.ck = phi i32 [ %i.co, %.lr.ph.i.i133.us ], [ %i.ci, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ] ; 2 uses
  %i.cl = phi ptr [ %i.cn, %.lr.ph.i.i133.us ], [ %i.ch, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ]
  store i32 %spec.select.i127.us, ptr %i.cl, align 4, !tbaa !33
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cm ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !33 ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.ck
  br i1 %i.cp, label %.lr.ph.i.i133.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us: ; preds = %.lr.ph.i.i133.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us
  %.lcssa.i.i129.us = phi ptr [ %i.ch, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ], [ %i.cn, %.lr.ph.i.i133.us ]
  store i32 %spec.select.i127.us, ptr %.lcssa.i.i129.us, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us
  %.1.i130.us = phi i32 [ %spec.select.i127.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us ], [ %.0.i.i121.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us ] ; 3 uses
  %i.cq = zext nneg i32 %i.br to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cq ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !33 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.br
  br i1 %i.ct, label %.lr.ph.i21.i132.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us

.lr.ph.i21.i132.us:                               ; preds = %bb.l, %.lr.ph.i21.i132.us
  %i.cu = phi i32 [ %i.cy, %.lr.ph.i21.i132.us ], [ %i.cs, %bb.l ] ; 2 uses
  %i.cv = phi ptr [ %i.cx, %.lr.ph.i21.i132.us ], [ %i.cr, %bb.l ]
  store i32 %.1.i130.us, ptr %i.cv, align 4, !tbaa !33
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cw ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !33 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cu
  br i1 %i.cz, label %.lr.ph.i21.i132.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us: ; preds = %.lr.ph.i21.i132.us, %bb.l
  %.lcssa.i20.i131.us = phi ptr [ %i.cr, %bb.l ], [ %i.cx, %.lr.ph.i21.i132.us ]
  store i32 %.1.i130.us, ptr %.lcssa.i20.i131.us, align 4, !tbaa !33
  br label %.sink.split

bb.m:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !32
  %.not98.us = icmp eq i8 %i.db, 0
  br i1 %.not98.us, label %bb.o, label %.preheader203

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !32
  %.not99.us = icmp eq i8 %i.de, 0                ; 2 uses
  br i1 %.not99.us, label %bb.q, label %bb.p

end_hunk_8
begin_hunk_9_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_4NoOpEE9FirstScanclERKNS_5RangeE:bb.a
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3432: ; preds = %bb.ca
  %i.jv = add nsw i32 %.102813.ph4437.lcssa4770, 1
  br label %bb.cy

bb.cc:                                            ; preds = %bb.bx
  %i.jw = getelementptr inbounds i8, ptr %i.dt, i64 %i.gw
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !32
  %.not2951 = icmp eq i8 %i.jx, 0
  br i1 %.not2951, label %bb.cd, label %bb.by

bb.cd:                                            ; preds = %bb.cc
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.gw
  store i32 0, ptr %i.jy, align 4, !tbaa !33
  br label %bb.cy

bb.ce:                                            ; preds = %._crit_edge4822
  br i1 %.not2963, label %bb.ck, label %bb.cf

bb.cf:                                            ; preds = %bb.cw, %bb.ck, %bb.ce
  %.pre-phi5333.a = phi i64 [ %i.gw, %bb.cw ], [ %i.ee, %bb.ck ], [ %i.ee, %bb.ce ] ; 2 uses
  %.112814 = phi i32 [ %.102813.ph4437.lcssa4770, %bb.cw ], [ %.52808.lcssa, %bb.ck ], [ %.52808.lcssa, %bb.ce ] ; 6 uses
  %i.jz = getelementptr i8, ptr %i.ah, i64 %.pre-phi5333.a
  %i.ka = getelementptr i8, ptr %i.jz, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !32
  %.not2962 = icmp eq i8 %i.kb, 0
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.pre-phi5333.a
  store i32 %.112814, ptr %i.kc, align 4, !tbaa !33
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !85
  %i.kf = sext i32 %.112814 to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kf
  store i32 %.112814, ptr %i.kg, align 4, !tbaa !33
  %.not.i3435 = icmp eq i32 %.112814, 2147483647  ; 2 uses
  br i1 %.not2962, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not.i3435, label %bb.ch, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3434

bb.ch:                                            ; preds = %bb.cg
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3434: ; preds = %bb.cg
  %i.kh = add nsw i32 %.112814, 1
  br label %bb.cy

bb.ci:                                            ; preds = %bb.cf
  br i1 %.not.i3435, label %bb.cj, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3436

bb.cj:                                            ; preds = %bb.ci
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3436: ; preds = %bb.ci
  %i.ki = add nsw i32 %.112814, 1
  br label %bb.cy

bb.ck:                                            ; preds = %bb.ce
  %i.kj = getelementptr inbounds i8, ptr %i.dt, i64 %i.ee
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !32
  %.not2959 = icmp eq i8 %i.kk, 0
  br i1 %.not2959, label %bb.cl, label %bb.cf

bb.cl:                                            ; preds = %bb.cx, %bb.cu, %bb.ck
  %.122815 = phi i32 [ %.52808.lcssa, %bb.ck ], [ %.82811, %bb.cu ], [ %.102813.ph4437.lcssa4770, %bb.cx ] ; 11 uses
  %.72797 = phi i32 [ %.lcssa4781, %bb.ck ], [ %i.ft, %bb.cu ], [ %.lcssa4752, %bb.cx ] ; 3 uses
  %i.kl = add nsw i32 %.72797, 1
  %i.km = sext i32 %i.kl to i64                   ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %i.ah, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !32
  %.not2960 = icmp eq i8 %i.ko, 0
  br i1 %.not2960, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kp = sext i32 %.72797 to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.kp
  store i32 %.122815, ptr %i.kq, align 4, !tbaa !33
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !85
  %i.kt = sext i32 %.122815 to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.kt
  store i32 %.122815, ptr %i.ku, align 4, !tbaa !33
  %.not.i3437 = icmp eq i32 %.122815, 2147483647
  br i1 %.not.i3437, label %bb.cn, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3438

bb.cn:                                            ; preds = %bb.cm
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3438: ; preds = %bb.cm
  %i.kv = add nsw i32 %.122815, 1
  br label %bb.cy

bb.co:                                            ; preds = %bb.cl
  %i.kw = getelementptr inbounds i8, ptr %i.dt, i64 %i.km
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !32
  %.not2961 = icmp eq i8 %i.kx, 0
  %i.ky = sext i32 %.72797 to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ky ; 2 uses
  br i1 %.not2961, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i32 %.122815, ptr %i.kz, align 4, !tbaa !33
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !85
  %i.lc = sext i32 %.122815 to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.lc
  store i32 %.122815, ptr %i.ld, align 4, !tbaa !33
  %.not.i3439 = icmp eq i32 %.122815, 2147483647
  br i1 %.not.i3439, label %bb.cq, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3440

bb.cq:                                            ; preds = %bb.cp
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3440: ; preds = %bb.cp
  %i.le = add nsw i32 %.122815, 1
  br label %bb.cy

bb.cr:                                            ; preds = %bb.co
  store i32 0, ptr %i.kz, align 4, !tbaa !33
  br label %bb.cy

bb.cs:                                            ; preds = %bb.av
  br i1 %.not2956, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cw, %bb.cu, %bb.cs
  %.pre-phi5334 = phi i64 [ %i.gw, %bb.cw ], [ %i.fv, %bb.cu ], [ %i.fv, %bb.cs ]
  %.132816 = phi i32 [ %.102813.ph4437.lcssa4770, %bb.cw ], [ %.82811, %bb.cu ], [ %.82811, %bb.cs ]
  %i.lf = getelementptr [4 x i8], ptr %i.dz, i64 %.pre-phi5334 ; 2 uses
  %i.lg = getelementptr i8, ptr %i.lf, i64 -8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !33
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !33
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cs
  %i.li = getelementptr inbounds i8, ptr %i.dt, i64 %i.fv
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !32
  %.not2954 = icmp eq i8 %i.lj, 0
  br i1 %.not2954, label %bb.cl, label %bb.ct

bb.cv:                                            ; preds = %.outer._crit_edge
  br i1 %.not2950, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lk = getelementptr i8, ptr %i.dt, i64 %.52795.lcssa
  %i.ll = getelementptr i8, ptr %i.lk, i64 1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !32
  %.not2949 = icmp eq i8 %i.lm, 0
  br i1 %.not2949, label %bb.cf, label %bb.ct

bb.cx:                                            ; preds = %bb.cv
  %i.ln = getelementptr inbounds i8, ptr %i.dt, i64 %i.gw
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !32
  %.not2948 = icmp eq i8 %i.lo, 0
  br i1 %.not2948, label %bb.cl, label %bb.by

bb.cy:                                            ; preds = %bb.ct, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3436, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3434, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3438, %bb.cr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3440, %bb.cd, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3432, %bb.bz, %bb.bt, %bb.bw, %bb.bv, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3428, %bb.br, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3430
  %.142817 = phi i32 [ %i.iq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3428 ], [ %i.iy, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3430 ], [ %.52808.lcssa, %bb.br ], [ %i.kh, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3434 ], [ %i.ki, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3436 ], [ %i.kv, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3438 ], [ %i.le, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3440 ], [ %.122815, %bb.cr ], [ %.82811, %bb.bt ], [ %.82811, %bb.bv ], [ %.82811, %bb.bw ], [ %.132816, %bb.ct ], [ %.102813.ph4437.lcssa4770, %bb.cd ], [ %.102813.ph4437.lcssa4770, %bb.bz ], [ %i.jv, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3432 ] ; 2 uses
  %i.lp = icmp sgt i32 %i.y, 2
  br i1 %i.lp, label %.lr.ph4848, label %._crit_edge4849

.lr.ph4848:                                       ; preds = %bb.cy
  %i.lq = add nsw i32 %i.y, %i.b
  %.027894844 = add i32 %i.b, 2
  %i.lr = icmp slt i32 %i.w, 3
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 87 uses
  %.not3379.a = icmp eq i32 %i.w, 2
  %i.lt = sext i32 %i.ea to i64                   ; 3 uses
  %i.lu = sext i32 %.027894844 to i64
  %i.lv = sext i32 %i.lq to i64
  br label %bb.cz

._crit_edge4849:                                  ; preds = %bb.abl, %bb.cy
  %.152818.lcssa = phi i32 [ %.142817, %bb.cy ], [ %.97, %bb.abl ] ; 3 uses
  br i1 %i.aa, label %bb.abm, label %bb.akl

bb.cz:                                            ; preds = %.lr.ph4848, %bb.abl
  %indvars.iv5276 = phi i64 [ %i.lu, %.lr.ph4848 ], [ %indvars.iv.next5277, %bb.abl ] ; 3 uses
  %.1528184845 = phi i32 [ %.142817, %.lr.ph4848 ], [ %.97, %bb.abl ] ; 6 uses
  %i.lw = load ptr, ptr %i.f, align 8, !tbaa !267, !nonnull !93, !align !94 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !55
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 128
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !40 ; 3 uses
  %i.mb = mul i64 %i.ma, %indvars.iv5276
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mb ; 74 uses
  %i.md = sub i64 0, %i.ma                        ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 %i.md ; 100 uses
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 %i.md ; 39 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ma ; 51 uses
  %i.mh = load ptr, ptr %i.n, align 8, !tbaa !268, !nonnull !93, !align !94 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !55
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 128
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !40 ; 2 uses
  %i.mm = mul i64 %i.ml, %indvars.iv5276
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mm ; 263 uses
  %2 = sub i64 0, %i.ml                           ; 2 uses
  %3 = getelementptr inbounds i8, ptr %i.mn, i64 %2
  %i.mo = getelementptr inbounds i8, ptr %3, i64 %2 ; 139 uses
  %i.mp = load i8, ptr %i.mc, align 1, !tbaa !32
  %.not3380 = icmp eq i8 %i.mp, 0                 ; 3 uses
  br i1 %i.lr, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  br i1 %.not3379.a, label %bb.wd, label %bb.ti

bb.db:                                            ; preds = %bb.cz
  br i1 %.not3380, label %bb.dv, label %bb.dc

bb.dc:                                            ; preds = %bb.rr, %bb.or, %bb.oi, %bb.db
  %.162819 = phi i32 [ %.1528184845, %bb.db ], [ %.502853, %bb.oi ], [ %.512854, %bb.or ], [ %.592862, %bb.rr ] ; 8 uses
  %.02764 = phi i32 [ 0, %bb.db ], [ %i.ccu, %bb.oi ], [ %i.ceu, %bb.or ], [ %i.cvk, %bb.rr ] ; 7 uses
  %i.mq = add nsw i32 %.02764, 1
  %i.mr = sext i32 %i.mq to i64                   ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.me, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !32
  %.not3090 = icmp eq i8 %i.mt, 0
  br i1 %.not3090, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mu = sext i32 %.02764 to i64                 ; 2 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !33
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.mu
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !33
  br label %.preheader4428

bb.de:                                            ; preds = %bb.dc
  %i.my = getelementptr inbounds i8, ptr %i.mc, i64 %i.mr
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !32
  %.not3091 = icmp eq i8 %i.mz, 0
  br i1 %.not3091, label %bb.dr, label %bb.df

bb.df:                                            ; preds = %bb.dx, %bb.de
  %.172820 = phi i32 [ %.202823, %bb.dx ], [ %.162819, %bb.de ] ; 8 uses
  %.12765 = phi i32 [ %.42768, %bb.dx ], [ %.02764, %bb.de ] ; 6 uses
  %i.na = add nsw i32 %.12765, 2
  %i.nb = sext i32 %i.na to i64                   ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %i.me, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !32
  %.not3242.a = icmp eq i8 %i.nd, 0
  %i.ne = sext i32 %.12765 to i64                 ; 5 uses
  %i.nf = getelementptr inbounds i8, ptr %i.me, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !32
  %.not3243 = icmp eq i8 %i.ng, 0                 ; 2 uses
  br i1 %.not3242.a, label %bb.dn, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  br i1 %.not3243, label %bb.dm, label %bb.dh

bb.dh:                                            ; preds = %bb.qs, %bb.lb, %bb.et, %bb.dg
  %.182821 = phi i32 [ %.172820, %bb.dg ], [ %.232826, %bb.et ], [ %.372840.ph, %bb.lb ], [ %.582861.ph, %bb.qs ] ; 2 uses
  %.22766 = phi i32 [ %.12765, %bb.dg ], [ %.72771, %bb.et ], [ %i.bhu, %bb.lb ], [ %i.ctb, %bb.qs ] ; 3 uses
  %i.nh = sext i32 %.22766 to i64                 ; 5 uses
  %i.ni = getelementptr i8, ptr %i.mf, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.ni, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !32
  %.not3245 = icmp eq i8 %i.nk, 0
  br i1 %.not3245, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nl = getelementptr [4 x i8], ptr %i.mo, i64 %i.nh
  %i.nm = getelementptr i8, ptr %i.nl, i64 8
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !33
  %i.no = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.nh
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !33
  br label %.preheader4433

bb.dj:                                            ; preds = %bb.dh
  %i.np = load ptr, ptr %i.ls, align 8, !tbaa !85 ; 6 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.nh ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !33 ; 4 uses
  %i.ns = getelementptr i8, ptr %i.nq, i64 8
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !33 ; 4 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %bb.dj
  %.0.i.i = phi i32 [ %i.nr, %bb.dj ], [ %i.nw, %bb.dk ] ; 4 uses
  %i.nu = sext i32 %.0.i.i to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !33 ; 2 uses
  %i.nx = icmp slt i32 %i.nw, %.0.i.i
  br i1 %i.nx, label %bb.dk, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i: ; preds = %bb.dk
  %.not.i3441 = icmp eq i32 %i.nr, %i.nt
  br i1 %.not.i3441, label %bb.dl, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i18.i = phi i32 [ %i.oa, %.preheader.i ], [ %i.nt, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.ny = sext i32 %.0.i18.i to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !33 ; 2 uses
  %i.ob = icmp slt i32 %i.oa, %.0.i18.i
  br i1 %i.ob, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i: ; preds = %.preheader.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i) ; 3 uses
  %i.oc = sext i32 %i.nt to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.oc ; 3 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !33 ; 2 uses
  %i.of = icmp slt i32 %i.oe, %i.nt
  br i1 %i.of, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, %.lr.ph.i.i
  %i.og = phi i32 [ %i.ok, %.lr.ph.i.i ], [ %i.oe, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ] ; 2 uses
  %i.oh = phi ptr [ %i.oj, %.lr.ph.i.i ], [ %i.od, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ]
  store i32 %spec.select.i, ptr %i.oh, align 4, !tbaa !33
  %i.oi = sext i32 %i.og to i64
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.oi ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !33 ; 2 uses
  %i.ol = icmp slt i32 %i.ok, %i.og
  br i1 %i.ol, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i
  %.lcssa.i.i = phi ptr [ %i.od, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ], [ %i.oj, %.lr.ph.i.i ]
  store i32 %spec.select.i, ptr %.lcssa.i.i, align 4, !tbaa !33
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i
  %.1.i = phi i32 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.om = sext i32 %i.nr to i64
  %i.on = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.om ; 3 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !33 ; 2 uses
  %i.op = icmp slt i32 %i.oo, %i.nr
  br i1 %i.op, label %.lr.ph.i21.i, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit

.lr.ph.i21.i:                                     ; preds = %bb.dl, %.lr.ph.i21.i
  %i.oq = phi i32 [ %i.ou, %.lr.ph.i21.i ], [ %i.oo, %bb.dl ] ; 2 uses
  %i.or = phi ptr [ %i.ot, %.lr.ph.i21.i ], [ %i.on, %bb.dl ]
  store i32 %.1.i, ptr %i.or, align 4, !tbaa !33
  %i.os = sext i32 %i.oq to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.os ; 3 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !33 ; 2 uses
  %i.ov = icmp slt i32 %i.ou, %i.oq
  br i1 %i.ov, label %.lr.ph.i21.i, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit: ; preds = %.lr.ph.i21.i, %bb.dl
  %.lcssa.i20.i = phi ptr [ %i.on, %bb.dl ], [ %i.ot, %.lr.ph.i21.i ]
  store i32 %.1.i, ptr %.lcssa.i20.i, align 4, !tbaa !33
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.nh
  store i32 %.1.i, ptr %i.ow, align 4, !tbaa !33
  br label %.preheader4433

bb.dm:                                            ; preds = %bb.dg
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.nb
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !33
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ne
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !33
  br label %.preheader4433

bb.dn:                                            ; preds = %bb.df
  br i1 %.not3243, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.ne
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !33
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ne
  store i32 %i.pb, ptr %i.pc, align 4, !tbaa !33
  br label %bb.ja

bb.dp:                                            ; preds = %bb.dn
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ne
  store i32 %.172820, ptr %i.pd, align 4, !tbaa !33
  %i.pe = load ptr, ptr %i.ls, align 8, !tbaa !85
  %i.pf = sext i32 %.172820 to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pe, i64 %i.pf
  store i32 %.172820, ptr %i.pg, align 4, !tbaa !33
  %.not.i3442 = icmp eq i32 %.172820, 2147483647
  br i1 %.not.i3442, label %bb.dq, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3443

bb.dq:                                            ; preds = %bb.dp
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3443: ; preds = %bb.dp
  %i.ph = add nsw i32 %.172820, 1
  br label %bb.id

bb.dr:                                            ; preds = %bb.de
  %i.pi = sext i32 %.02764 to i64                 ; 4 uses
  %i.pj = getelementptr inbounds i8, ptr %i.me, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !32
  %.not3092 = icmp eq i8 %i.pk, 0
  br i1 %.not3092, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.pi
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !33
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.pi
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !33
  br label %bb.oo

bb.dt:                                            ; preds = %bb.dr
  %i.po = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.pi
  store i32 %.162819, ptr %i.po, align 4, !tbaa !33
  %i.pp = load ptr, ptr %i.ls, align 8, !tbaa !85
  %i.pq = sext i32 %.162819 to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.pp, i64 %i.pq
end_hunk_9
begin_hunk_10_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_4NoOpEE9FirstScanclERKNS_5RangeE:bb.a
  store i32 %.1.i4353, ptr %i.eql, align 4, !tbaa !33
  %i.eqm = sext i32 %i.eqk to i64
  %i.eqn = getelementptr inbounds [4 x i8], ptr %i.epi, i64 %i.eqm ; 3 uses
  %i.eqo = load i32, ptr %i.eqn, align 4, !tbaa !33 ; 2 uses
  %i.eqp = icmp slt i32 %i.eqo, %i.eqk
  br i1 %i.eqp, label %.lr.ph.i21.i4355, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4357, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4357: ; preds = %.lr.ph.i21.i4355, %bb.aan
  %.lcssa.i20.i4354 = phi ptr [ %i.eqh, %bb.aan ], [ %i.eqn, %.lr.ph.i21.i4355 ]
  store i32 %.1.i4353, ptr %.lcssa.i20.i4354, align 4, !tbaa !33
  store i32 %.1.i4353, ptr %i.epl, align 4, !tbaa !33
  br label %bb.abl

bb.aao:                                           ; preds = %bb.aah
  %i.eqq = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.cew
  %i.eqr = load i8, ptr %i.eqq, align 1, !tbaa !32
  %.not3218 = icmp eq i8 %i.eqr, 0
  br i1 %.not3218, label %bb.wj, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.eqs = sext i32 %.35 to i64                   ; 2 uses
  %i.eqt = getelementptr i8, ptr %i.mc, i64 %i.eqs
  %i.equ = getelementptr i8, ptr %i.eqt, i64 3
  %i.eqv = load i8, ptr %i.equ, align 1, !tbaa !32
  %.not3219 = icmp eq i8 %i.eqv, 0
  br i1 %.not3219, label %bb.up, label %bb.aai

bb.aaq:                                           ; preds = %._crit_edge4841
  br i1 %.not3372.a, label %bb.aaw, label %bb.aar

bb.aar:                                           ; preds = %bb.aaq
  %i.eqw = add nsw i32 %.42.lcssa, 1
  %i.eqx = zext nneg i32 %i.eqw to i64            ; 2 uses
  %i.eqy = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.eqx
  %i.eqz = load i8, ptr %i.eqy, align 1, !tbaa !32
  %.not3364.a = icmp eq i8 %i.eqz, 0
  br i1 %.not3364.a, label %bb.aas, label %bb.zf

bb.aas:                                           ; preds = %bb.aar
  %i.era = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.eqx
  %i.erb = load i8, ptr %i.era, align 1, !tbaa !32
  %.not3365 = icmp eq i8 %i.erb, 0
  br i1 %.not3365, label %bb.aat, label %bb.zf

bb.aat:                                           ; preds = %bb.aas
  %i.erc = sext i32 %.42.lcssa to i64
  %i.erd = getelementptr i8, ptr %i.me, i64 %i.erc
  %i.ere = getelementptr i8, ptr %i.erd, i64 3
  %i.erf = load i8, ptr %i.ere, align 1, !tbaa !32
  %.not3366 = icmp eq i8 %i.erf, 0
  br i1 %.not3366, label %bb.vk, label %bb.aau

bb.aau:                                           ; preds = %bb.aat
  %i.erg = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.csj
  %i.erh = load i8, ptr %i.erg, align 1, !tbaa !32
  %.not3367 = icmp eq i8 %i.erh, 0
  br i1 %.not3367, label %bb.wt, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.eri = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.csj
  %i.erj = load i32, ptr %i.eri, align 4, !tbaa !33
  %i.erk = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.csj
  store i32 %i.erj, ptr %i.erk, align 4, !tbaa !33
  br label %bb.abl

bb.aaw:                                           ; preds = %bb.aaq
  %i.erl = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.csj
  %i.erm = load i8, ptr %i.erl, align 1, !tbaa !32
  %.not3358 = icmp eq i8 %i.erm, 0
  br i1 %.not3358, label %bb.wj, label %bb.aax

bb.aax:                                           ; preds = %bb.aaw
  %i.ern = add nsw i32 %.42.lcssa, 3
  %i.ero = zext nneg i32 %i.ern to i64            ; 2 uses
  %i.erp = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ero
  %i.erq = load i8, ptr %i.erp, align 1, !tbaa !32
  %.not3359 = icmp eq i8 %i.erq, 0
  br i1 %.not3359, label %bb.vo, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.err = add nsw i32 %.42.lcssa, 1
  %i.ers = zext nneg i32 %i.err to i64            ; 2 uses
  %i.ert = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ers
  %i.eru = load i8, ptr %i.ert, align 1, !tbaa !32
  %.not3360 = icmp eq i8 %i.eru, 0
  br i1 %.not3360, label %bb.aaz, label %bb.zf

bb.aaz:                                           ; preds = %bb.aay
  %i.erv = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.ers
  %i.erw = load i8, ptr %i.erv, align 1, !tbaa !32
  %.not3361 = icmp eq i8 %i.erw, 0
  br i1 %.not3361, label %bb.we, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %i.erx = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.ero
  %i.ery = load i8, ptr %i.erx, align 1, !tbaa !32
  %.not3362 = icmp eq i8 %i.ery, 0
  br i1 %.not3362, label %bb.abb, label %._crit_edge5346.a

._crit_edge5346.a:                                ; preds = %bb.aba
  %.pre5377 = sext i32 %.lcssa4676 to i64
  br label %bb.zg

bb.abb:                                           ; preds = %bb.aba
  %i.erz = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.csj
  %i.esa = load i8, ptr %i.erz, align 1, !tbaa !32
  %.not3363 = icmp eq i8 %i.esa, 0
  br i1 %.not3363, label %bb.abd, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  %i.esb = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.csj
  %i.esc = load i32, ptr %i.esb, align 4, !tbaa !33
  %i.esd = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.csj
  store i32 %i.esc, ptr %i.esd, align 4, !tbaa !33
  br label %bb.abl

bb.abd:                                           ; preds = %bb.abb
  %i.ese = sext i32 %.42.lcssa to i64
  %i.esf = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ese
  %i.esg = load i32, ptr %i.esf, align 4, !tbaa !33
  %i.esh = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.csj
  store i32 %i.esg, ptr %i.esh, align 4, !tbaa !33
  br label %bb.abl

bb.abe:                                           ; preds = %bb.rp
  br i1 %.not3325.a, label %bb.abj, label %._crit_edge5345

._crit_edge5345:                                  ; preds = %bb.abe
  %.pre5379 = sext i32 %.43 to i64
  br label %bb.abf

bb.abf:                                           ; preds = %._crit_edge5345, %bb.abk
  %.pre-phi5380 = phi i64 [ %.pre5379, %._crit_edge5345 ], [ %i.esw, %bb.abk ] ; 2 uses
  %i.esi = getelementptr i8, ptr %i.mg, i64 %.pre-phi5380
  %i.esj = getelementptr i8, ptr %i.esi, i64 1
  %i.esk = load i8, ptr %i.esj, align 1, !tbaa !32
  %.not3321.a = icmp eq i8 %i.esk, 0
  br i1 %.not3321.a, label %bb.we, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  %i.esl = getelementptr i8, ptr %i.me, i64 %.pre-phi5380 ; 2 uses
  %i.esm = getelementptr i8, ptr %i.esl, i64 3
  %i.esn = load i8, ptr %i.esm, align 1, !tbaa !32
  %.not3322 = icmp eq i8 %i.esn, 0
  br i1 %.not3322, label %bb.vx, label %bb.abh

bb.abh:                                           ; preds = %bb.abg
  %i.eso = load i8, ptr %i.esl, align 1, !tbaa !32
  %.not3323 = icmp eq i8 %i.eso, 0
  br i1 %.not3323, label %bb.abi, label %bb.aak

bb.abi:                                           ; preds = %bb.abh
  %i.esp = load ptr, ptr %i.ls, align 8, !tbaa !85
  %i.esq = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.cvm
  %i.esr = load i32, ptr %i.esq, align 4, !tbaa !33
  %i.ess = tail call fastcc noundef i32 @_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_(ptr noundef %i.esp, i32 noundef %i.esr, i32 noundef %i.cvj)
  %i.est = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.cvm
  store i32 %i.ess, ptr %i.est, align 4, !tbaa !33
  br label %bb.abl

bb.abj:                                           ; preds = %bb.abe
  %i.esu = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.cvm
  %i.esv = load i8, ptr %i.esu, align 1, !tbaa !32
  %.not3319 = icmp eq i8 %i.esv, 0
  br i1 %.not3319, label %bb.wj, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.esw = sext i32 %.43 to i64                   ; 2 uses
  %i.esx = getelementptr i8, ptr %i.mc, i64 %i.esw
  %i.esy = getelementptr i8, ptr %i.esx, i64 3
  %i.esz = load i8, ptr %i.esy, align 1, !tbaa !32
  %.not3320 = icmp eq i8 %i.esz, 0
  br i1 %.not3320, label %bb.up, label %bb.abf

bb.abl:                                           ; preds = %bb.aav, %bb.abc, %bb.abd, %bb.aaf, %bb.aac, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4343, %bb.zq, %bb.zh, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4329, %bb.zj, %bb.zn, %bb.yy, %bb.yx, %bb.zd, %bb.zb, %bb.yu, %bb.yr, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4315, %bb.yc, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4299, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4301, %bb.yi, %bb.yf, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4215, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4229, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4257, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4271, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4285, %bb.xw, %bb.wr, %bb.wu, %bb.wv, %bb.ww, %bb.wf, %bb.wn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4201, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4199, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4197, %bb.wc, %bb.vj, %bb.vm, %bb.vl, %bb.vh, %bb.vp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4183, %bb.vr, %bb.vu, %bb.ve, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4181, %bb.va, %bb.uq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4167, %bb.ut, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4165, %bb.ug, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4151, %bb.uj, %bb.ui, %bb.tu, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4137, %bb.ts, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4133, %bb.tk, %bb.tp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4135, %bb.abi, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4357, %bb.ul
  %.97 = phi i32 [ %.83, %bb.ww ], [ %.592862, %bb.wc ], [ %.512854, %bb.ve ], [ %.372840.ph, %bb.yy ], [ %.492852.ph, %bb.aaf ], [ %.81, %bb.wn ], [ %.69, %bb.ul ], [ %i.djc, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4137 ], [ %.332836, %bb.yu ], [ %.70, %bb.ut ], [ %.582861.ph, %bb.vu ], [ %.382841, %bb.zq ], [ %i.qx, %bb.xw ], [ %.662869, %bb.ug ], [ %.96, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4357 ], [ %.592862, %bb.abi ], [ %.312834, %bb.yf ], [ %.612864, %bb.tp ], [ %.602863, %bb.tk ], [ %i.did, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4133 ], [ %i.dil, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4135 ], [ %.632866, %bb.ts ], [ %.632866, %bb.tu ], [ %.672870, %bb.ui ], [ %.672870, %bb.uj ], [ %.652868, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4151 ], [ %.662869, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4165 ], [ %.71, %bb.uq ], [ %i.dnl, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4167 ], [ %.73, %bb.va ], [ %.73, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4181 ], [ %.582861.ph, %bb.vh ], [ %.582861.ph, %bb.vj ], [ %.582861.ph, %bb.vl ], [ %.582861.ph, %bb.vm ], [ %.582861.ph, %bb.vp ], [ %.582861.ph, %bb.vr ], [ %i.drk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4183 ], [ %.76, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4197 ], [ %.78, %bb.wf ], [ %i.dty, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4199 ], [ %i.dul, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4201 ], [ %.84, %bb.wu ], [ %.84, %bb.wv ], [ %.83, %bb.wr ], [ %.86, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4215 ], [ %.86, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4229 ], [ %.86, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4257 ], [ %.86, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4271 ], [ %.87, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4285 ], [ %.89, %bb.yi ], [ %i.egw, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4301 ], [ %.312834, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4299 ], [ %.312834, %bb.yc ], [ %.332836, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4315 ], [ %.332836, %bb.yr ], [ %.372840.ph, %bb.zb ], [ %.372840.ph, %bb.zd ], [ %.372840.ph, %bb.yx ], [ %.92, %bb.zh ], [ %.92, %bb.zj ], [ %.92, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4329 ], [ %.91, %bb.zn ], [ %.492852.ph, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4343 ], [ %.492852.ph, %bb.aac ], [ %.582861.ph, %bb.abd ], [ %.582861.ph, %bb.abc ], [ %.582861.ph, %bb.aav ] ; 2 uses
  %indvars.iv.next5277 = add nsw i64 %indvars.iv5276, 2 ; 2 uses
  %i.eta = icmp slt i64 %indvars.iv.next5277, %i.lv
  br i1 %i.eta, label %bb.cz, label %._crit_edge4849, !llvm.loop !266

bb.abm:                                           ; preds = %._crit_edge4849
  %i.etb = add nsw i32 %.sroa.speculated, -1
  %i.etc = load ptr, ptr %i.f, align 8, !tbaa !267, !nonnull !93, !align !94 ; 2 uses
  %i.etd = getelementptr inbounds nuw i8, ptr %i.etc, i64 24
  %i.ete = load ptr, ptr %i.etd, align 8, !tbaa !55
  %i.etf = getelementptr inbounds nuw i8, ptr %i.etc, i64 128
  %i.etg = load i64, ptr %i.etf, align 8, !tbaa !40 ; 2 uses
  %i.eth = sext i32 %i.etb to i64                 ; 2 uses
  %i.eti = mul i64 %i.etg, %i.eth
  %i.etj = getelementptr inbounds nuw i8, ptr %i.ete, i64 %i.eti ; 35 uses
  %i.etk = sub i64 0, %i.etg                      ; 2 uses
  %i.etl = getelementptr inbounds i8, ptr %i.etj, i64 %i.etk ; 53 uses
  %i.etm = getelementptr inbounds i8, ptr %i.etl, i64 %i.etk ; 20 uses
  %i.etn = load ptr, ptr %i.n, align 8, !tbaa !268, !nonnull !93, !align !94 ; 2 uses
  %i.eto = getelementptr inbounds nuw i8, ptr %i.etn, i64 24
  %i.etp = load ptr, ptr %i.eto, align 8, !tbaa !55
  %i.etq = getelementptr inbounds nuw i8, ptr %i.etn, i64 128
  %i.etr = load i64, ptr %i.etq, align 8, !tbaa !40 ; 2 uses
  %i.ets = mul i64 %i.etr, %i.eth
  %i.ett = getelementptr inbounds nuw i8, ptr %i.etp, i64 %i.ets ; 120 uses
  %4 = sub i64 0, %i.etr                          ; 2 uses
  %5 = getelementptr inbounds i8, ptr %i.ett, i64 %4
  %i.etu = getelementptr inbounds i8, ptr %5, i64 %4 ; 70 uses
  br i1 %.not4818, label %.lr.ph4885, label %._crit_edge4886

.lr.ph4885:                                       ; preds = %bb.abm
  %i.etv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 34 uses
  %i.etw = zext nneg i32 %i.ea to i64             ; 3 uses
  br label %bb.abn

._crit_edge4886:                                  ; preds = %.backedge4427.a, %bb.abm
  %.98.lcssa = phi i32 [ %.152818.lcssa, %bb.abm ], [ %.98.be, %.backedge4427.a ] ; 4 uses
  %.lcssa4521 = phi i32 [ 0, %bb.abm ], [ %i.ewy, %.backedge4427.a ] ; 2 uses
  %i.etx = icmp sgt i32 %.lcssa4521, %i.ea
  %i.ety = sext i32 %.lcssa4521 to i64            ; 5 uses
  %i.etz = getelementptr inbounds i8, ptr %i.etj, i64 %i.ety
  %i.eua = load i8, ptr %i.etz, align 1, !tbaa !32
  %.not3087 = icmp eq i8 %i.eua, 0                ; 2 uses
  br i1 %i.etx, label %bb.ahg, label %bb.aie

bb.abn:                                           ; preds = %.lr.ph4885, %.backedge4427.a
  %i.eub = phi i32 [ 0, %.lr.ph4885 ], [ %i.ewy, %.backedge4427.a ] ; 6 uses
  %.04883 = phi i32 [ -2, %.lr.ph4885 ], [ %.0.be, %.backedge4427.a ]
  %.984882 = phi i32 [ %.152818.lcssa, %.lr.ph4885 ], [ %.98.be, %.backedge4427.a ] ; 9 uses
  %i.euc = sext i32 %i.eub to i64                 ; 7 uses
  %i.eud = getelementptr inbounds i8, ptr %i.etj, i64 %i.euc
  %i.eue = load i8, ptr %i.eud, align 1, !tbaa !32
  %.not2966 = icmp eq i8 %i.eue, 0
  br i1 %.not2966, label %.loopexit4420, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  %i.euf = add nsw i32 %.04883, 3
  %i.eug = sext i32 %i.euf to i64                 ; 2 uses
  %i.euh = getelementptr inbounds i8, ptr %i.etl, i64 %i.eug
  %i.eui = load i8, ptr %i.euh, align 1, !tbaa !32
  %.not2967 = icmp eq i8 %i.eui, 0
  br i1 %.not2967, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.euj = getelementptr inbounds [4 x i8], ptr %i.etu, i64 %i.euc
  %i.euk = load i32, ptr %i.euj, align 4, !tbaa !33
  %i.eul = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.euc
  store i32 %i.euk, ptr %i.eul, align 4, !tbaa !33
  br label %.preheader4419

bb.abq:                                           ; preds = %bb.abo
  %i.eum = getelementptr inbounds i8, ptr %i.etj, i64 %i.eug
  %i.eun = load i8, ptr %i.eum, align 1, !tbaa !32
  %.not2968 = icmp eq i8 %i.eun, 0
  br i1 %.not2968, label %bb.acc, label %bb.abr

bb.abr:                                           ; preds = %bb.acg, %bb.abq
  %.99 = phi i32 [ %.101, %bb.acg ], [ %.984882, %bb.abq ] ; 8 uses
  %.1 = phi i32 [ %.3, %bb.acg ], [ %i.eub, %bb.abq ] ; 6 uses
  %i.euo = add nsw i32 %.1, 2
  %i.eup = sext i32 %i.euo to i64                 ; 2 uses
  %i.euq = getelementptr inbounds i8, ptr %i.etl, i64 %i.eup
  %i.eur = load i8, ptr %i.euq, align 1, !tbaa !32
  %.not3026 = icmp eq i8 %i.eur, 0
  %i.eus = sext i32 %.1 to i64                    ; 4 uses
  %i.eut = getelementptr inbounds i8, ptr %i.etl, i64 %i.eus
  %i.euu = load i8, ptr %i.eut, align 1, !tbaa !32
  %.not3027 = icmp eq i8 %i.euu, 0                ; 2 uses
  br i1 %.not3026, label %bb.abz, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  br i1 %.not3027, label %bb.aby, label %bb.abt

bb.abt:                                           ; preds = %bb.agl, %bb.afj, %bb.acv, %bb.abs
  %.100 = phi i32 [ %.99, %bb.abs ], [ %.102, %bb.acv ], [ %.110.ph, %bb.afj ], [ %.113.ph, %bb.agl ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.abs ], [ %i.exo, %bb.acv ], [ %i.fja, %bb.afj ], [ %i.fob, %bb.agl ] ; 3 uses
  %i.euv = sext i32 %.2 to i64                    ; 5 uses
  %i.euw = getelementptr i8, ptr %i.etm, i64 %i.euv
  %i.eux = getelementptr i8, ptr %i.euw, i64 1
  %i.euy = load i8, ptr %i.eux, align 1, !tbaa !32
  %.not3047 = icmp eq i8 %i.euy, 0
  br i1 %.not3047, label %bb.abv, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.euz = getelementptr [4 x i8], ptr %i.etu, i64 %i.euv
  %i.eva = getelementptr i8, ptr %i.euz, i64 8
  %i.evb = load i32, ptr %i.eva, align 4, !tbaa !33
  %i.evc = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.euv
  store i32 %i.evb, ptr %i.evc, align 4, !tbaa !33
  br label %.preheader4425

bb.abv:                                           ; preds = %bb.abt
  %i.evd = load ptr, ptr %i.etv, align 8, !tbaa !85 ; 6 uses
  %i.eve = getelementptr inbounds [4 x i8], ptr %i.etu, i64 %i.euv ; 2 uses
  %i.evf = load i32, ptr %i.eve, align 4, !tbaa !33 ; 4 uses
  %i.evg = getelementptr i8, ptr %i.eve, i64 8
  %i.evh = load i32, ptr %i.evg, align 4, !tbaa !33 ; 4 uses
  br label %bb.abw

bb.abw:                                           ; preds = %bb.abw, %bb.abv
  %.0.i.i4358 = phi i32 [ %i.evf, %bb.abv ], [ %i.evk, %bb.abw ] ; 4 uses
  %i.evi = sext i32 %.0.i.i4358 to i64
  %i.evj = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.evi
  %i.evk = load i32, ptr %i.evj, align 4, !tbaa !33 ; 2 uses
  %i.evl = icmp slt i32 %i.evk, %.0.i.i4358
  br i1 %i.evl, label %bb.abw, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359: ; preds = %bb.abw
  %.not.i4360 = icmp eq i32 %i.evf, %i.evh
  br i1 %.not.i4360, label %bb.abx, label %.preheader.i4361

.preheader.i4361:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359, %.preheader.i4361
  %.0.i18.i4362 = phi i32 [ %i.evo, %.preheader.i4361 ], [ %i.evh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359 ] ; 3 uses
  %i.evm = sext i32 %.0.i18.i4362 to i64
  %i.evn = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.evm
  %i.evo = load i32, ptr %i.evn, align 4, !tbaa !33 ; 2 uses
  %i.evp = icmp slt i32 %i.evo, %.0.i18.i4362
  br i1 %i.evp, label %.preheader.i4361, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363: ; preds = %.preheader.i4361
  %spec.select.i4364 = tail call i32 @llvm.smin.i32(i32 %.0.i.i4358, i32 %.0.i18.i4362) ; 3 uses
  %i.evq = sext i32 %i.evh to i64
  %i.evr = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.evq ; 3 uses
  %i.evs = load i32, ptr %i.evr, align 4, !tbaa !33 ; 2 uses
  %i.evt = icmp slt i32 %i.evs, %i.evh
  br i1 %i.evt, label %.lr.ph.i.i4370, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365

.lr.ph.i.i4370:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363, %.lr.ph.i.i4370
  %i.evu = phi i32 [ %i.evy, %.lr.ph.i.i4370 ], [ %i.evs, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363 ] ; 2 uses
  %i.evv = phi ptr [ %i.evx, %.lr.ph.i.i4370 ], [ %i.evr, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363 ]
  store i32 %spec.select.i4364, ptr %i.evv, align 4, !tbaa !33
  %i.evw = sext i32 %i.evu to i64
  %i.evx = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.evw ; 3 uses
  %i.evy = load i32, ptr %i.evx, align 4, !tbaa !33 ; 2 uses
  %i.evz = icmp slt i32 %i.evy, %i.evu
  br i1 %i.evz, label %.lr.ph.i.i4370, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365: ; preds = %.lr.ph.i.i4370, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363
  %.lcssa.i.i4366 = phi ptr [ %i.evr, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363 ], [ %i.evx, %.lr.ph.i.i4370 ]
  store i32 %spec.select.i4364, ptr %.lcssa.i.i4366, align 4, !tbaa !33
  br label %bb.abx

bb.abx:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359
  %.1.i4367 = phi i32 [ %spec.select.i4364, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365 ], [ %.0.i.i4358, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359 ] ; 3 uses
  %i.ewa = sext i32 %i.evf to i64
  %i.ewb = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.ewa ; 3 uses
  %i.ewc = load i32, ptr %i.ewb, align 4, !tbaa !33 ; 2 uses
  %i.ewd = icmp slt i32 %i.ewc, %i.evf
  br i1 %i.ewd, label %.lr.ph.i21.i4369, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4371

.lr.ph.i21.i4369:                                 ; preds = %bb.abx, %.lr.ph.i21.i4369
  %i.ewe = phi i32 [ %i.ewi, %.lr.ph.i21.i4369 ], [ %i.ewc, %bb.abx ] ; 2 uses
  %i.ewf = phi ptr [ %i.ewh, %.lr.ph.i21.i4369 ], [ %i.ewb, %bb.abx ]
  store i32 %.1.i4367, ptr %i.ewf, align 4, !tbaa !33
  %i.ewg = sext i32 %i.ewe to i64
  %i.ewh = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.ewg ; 3 uses
  %i.ewi = load i32, ptr %i.ewh, align 4, !tbaa !33 ; 2 uses
  %i.ewj = icmp slt i32 %i.ewi, %i.ewe
  br i1 %i.ewj, label %.lr.ph.i21.i4369, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4371, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4371: ; preds = %.lr.ph.i21.i4369, %bb.abx
  %.lcssa.i20.i4368 = phi ptr [ %i.ewb, %bb.abx ], [ %i.ewh, %.lr.ph.i21.i4369 ]
  store i32 %.1.i4367, ptr %.lcssa.i20.i4368, align 4, !tbaa !33
  %i.ewk = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.euv
  store i32 %.1.i4367, ptr %i.ewk, align 4, !tbaa !33
  br label %.preheader4425

bb.aby:                                           ; preds = %bb.abs
  %i.ewl = getelementptr inbounds [4 x i8], ptr %i.etu, i64 %i.eup
  %i.ewm = load i32, ptr %i.ewl, align 4, !tbaa !33
  %i.ewn = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.eus
  store i32 %i.ewm, ptr %i.ewn, align 4, !tbaa !33
  br label %.preheader4425

bb.abz:                                           ; preds = %bb.abr
  br i1 %.not3027, label %bb.aca, label %bb.aee

bb.aca:                                           ; preds = %bb.abz
  %i.ewo = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.eus
  store i32 %.99, ptr %i.ewo, align 4, !tbaa !33
  %i.ewp = load ptr, ptr %i.etv, align 8, !tbaa !85
  %i.ewq = sext i32 %.99 to i64
  %i.ewr = getelementptr inbounds [4 x i8], ptr %i.ewp, i64 %i.ewq
  store i32 %.99, ptr %i.ewr, align 4, !tbaa !33
  %.not.i4372 = icmp eq i32 %.99, 2147483647
  br i1 %.not.i4372, label %bb.acb, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4373

bb.acb:                                           ; preds = %bb.aca
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4373: ; preds = %bb.aca
  %i.ews = add nsw i32 %.99, 1
  br label %bb.adn

bb.acc:                                           ; preds = %bb.abq
  %i.ewt = getelementptr inbounds i8, ptr %i.etl, i64 %i.euc
  %i.ewu = load i8, ptr %i.ewt, align 1, !tbaa !32
  %.not2969 = icmp eq i8 %i.ewu, 0
  br i1 %.not2969, label %bb.ace, label %bb.acd

bb.acd:                                           ; preds = %bb.acc
  %i.ewv = getelementptr inbounds [4 x i8], ptr %i.etu, i64 %i.euc
  %i.eww = load i32, ptr %i.ewv, align 4, !tbaa !33
  %i.ewx = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.euc
  store i32 %i.eww, ptr %i.ewx, align 4, !tbaa !33
  br label %.backedge4427.a

end_hunk_10
begin_hunk_11_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
bb.m:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %3, 8
  br i1 %i.y, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4311) #16
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079

bb.r:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077, %bb.q
  %.pn1856 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit3250

bb.s:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.b, 1
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i32 %i.n, 1
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = add nsw i64 %i.am, 1                    ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 4611686018427387903
  br i1 %i.ao, label %.noexc, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, label %.noexc2080

.noexc2080:                                       ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 1                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !54
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.an
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %.noexc2080, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.as, %.noexc2080 ] ; 2 uses
  %.sroa.03251.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aq, %.noexc2080 ] ; 461 uses
  %i.at = icmp sgt i32 %i.b, 0
  br i1 %i.at, label %.lr.ph3516, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph3516:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ay = icmp sgt i32 %i.n, 0
  %i.az = sext i32 %i.n to i64                    ; 13 uses
  %i.ba = zext nneg i32 %i.b to i64
  br label %bb.aa

._crit_edge3517:                                  ; preds = %._crit_edge
  %i.bb = icmp ugt i16 %.1.lcssa, 1
  br i1 %i.bb, label %.lr.ph.preheader.i, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge3517
  %wide.trip.count.i = zext i16 %.1.lcssa to i64
  %i.bc = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bd = icmp eq i16 %.1.lcssa, 2
  br i1 %i.bd, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bc, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 5 uses
  %.01517.i = phi i16 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.x ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !54
  %i.bg = zext i16 %i.bf to i64                   ; 2 uses
  %i.bh = icmp samesign ugt i64 %indvars.iv.i, %i.bg
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bg
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !54
  br label %.lr.ph.i.1

bb.u:                                             ; preds = %.lr.ph.i
  %i.bk = add i16 %.01517.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.u, %bb.t
  %.01517.sink.i = phi i16 [ %i.bj, %bb.t ], [ %.01517.i, %bb.u ]
  %.1.i = phi i16 [ %.01517.i, %bb.t ], [ %i.bk, %bb.u ] ; 3 uses
  store i16 %.01517.sink.i, ptr %i.be, align 2, !tbaa !54
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !54
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %.not4502 = icmp samesign ult i64 %indvars.iv.i, %i.bo
  br i1 %.not4502, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.1
  %i.bp = add i16 %.1.i, 1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.1
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bo
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.01517.sink.i.1 = phi i16 [ %i.br, %bb.w ], [ %.1.i, %bb.v ]
  %.1.i.1 = phi i16 [ %.1.i, %bb.w ], [ %i.bp, %bb.v ] ; 3 uses
  store i16 %.01517.sink.i.1, ptr %i.bm, align 2, !tbaa !54
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01517.i.epil.init = phi i16 [ 1, %.lr.ph.preheader.i ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4501 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod4501)
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !54
  %i.bu = zext i16 %i.bt to i64                   ; 2 uses
  %i.bv = icmp samesign ugt i64 %indvars.iv.i.epil.init, %i.bu
  br i1 %i.bv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bw = add i16 %.01517.i.epil.init, 1
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bu
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa: ; preds = %bb.z, %bb.y
  %.01517.sink.i.epil = phi i16 [ %i.by, %bb.z ], [ %.01517.i.epil.init, %bb.y ]
  %.1.i.epil = phi i16 [ %.01517.i.epil.init, %bb.z ], [ %i.bw, %bb.y ]
  store i16 %.01517.sink.i.epil, ptr %i.bs, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit: ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, %._crit_edge3517
  %.015.lcssa.i = phi i16 [ 1, %._crit_edge3517 ], [ 1, %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa ] ; 2 uses
  %i.bz = zext i16 %.015.lcssa.i to i32
  invoke void @_ZN2cv19connectedcomponents9CCStatsOp4initEi(ptr noundef nonnull align 8 dereferenceable(460) %4, i32 noundef %i.bz)
          to label %bb.rc unwind label %bb.uk

bb.aa:                                            ; preds = %.lr.ph3516, %._crit_edge
  %indvars.iv3692 = phi i64 [ 0, %.lr.ph3516 ], [ %indvars.iv.next3693, %._crit_edge ] ; 5 uses
  %.017903514 = phi i16 [ 1, %.lr.ph3516 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.cb = load i64, ptr %i.av, align 8, !tbaa !40 ; 3 uses
  %i.cc = mul i64 %i.cb, %indvars.iv3692
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc ; 21 uses
  %i.ce = sub i64 0, %i.cb                        ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce ; 73 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.ce ; 39 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb ; 5 uses
  %i.ci = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.cj = load i64, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %i.ck = mul i64 %i.cj, %indvars.iv3692
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck ; 221 uses
  %11 = sub i64 0, %i.cj                          ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.cl, i64 %11
  %i.cm = getelementptr inbounds i8, ptr %12, i64 %11 ; 101 uses
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aa
  %.not2029 = icmp eq i64 %indvars.iv3692, 0      ; 15 uses
  %i.cn = or disjoint i64 %indvars.iv3692, 1
  %i.co = icmp samesign ult i64 %i.cn, %i.ba      ; 3 uses
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.rb, %bb.aa
  %.1.lcssa = phi i16 [ %.017903514, %bb.aa ], [ %.2, %bb.rb ] ; 4 uses
  %indvars.iv.next3693 = add nuw nsw i64 %indvars.iv3692, 2 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next3693 to i32
  %i.cq = icmp sgt i32 %i.b, %i.cp
  br i1 %i.cq, label %bb.aa, label %._crit_edge3517, !llvm.loop !317

bb.ab:                                            ; preds = %.lr.ph, %bb.rb
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.rb ] ; 265 uses
  %.13511 = phi i16 [ %.017903514, %.lr.ph ], [ %.2, %bb.rb ] ; 161 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !32
  %.not1883 = icmp eq i8 %i.cs, 0
  br i1 %.not1883, label %bb.ke, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1957 = icmp eq i64 %indvars.iv, 0          ; 5 uses
  br i1 %.not1957, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !32
  %.not1958 = icmp eq i8 %i.cv, 0
  br i1 %.not1958, label %bb.by, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.cx = icmp sge i64 %i.cw, %i.az               ; 2 uses
  %or.cond = or i1 %.not2029, %i.cx
  br i1 %or.cond, label %bb.ax, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !32
  %.not2030 = icmp eq i8 %i.cz, 0
  br i1 %.not2030, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !32
  %.not2040 = icmp eq i8 %i.db, 0
  br i1 %.not2040, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr [2 x i8], ptr %i.cl, i64 %indvars.iv ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !54
  store i16 %i.de, ptr %i.dc, align 2, !tbaa !54
  br label %bb.rb

bb.ai:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !32
  %.not2041 = icmp eq i8 %i.dg, 0
  br i1 %.not2041, label %bb.au, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ct
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !32
  %.not2042 = icmp eq i8 %i.di, 0
  br i1 %.not2042, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = getelementptr [2 x i8], ptr %i.cl, i64 %indvars.iv ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -4
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !54
  store i16 %i.dl, ptr %i.dj, align 2, !tbaa !54
  br label %bb.rb

bb.al:                                            ; preds = %bb.aj
  %i.dm = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !32
  %.not2043 = icmp eq i8 %i.do, 0
  br i1 %.not2043, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ct
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !32
  %.not2044 = icmp eq i8 %i.dq, 0
  br i1 %.not2044, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.dm
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !54
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !54
  br label %bb.rb

bb.ao:                                            ; preds = %bb.am
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !54 ; 4 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.dm
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !54 ; 4 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i = phi i16 [ %i.dv, %bb.ao ], [ %i.ea, %bb.ap ] ; 4 uses
  %i.dy = zext i16 %.0.i.i to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !54 ; 2 uses
  %i.eb = icmp ult i16 %i.ea, %.0.i.i
  br i1 %i.eb, label %bb.ap, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i: ; preds = %bb.ap
  %.not.i = icmp eq i16 %i.dv, %i.dx
  br i1 %.not.i, label %bb.aq, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i15.i = phi i16 [ %i.ee, %.preheader.i ], [ %i.dx, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.ec = zext i16 %.0.i15.i to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !54 ; 2 uses
  %i.ef = icmp ult i16 %i.ee, %.0.i15.i
  br i1 %i.ef, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i: ; preds = %.preheader.i
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %.0.i.i, i16 %.0.i15.i) ; 3 uses
  %i.eg = zext i16 %i.dx to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.eg ; 3 uses
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !54 ; 2 uses
  %i.ej = icmp ult i16 %i.ei, %i.dx
  br i1 %i.ej, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i, %.lr.ph.i.i
  %i.ek = phi i16 [ %i.eo, %.lr.ph.i.i ], [ %i.ei, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ] ; 2 uses
  %i.el = phi ptr [ %i.en, %.lr.ph.i.i ], [ %i.eh, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ]
  store i16 %spec.select.i, ptr %i.el, align 2, !tbaa !54
  %i.em = zext i16 %i.ek to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !54 ; 2 uses
  %i.ep = icmp ult i16 %i.eo, %i.ek
  br i1 %i.ep, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i
  %.lcssa.i.i = phi ptr [ %i.eh, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ], [ %i.en, %.lr.ph.i.i ]
  store i16 %spec.select.i, ptr %.lcssa.i.i, align 2, !tbaa !54
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i
  %.1.i2081 = phi i16 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.eq = zext i16 %i.dv to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.eq ; 3 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !54 ; 2 uses
  %i.et = icmp ult i16 %i.es, %i.dv
  br i1 %i.et, label %.lr.ph.i18.i, label %.loopexit3355.a

.lr.ph.i18.i:                                     ; preds = %bb.aq, %.lr.ph.i18.i
  %i.eu = phi i16 [ %i.ey, %.lr.ph.i18.i ], [ %i.es, %bb.aq ] ; 2 uses
  %i.ev = phi ptr [ %i.ex, %.lr.ph.i18.i ], [ %i.er, %bb.aq ]
  store i16 %.1.i2081, ptr %i.ev, align 2, !tbaa !54
  %i.ew = zext i16 %i.eu to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ew ; 3 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !54 ; 2 uses
  %i.ez = icmp ult i16 %i.ey, %i.eu
  br i1 %i.ez, label %.lr.ph.i18.i, label %.loopexit3355.a, !llvm.loop !1

.loopexit3355.a:                                  ; preds = %.lr.ph.i18.i, %bb.aq
  %.lcssa.i17.i = phi ptr [ %i.er, %bb.aq ], [ %i.ex, %.lr.ph.i18.i ]
  store i16 %.1.i2081, ptr %.lcssa.i17.i, align 2, !tbaa !54
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2081, ptr %i.fa, align 2, !tbaa !54
  br label %bb.rb

.thread3993:                                      ; preds = %.invoke
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ul

bb.ar:                                            ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !54 ; 4 uses
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.dm
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !54 ; 4 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.0.i.i2082 = phi i16 [ %i.fd, %bb.ar ], [ %i.fi, %bb.as ] ; 4 uses
  %i.fg = zext i16 %.0.i.i2082 to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !54 ; 2 uses
  %i.fj = icmp ult i16 %i.fi, %.0.i.i2082
  br i1 %i.fj, label %bb.as, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2083, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2083: ; preds = %bb.as
  %.not.i2084 = icmp eq i16 %i.fd, %i.ff
  br i1 %.not.i2084, label %bb.at, label %.preheader.i2085

.preheader.i2085:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2083, %.preheader.i2085
  %.0.i15.i2086 = phi i16 [ %i.fm, %.preheader.i2085 ], [ %i.ff, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2083 ] ; 3 uses
  %i.fk = zext i16 %.0.i15.i2086 to i64
end_hunk_11
begin_hunk_12_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a

bb.m:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %3, 8
  br i1 %i.y, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4311) #16
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079

bb.r:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077, %bb.q
  %.pn1860 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2077 ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3250

bb.s:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.b, 1
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i32 %i.n, 1
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = add nsw i64 %i.am, 1                    ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 2305843009213693951
  br i1 %i.ao, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc2080

.noexc2080:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 2                ; 2 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !33
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc2080, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.as, %.noexc2080 ] ; 2 uses
  %.sroa.03251.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aq, %.noexc2080 ] ; 461 uses
  %i.at = icmp sgt i32 %i.b, 0
  br i1 %i.at, label %.lr.ph3516, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

.lr.ph3516:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ay = icmp sgt i32 %i.n, 0
  %i.az = sext i32 %i.n to i64                    ; 13 uses
  %i.ba = zext nneg i32 %i.b to i64
  br label %bb.aa

._crit_edge3517:                                  ; preds = %._crit_edge
  %i.bb = icmp sgt i32 %.1.lcssa, 1
  br i1 %i.bb, label %.lr.ph.preheader.i, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge3517
  %wide.trip.count.i = zext nneg i32 %.1.lcssa to i64
  %i.bc = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bd = icmp eq i32 %.1.lcssa, 2
  br i1 %i.bd, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bc, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 5 uses
  %.01517.i = phi i32 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.x ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = icmp sgt i64 %indvars.iv.i, %i.bg
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !33
  br label %.lr.ph.i.1

bb.u:                                             ; preds = %.lr.ph.i
  %i.bk = add nsw i32 %.01517.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.u, %bb.t
  %.01517.sink.i = phi i32 [ %i.bj, %bb.t ], [ %.01517.i, %bb.u ]
  %.1.i = phi i32 [ %.01517.i, %bb.t ], [ %i.bk, %bb.u ] ; 3 uses
  store i32 %.01517.sink.i, ptr %i.be, align 4, !tbaa !33
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !33
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %.not4504 = icmp slt i64 %indvars.iv.i, %i.bo
  br i1 %.not4504, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.1
  %i.bp = add nsw i32 %.1.i, 1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.1
  %i.bq = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.01517.sink.i.1 = phi i32 [ %i.br, %bb.w ], [ %.1.i, %bb.v ]
  %.1.i.1 = phi i32 [ %.1.i, %bb.w ], [ %i.bp, %bb.v ] ; 3 uses
  store i32 %.01517.sink.i.1, ptr %i.bm, align 4, !tbaa !33
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01517.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4503 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod4503)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !33
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = icmp sgt i64 %indvars.iv.i.epil.init, %i.bu
  br i1 %i.bv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bw = add nsw i32 %.01517.i.epil.init, 1
  br label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bx = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bu
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !33
  br label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa

_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa: ; preds = %bb.z, %bb.y
  %.01517.sink.i.epil = phi i32 [ %i.by, %bb.z ], [ %.01517.i.epil.init, %bb.y ]
  %.1.i.epil = phi i32 [ %.01517.i.epil.init, %bb.z ], [ %i.bw, %bb.y ]
  store i32 %.01517.sink.i.epil, ptr %i.bs, align 4, !tbaa !33
  br label %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit

_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit: ; preds = %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %._crit_edge3517
  %.015.lcssa.i = phi i32 [ 1, %._crit_edge3517 ], [ 1, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %.1.i.1, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit.loopexit.epilog-lcssa ] ; 2 uses
  invoke void @_ZN2cv19connectedcomponents9CCStatsOp4initEi(ptr noundef nonnull align 8 dereferenceable(460) %4, i32 noundef %.015.lcssa.i)
          to label %bb.rc unwind label %bb.uk

bb.aa:                                            ; preds = %.lr.ph3516, %._crit_edge
  %indvars.iv3693 = phi i64 [ 0, %.lr.ph3516 ], [ %indvars.iv.next3694, %._crit_edge ] ; 5 uses
  %.017903514 = phi i32 [ 1, %.lr.ph3516 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.bz = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.ca = load i64, ptr %i.av, align 8, !tbaa !40 ; 3 uses
  %i.cb = mul i64 %i.ca, %indvars.iv3693
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb ; 21 uses
  %i.cd = sub i64 0, %i.ca                        ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd ; 73 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cd ; 39 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca ; 5 uses
  %i.ch = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.ci = load i64, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %i.cj = mul i64 %i.ci, %indvars.iv3693
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj ; 221 uses
  %11 = sub i64 0, %i.ci                          ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.ck, i64 %11
  %i.cl = getelementptr inbounds i8, ptr %12, i64 %11 ; 101 uses
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aa
  %.not2029 = icmp eq i64 %indvars.iv3693, 0      ; 15 uses
  %i.cm = or disjoint i64 %indvars.iv3693, 1
  %i.cn = icmp samesign ult i64 %i.cm, %i.ba      ; 3 uses
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.rb, %bb.aa
  %.1.lcssa = phi i32 [ %.017903514, %bb.aa ], [ %.2, %bb.rb ] ; 4 uses
  %indvars.iv.next3694 = add nuw nsw i64 %indvars.iv3693, 2 ; 2 uses
  %i.co = trunc nuw i64 %indvars.iv.next3694 to i32
  %i.cp = icmp sgt i32 %i.b, %i.co
  br i1 %i.cp, label %bb.aa, label %._crit_edge3517, !llvm.loop !327

bb.ab:                                            ; preds = %.lr.ph, %bb.rb
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.rb ] ; 265 uses
  %.13511 = phi i32 [ %.017903514, %.lr.ph ], [ %.2, %bb.rb ] ; 161 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !32
  %.not1883 = icmp eq i8 %i.cr, 0
  br i1 %.not1883, label %bb.ke, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1957 = icmp eq i64 %indvars.iv, 0          ; 5 uses
  br i1 %.not1957, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !32
  %.not1958 = icmp eq i8 %i.cu, 0
  br i1 %.not1958, label %bb.by, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.cw = icmp sge i64 %i.cv, %i.az               ; 2 uses
  %or.cond = or i1 %.not2029, %i.cw
  br i1 %or.cond, label %bb.ax, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !32
  %.not2030 = icmp eq i8 %i.cy, 0
  br i1 %.not2030, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !32
  %.not2040 = icmp eq i8 %i.da, 0
  br i1 %.not2040, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !33
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !33
  br label %bb.rb

bb.ai:                                            ; preds = %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !32
  %.not2041 = icmp eq i8 %i.df, 0
  br i1 %.not2041, label %bb.au, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cs
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !32
  %.not2042 = icmp eq i8 %i.dh, 0
  br i1 %.not2042, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !33
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !33
  br label %bb.rb

bb.al:                                            ; preds = %bb.aj
  %i.dl = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !32
  %.not2043 = icmp eq i8 %i.dn, 0
  br i1 %.not2043, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cs
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !32
  %.not2044 = icmp eq i8 %i.dp, 0
  br i1 %.not2044, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dl
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !33
  br label %bb.rb

bb.ao:                                            ; preds = %bb.am
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !33 ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dl
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !33 ; 4 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i = phi i32 [ %i.du, %bb.ao ], [ %i.dz, %bb.ap ] ; 4 uses
  %i.dx = sext i32 %.0.i.i to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !33 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, %.0.i.i
  br i1 %i.ea, label %bb.ap, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i: ; preds = %bb.ap
  %.not.i = icmp eq i32 %i.du, %i.dw
  br i1 %.not.i, label %bb.aq, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i18.i = phi i32 [ %i.ed, %.preheader.i ], [ %i.dw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.eb = sext i32 %.0.i18.i to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !33 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, %.0.i18.i
  br i1 %i.ee, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i: ; preds = %.preheader.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i) ; 3 uses
  %i.ef = sext i32 %i.dw to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ef ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !33 ; 2 uses
  %i.ei = icmp slt i32 %i.eh, %i.dw
  br i1 %i.ei, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, %.lr.ph.i.i
  %i.ej = phi i32 [ %i.en, %.lr.ph.i.i ], [ %i.eh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ] ; 2 uses
  %i.ek = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.eg, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ]
  store i32 %spec.select.i, ptr %i.ek, align 4, !tbaa !33
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.el ; 3 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !33 ; 2 uses
  %i.eo = icmp slt i32 %i.en, %i.ej
  br i1 %i.eo, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i
  %.lcssa.i.i = phi ptr [ %i.eg, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ], [ %i.em, %.lr.ph.i.i ]
  store i32 %spec.select.i, ptr %.lcssa.i.i, align 4, !tbaa !33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i
  %.1.i2081 = phi i32 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.ep = sext i32 %i.du to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ep ; 3 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !33 ; 2 uses
  %i.es = icmp slt i32 %i.er, %i.du
  br i1 %i.es, label %.lr.ph.i21.i, label %.loopexit3355.a

.lr.ph.i21.i:                                     ; preds = %bb.aq, %.lr.ph.i21.i
  %i.et = phi i32 [ %i.ex, %.lr.ph.i21.i ], [ %i.er, %bb.aq ] ; 2 uses
  %i.eu = phi ptr [ %i.ew, %.lr.ph.i21.i ], [ %i.eq, %bb.aq ]
  store i32 %.1.i2081, ptr %i.eu, align 4, !tbaa !33
  %i.ev = sext i32 %i.et to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ev ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !33 ; 2 uses
  %i.ey = icmp slt i32 %i.ex, %i.et
  br i1 %i.ey, label %.lr.ph.i21.i, label %.loopexit3355.a, !llvm.loop !4

.loopexit3355.a:                                  ; preds = %.lr.ph.i21.i, %bb.aq
  %.lcssa.i20.i = phi ptr [ %i.eq, %bb.aq ], [ %i.ew, %.lr.ph.i21.i ]
  store i32 %.1.i2081, ptr %.lcssa.i20.i, align 4, !tbaa !33
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2081, ptr %i.ez, align 4, !tbaa !33
  br label %bb.rb

.thread3995:                                      ; preds = %.invoke
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ul

bb.ar:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !33 ; 4 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.dl
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !33 ; 4 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.0.i.i2082 = phi i32 [ %i.fc, %bb.ar ], [ %i.fh, %bb.as ] ; 4 uses
  %i.ff = sext i32 %.0.i.i2082 to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !33 ; 2 uses
  %i.fi = icmp slt i32 %i.fh, %.0.i.i2082
  br i1 %i.fi, label %bb.as, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2083, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2083: ; preds = %bb.as
  %.not.i2084 = icmp eq i32 %i.fc, %i.fe
  br i1 %.not.i2084, label %bb.at, label %.preheader.i2085

.preheader.i2085:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2083, %.preheader.i2085
  %.0.i18.i2086 = phi i32 [ %i.fl, %.preheader.i2085 ], [ %i.fe, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2083 ] ; 3 uses
  %i.fj = sext i32 %.0.i18.i2086 to i64
end_hunk_12
begin_hunk_13_@_ZN2cv19connectedcomponents15LabelingBolelliIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  br i1 %.not3374, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.cv, %bb.ce, %bb.ca
  %i.jc = getelementptr i8, ptr %i.ed, i64 %.53192.lcssa
  %i.jd = getelementptr i8, ptr %i.jc, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !32
  %.not3376 = icmp eq i8 %i.je, 0
  br i1 %.not3376, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %.53192.lcssa
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !54
  %i.jh = sext i32 %.lcssa5445 to i64
  %i.ji = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.jh
  store i16 %i.jg, ptr %i.ji, align 2, !tbaa !54
  br label %bb.cw

bb.cd:                                            ; preds = %bb.cb
  %i.jj = sext i32 %.lcssa5445 to i64
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.jj
  store i16 %.103210.ph5126.lcssa5463, ptr %i.jk, align 2, !tbaa !54
  %i.jl = zext i16 %.103210.ph5126.lcssa5463 to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.jl
  store i16 %.103210.ph5126.lcssa5463, ptr %i.jm, align 2, !tbaa !54
  %.not.i3899 = icmp eq i16 %.103210.ph5126.lcssa5463, -1
  br i1 %.not.i3899, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3901

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3901: ; preds = %bb.cd
  %i.jn = add nuw i16 %.103210.ph5126.lcssa5463, 1
  br label %bb.cw

bb.ce:                                            ; preds = %bb.ca
  %i.jo = getelementptr inbounds i8, ptr %i.ed, i64 %i.gu
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !32
  %.not3375 = icmp eq i8 %i.jp, 0
  br i1 %.not3375, label %bb.cf, label %bb.cb

bb.cf:                                            ; preds = %bb.ce
  %i.jq = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.gu
  store i16 0, ptr %i.jq, align 2, !tbaa !54
  br label %bb.cw

bb.cg:                                            ; preds = %._crit_edge5515
  br i1 %.not3387, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cu, %bb.ck, %bb.cg
  %.pre-phi6057.a = phi i64 [ %i.gu, %bb.cu ], [ %i.ek, %bb.ck ], [ %i.ek, %bb.cg ] ; 2 uses
  %.113211 = phi i16 [ %.103210.ph5126.lcssa5463, %bb.cu ], [ %.53205.lcssa, %bb.ck ], [ %.53205.lcssa, %bb.cg ] ; 6 uses
  %i.jr = getelementptr i8, ptr %i.bb, i64 %.pre-phi6057.a
  %i.js = getelementptr i8, ptr %i.jr, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !32
  %.not3386 = icmp eq i8 %i.jt, 0
  %i.ju = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %.pre-phi6057.a
  store i16 %.113211, ptr %i.ju, align 2, !tbaa !54
  %i.jv = zext i16 %.113211 to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.jv
  store i16 %.113211, ptr %i.jw, align 2, !tbaa !54
  %.not.i3905 = icmp eq i16 %.113211, -1          ; 2 uses
  br i1 %.not3386, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %.not.i3905, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3904

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3904: ; preds = %bb.ci
  %i.jx = add nuw i16 %.113211, 1
  br label %bb.cw

bb.cj:                                            ; preds = %bb.ch
  br i1 %.not.i3905, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3907

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3907: ; preds = %bb.cj
  %i.jy = add nuw i16 %.113211, 1
  br label %bb.cw

bb.ck:                                            ; preds = %bb.cg
  %i.jz = getelementptr inbounds i8, ptr %i.ed, i64 %i.ek
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !32
  %.not3383 = icmp eq i8 %i.ka, 0
  br i1 %.not3383, label %bb.cl, label %bb.ch

bb.cl:                                            ; preds = %bb.cv, %bb.cs, %bb.ck
  %.123212 = phi i16 [ %.53205.lcssa, %bb.ck ], [ %.83208, %bb.cs ], [ %.103210.ph5126.lcssa5463, %bb.cv ] ; 11 uses
  %.73194 = phi i32 [ %.lcssa5474, %bb.ck ], [ %i.fv, %bb.cs ], [ %.lcssa5445, %bb.cv ] ; 3 uses
  %i.kb = add nsw i32 %.73194, 1
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.bb, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !32
  %.not3384 = icmp eq i8 %i.ke, 0
  br i1 %.not3384, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kf = sext i32 %.73194 to i64
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.kf
  store i16 %.123212, ptr %i.kg, align 2, !tbaa !54
  %i.kh = zext i16 %.123212 to i64
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.kh
  store i16 %.123212, ptr %i.ki, align 2, !tbaa !54
  %.not.i3908 = icmp eq i16 %.123212, -1
  br i1 %.not.i3908, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3910

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3910: ; preds = %bb.cm
  %i.kj = add nuw i16 %.123212, 1
  br label %bb.cw

bb.cn:                                            ; preds = %bb.cl
  %i.kk = getelementptr inbounds i8, ptr %i.ed, i64 %i.kc
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !32
  %.not3385 = icmp eq i8 %i.kl, 0
  %i.km = sext i32 %.73194 to i64
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.km ; 2 uses
  br i1 %.not3385, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i16 %.123212, ptr %i.kn, align 2, !tbaa !54
  %i.ko = zext i16 %.123212 to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.ko
  store i16 %.123212, ptr %i.kp, align 2, !tbaa !54
  %.not.i3911 = icmp eq i16 %.123212, -1
  br i1 %.not.i3911, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3913

.invoke6706:                                      ; preds = %bb.at, %bb.bm, %bb.az, %bb.ax, %bb.av, %bb.bp, %bb.co, %bb.cm, %bb.cj, %bb.ci, %bb.cd, %bb.bt, %bb.br
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 65535, i32 noundef 65535, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_E15__cv_check__269) #16
          to label %.cont6707 unwind label %bb.au

.cont6707:                                        ; preds = %.invoke6706
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3913: ; preds = %bb.co
  %i.kq = add nuw i16 %.123212, 1
  br label %bb.cw

bb.cp:                                            ; preds = %bb.cn
  store i16 0, ptr %i.kn, align 2, !tbaa !54
  br label %bb.cw

bb.cq:                                            ; preds = %bb.bc
  br i1 %.not3380, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cu, %bb.cs, %bb.cq
  %.pre-phi6058.a = phi i64 [ %i.gu, %bb.cu ], [ %i.fx, %bb.cs ], [ %i.fx, %bb.cq ]
  %.133213 = phi i16 [ %.103210.ph5126.lcssa5463, %bb.cu ], [ %.83208, %bb.cs ], [ %.83208, %bb.cq ]
  %i.kr = getelementptr [2 x i8], ptr %i.ef, i64 %.pre-phi6058.a ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -4
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !54
  store i16 %i.kt, ptr %i.kr, align 2, !tbaa !54
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  %i.ku = getelementptr inbounds i8, ptr %i.ed, i64 %i.fx
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !32
  %.not3378 = icmp eq i8 %i.kv, 0
  br i1 %.not3378, label %bb.cl, label %bb.cr

bb.ct:                                            ; preds = %.outer._crit_edge
  br i1 %.not3374, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kw = getelementptr i8, ptr %i.ed, i64 %.53192.lcssa
  %i.kx = getelementptr i8, ptr %i.kw, i64 1
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !32
  %.not3373 = icmp eq i8 %i.ky, 0
  br i1 %.not3373, label %bb.ch, label %bb.cr

bb.cv:                                            ; preds = %bb.ct
  %i.kz = getelementptr inbounds i8, ptr %i.ed, i64 %i.gu
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !32
  %.not3372 = icmp eq i8 %i.la, 0
  br i1 %.not3372, label %bb.cl, label %bb.cb

bb.cw:                                            ; preds = %bb.cr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3907, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3904, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3910, %bb.cp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3913, %bb.cf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3901, %bb.cc, %bb.bw, %bb.bz, %bb.by, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3895, %bb.bu, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3898
  %.143214 = phi i16 [ %i.ik, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3895 ], [ %i.iq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3898 ], [ %.53205.lcssa, %bb.bu ], [ %i.jx, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3904 ], [ %i.jy, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3907 ], [ %i.kj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3910 ], [ %i.kq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3913 ], [ %.123212, %bb.cp ], [ %.83208, %bb.bw ], [ %.83208, %bb.by ], [ %.83208, %bb.bz ], [ %.133213, %bb.cr ], [ %.103210.ph5126.lcssa5463, %bb.cf ], [ %.103210.ph5126.lcssa5463, %bb.cc ], [ %i.jn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3901 ] ; 2 uses
  %i.lb = icmp sgt i32 %i.ag, 2
  br i1 %i.lb, label %.lr.ph5540, label %._crit_edge5541

.lr.ph5540:                                       ; preds = %bb.cw
  %i.lc = icmp slt i32 %i.n, 3
  %.not3803.a = icmp eq i32 %i.n, 2
  %i.ld = sext i32 %i.eh to i64                   ; 3 uses
  %i.le = zext nneg i32 %i.ag to i64
  br label %bb.cx

._crit_edge5541:                                  ; preds = %bb.aaw, %bb.cw
  %.153215.lcssa = phi i16 [ %.143214, %bb.cw ], [ %.97, %bb.aaw ] ; 3 uses
  br i1 %i.ai, label %bb.aax, label %bb.ajn

bb.cx:                                            ; preds = %.lr.ph5540, %bb.aaw
  %indvars.iv5990 = phi i64 [ 2, %.lr.ph5540 ], [ %indvars.iv.next5991, %bb.aaw ] ; 3 uses
  %.1532155537 = phi i16 [ %.143214, %.lr.ph5540 ], [ %.97, %bb.aaw ] ; 6 uses
  %i.lf = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.lg = load i64, ptr %i.eb, align 8, !tbaa !40 ; 3 uses
  %i.lh = mul i64 %i.lg, %indvars.iv5990
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lh ; 74 uses
  %i.lj = sub i64 0, %i.lg                        ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %i.li, i64 %i.lj ; 100 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.lj ; 39 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lg ; 51 uses
  %i.ln = load ptr, ptr %i.ee, align 8, !tbaa !55
  %i.lo = load i64, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.lp = mul i64 %i.lo, %indvars.iv5990
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp ; 253 uses
  %11 = sub i64 0, %i.lo                          ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.lq, i64 %11
  %i.lr = getelementptr inbounds i8, ptr %12, i64 %11 ; 125 uses
  %i.ls = load i8, ptr %i.li, align 1, !tbaa !32
  %.not3804 = icmp eq i8 %i.ls, 0                 ; 3 uses
  br i1 %i.lc, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not3803.a, label %bb.vp, label %bb.sz

bb.cz:                                            ; preds = %bb.cx
  br i1 %.not3804, label %bb.ds, label %bb.da

bb.da:                                            ; preds = %bb.ri, %bb.ol, %bb.oc, %bb.cz
  %.163216 = phi i16 [ %.1532155537, %bb.cz ], [ %.503250, %bb.oc ], [ %.513251, %bb.ol ], [ %.593259, %bb.ri ] ; 8 uses
  %.03161 = phi i32 [ 0, %bb.cz ], [ %i.cbf, %bb.oc ], [ %i.cde, %bb.ol ], [ %i.csf, %bb.ri ] ; 7 uses
  %i.lt = add nsw i32 %.03161, 1
  %i.lu = sext i32 %i.lt to i64                   ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %i.lk, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !32
  %.not3514 = icmp eq i8 %i.lw, 0
  br i1 %.not3514, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lx = sext i32 %.03161 to i64                 ; 2 uses
  %i.ly = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !54
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.lx
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !54
  br label %.preheader5073

bb.dc:                                            ; preds = %bb.da
  %i.mb = getelementptr inbounds i8, ptr %i.li, i64 %i.lu
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !32
  %.not3515 = icmp eq i8 %i.mc, 0
  br i1 %.not3515, label %bb.dp, label %bb.dd

bb.dd:                                            ; preds = %bb.du, %bb.dc
  %.173217 = phi i16 [ %.203220, %bb.du ], [ %.163216, %bb.dc ] ; 8 uses
  %.13162 = phi i32 [ %.43165, %bb.du ], [ %.03161, %bb.dc ] ; 6 uses
  %i.md = add nsw i32 %.13162, 2
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.lk, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !32
  %.not3666.a = icmp eq i8 %i.mg, 0
  %i.mh = sext i32 %.13162 to i64                 ; 5 uses
  %i.mi = getelementptr inbounds i8, ptr %i.lk, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !32
  %.not3667 = icmp eq i8 %i.mj, 0                 ; 2 uses
  br i1 %.not3666.a, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %bb.dd
  br i1 %.not3667, label %bb.dl, label %bb.df

bb.df:                                            ; preds = %bb.qk, %bb.kw, %bb.eo, %bb.de
  %.183218 = phi i16 [ %.173217, %bb.de ], [ %.233223, %bb.eo ], [ %.373237.ph, %bb.kw ], [ %.583258.ph, %bb.qk ] ; 2 uses
  %.23163 = phi i32 [ %.13162, %bb.de ], [ %.73168, %bb.eo ], [ %i.bhb, %bb.kw ], [ %i.cpx, %bb.qk ] ; 3 uses
  %i.mk = sext i32 %.23163 to i64                 ; 4 uses
  %i.ml = getelementptr i8, ptr %i.ll, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !32
  %.not3669 = icmp eq i8 %i.mn, 0
  %i.mo = getelementptr [2 x i8], ptr %i.lr, i64 %i.mk ; 3 uses
  br i1 %.not3669, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mp = getelementptr i8, ptr %i.mo, i64 4
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !54
  %i.mr = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mk
  store i16 %i.mq, ptr %i.mr, align 2, !tbaa !54
  br label %.preheader5096

bb.dh:                                            ; preds = %bb.df
  %i.ms = load i16, ptr %i.mo, align 2, !tbaa !54 ; 4 uses
  %i.mt = getelementptr i8, ptr %i.mo, i64 4
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !54 ; 4 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %bb.dh
  %.0.i.i = phi i16 [ %i.ms, %bb.dh ], [ %i.mx, %bb.di ] ; 4 uses
  %i.mv = zext i16 %.0.i.i to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !54 ; 2 uses
  %i.my = icmp ult i16 %i.mx, %.0.i.i
  br i1 %i.my, label %bb.di, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i: ; preds = %bb.di
  %.not.i3914 = icmp eq i16 %i.ms, %i.mu
  br i1 %.not.i3914, label %bb.dj, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i15.i = phi i16 [ %i.nb, %.preheader.i ], [ %i.mu, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.mz = zext i16 %.0.i15.i to i64
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.mz
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !54 ; 2 uses
  %i.nc = icmp ult i16 %i.nb, %.0.i15.i
  br i1 %i.nc, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i: ; preds = %.preheader.i
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %.0.i.i, i16 %.0.i15.i) ; 3 uses
  %i.nd = zext i16 %i.mu to i64
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.nd ; 3 uses
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !54 ; 2 uses
  %i.ng = icmp ult i16 %i.nf, %i.mu
  br i1 %i.ng, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i, %.lr.ph.i.i
  %i.nh = phi i16 [ %i.nl, %.lr.ph.i.i ], [ %i.nf, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ] ; 2 uses
  %i.ni = phi ptr [ %i.nk, %.lr.ph.i.i ], [ %i.ne, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ]
  store i16 %spec.select.i, ptr %i.ni, align 2, !tbaa !54
  %i.nj = zext i16 %i.nh to i64
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.nj ; 3 uses
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !54 ; 2 uses
  %i.nm = icmp ult i16 %i.nl, %i.nh
  br i1 %i.nm, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i
  %.lcssa.i.i = phi ptr [ %i.ne, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i ], [ %i.nk, %.lr.ph.i.i ]
  store i16 %spec.select.i, ptr %.lcssa.i.i, align 2, !tbaa !54
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i
  %.1.i = phi i16 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.nn = zext i16 %i.ms to i64
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.nn ; 3 uses
  %i.np = load i16, ptr %i.no, align 2, !tbaa !54 ; 2 uses
  %i.nq = icmp ult i16 %i.np, %i.ms
  br i1 %i.nq, label %.lr.ph.i18.i, label %.loopexit5070.a

.lr.ph.i18.i:                                     ; preds = %bb.dj, %.lr.ph.i18.i
  %i.nr = phi i16 [ %i.nv, %.lr.ph.i18.i ], [ %i.np, %bb.dj ] ; 2 uses
  %i.ns = phi ptr [ %i.nu, %.lr.ph.i18.i ], [ %i.no, %bb.dj ]
  store i16 %.1.i, ptr %i.ns, align 2, !tbaa !54
  %i.nt = zext i16 %i.nr to i64
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.nt ; 3 uses
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !54 ; 2 uses
  %i.nw = icmp ult i16 %i.nv, %i.nr
  br i1 %i.nw, label %.lr.ph.i18.i, label %.loopexit5070.a, !llvm.loop !1

.loopexit5070.a:                                  ; preds = %.lr.ph.i18.i, %bb.dj
  %.lcssa.i17.i = phi ptr [ %i.no, %bb.dj ], [ %i.nu, %.lr.ph.i18.i ]
  store i16 %.1.i, ptr %.lcssa.i17.i, align 2, !tbaa !54
  %i.nx = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mk
  store i16 %.1.i, ptr %i.nx, align 2, !tbaa !54
  br label %.preheader5096

bb.dk:                                            ; preds = %.invoke6708
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.dl:                                            ; preds = %bb.de
  %i.nz = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %i.me
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !54
  %i.ob = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mh
  store i16 %i.oa, ptr %i.ob, align 2, !tbaa !54
  br label %.preheader5096

bb.dm:                                            ; preds = %bb.dd
  br i1 %.not3667, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.oc = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %i.mh
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !54
  %i.oe = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mh
  store i16 %i.od, ptr %i.oe, align 2, !tbaa !54
  br label %bb.iw

bb.do:                                            ; preds = %bb.dm
  %i.of = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.mh
  store i16 %.173217, ptr %i.of, align 2, !tbaa !54
  %i.og = zext i16 %.173217 to i64
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.og
  store i16 %.173217, ptr %i.oh, align 2, !tbaa !54
  %.not.i3915 = icmp eq i16 %.173217, -1
  br i1 %.not.i3915, label %.invoke6708, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3917

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3917: ; preds = %bb.do
  %i.oi = add nuw i16 %.173217, 1
  br label %bb.ia

bb.dp:                                            ; preds = %bb.dc
  %i.oj = sext i32 %.03161 to i64                 ; 4 uses
  %i.ok = getelementptr inbounds i8, ptr %i.lk, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !32
  %.not3516 = icmp eq i8 %i.ol, 0
  br i1 %.not3516, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.om = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %i.oj
  %i.on = load i16, ptr %i.om, align 2, !tbaa !54
  %i.oo = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.oj
  store i16 %i.on, ptr %i.oo, align 2, !tbaa !54
  br label %bb.oi

bb.dr:                                            ; preds = %bb.dp
  %i.op = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.oj
  store i16 %.163216, ptr %i.op, align 2, !tbaa !54
  %i.oq = zext i16 %.163216 to i64
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.oq
  store i16 %.163216, ptr %i.or, align 2, !tbaa !54
  %.not.i3918 = icmp eq i16 %.163216, -1
  br i1 %.not.i3918, label %.invoke6708, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3920
end_hunk_13
begin_hunk_14_@_ZN2cv19connectedcomponents15LabelingBolelliIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
bb.aae:                                           ; preds = %bb.aad
  %i.emu = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.cpf
  %i.emv = load i16, ptr %i.emu, align 2, !tbaa !54
  %i.emw = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.cpf
  store i16 %i.emv, ptr %i.emw, align 2, !tbaa !54
  br label %bb.aaw

bb.aaf:                                           ; preds = %bb.zz
  %i.emx = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.cpf
  %i.emy = load i8, ptr %i.emx, align 1, !tbaa !32
  %.not3782 = icmp eq i8 %i.emy, 0
  br i1 %.not3782, label %bb.vu, label %bb.aag

bb.aag:                                           ; preds = %bb.aaf
  %i.emz = add nsw i32 %.42.lcssa, 3
  %i.ena = zext nneg i32 %i.emz to i64            ; 2 uses
  %i.enb = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ena
  %i.enc = load i8, ptr %i.enb, align 1, !tbaa !32
  %.not3783 = icmp eq i8 %i.enc, 0
  br i1 %.not3783, label %bb.vb, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.end = add nsw i32 %.42.lcssa, 1
  %i.ene = zext nneg i32 %i.end to i64            ; 2 uses
  %i.enf = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ene
  %i.eng = load i8, ptr %i.enf, align 1, !tbaa !32
  %.not3784 = icmp eq i8 %i.eng, 0
  br i1 %.not3784, label %bb.aai, label %bb.yo

bb.aai:                                           ; preds = %bb.aah
  %i.enh = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ene
  %i.eni = load i8, ptr %i.enh, align 1, !tbaa !32
  %.not3785 = icmp eq i8 %i.eni, 0
  br i1 %.not3785, label %bb.vq, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  %i.enj = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ena
  %i.enk = load i8, ptr %i.enj, align 1, !tbaa !32
  %.not3786 = icmp eq i8 %i.enk, 0
  br i1 %.not3786, label %bb.aak, label %._crit_edge6070

._crit_edge6070:                                  ; preds = %bb.aaj
  %.pre6101 = sext i32 %.lcssa5371 to i64
  br label %bb.yp

bb.aak:                                           ; preds = %bb.aaj
  %i.enl = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.cpf
  %i.enm = load i8, ptr %i.enl, align 1, !tbaa !32
  %.not3787 = icmp eq i8 %i.enm, 0
  br i1 %.not3787, label %bb.aam, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.enn = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.cpf
  %i.eno = load i16, ptr %i.enn, align 2, !tbaa !54
  %i.enp = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.cpf
  store i16 %i.eno, ptr %i.enp, align 2, !tbaa !54
  br label %bb.aaw

bb.aam:                                           ; preds = %bb.aak
  %i.enq = sext i32 %.42.lcssa to i64
  %i.enr = getelementptr inbounds [2 x i8], ptr %i.lq, i64 %i.enq
  %i.ens = load i16, ptr %i.enr, align 2, !tbaa !54
  %i.ent = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.cpf
  store i16 %i.ens, ptr %i.ent, align 2, !tbaa !54
  br label %bb.aaw

bb.aan:                                           ; preds = %bb.rg
  br i1 %.not3749.a, label %bb.aau, label %._crit_edge6069

._crit_edge6069:                                  ; preds = %bb.aan
  %.pre6103 = sext i32 %.43 to i64
  br label %bb.aao

bb.aao:                                           ; preds = %._crit_edge6069, %bb.aav
  %.pre-phi6104 = phi i64 [ %.pre6103, %._crit_edge6069 ], [ %i.epi, %bb.aav ] ; 2 uses
  %i.enu = getelementptr i8, ptr %i.lm, i64 %.pre-phi6104
  %i.env = getelementptr i8, ptr %i.enu, i64 1
  %i.enw = load i8, ptr %i.env, align 1, !tbaa !32
  %.not3745.a = icmp eq i8 %i.enw, 0
  br i1 %.not3745.a, label %bb.vq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.enx = getelementptr i8, ptr %i.lk, i64 %.pre-phi6104 ; 2 uses
  %i.eny = getelementptr i8, ptr %i.enx, i64 3
  %i.enz = load i8, ptr %i.eny, align 1, !tbaa !32
  %.not3746 = icmp eq i8 %i.enz, 0
  br i1 %.not3746, label %bb.vj, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap
  %i.eoa = load i8, ptr %i.enx, align 1, !tbaa !32
  %.not3747 = icmp eq i8 %i.eoa, 0
  br i1 %.not3747, label %bb.aar, label %bb.zt

bb.aar:                                           ; preds = %bb.aaq
  %i.eob = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.csh
  %i.eoc = load i16, ptr %i.eob, align 2, !tbaa !54 ; 4 uses
  br label %bb.aas

bb.aas:                                           ; preds = %bb.aas, %bb.aar
  %.0.i.i4862 = phi i16 [ %i.eoc, %bb.aar ], [ %i.eof, %bb.aas ] ; 4 uses
  %i.eod = zext i16 %.0.i.i4862 to i64
  %i.eoe = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.eod
  %i.eof = load i16, ptr %i.eoe, align 2, !tbaa !54 ; 2 uses
  %i.eog = icmp ult i16 %i.eof, %.0.i.i4862
  br i1 %i.eog, label %bb.aas, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4863, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4863: ; preds = %bb.aas
  %.not.i4864 = icmp eq i16 %i.eoc, %i.cse
  br i1 %.not.i4864, label %bb.aat, label %.preheader.i4865

.preheader.i4865:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4863, %.preheader.i4865
  %.0.i15.i4866 = phi i16 [ %i.eoj, %.preheader.i4865 ], [ %i.cse, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4863 ] ; 3 uses
  %i.eoh = zext i16 %.0.i15.i4866 to i64
  %i.eoi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.eoh
  %i.eoj = load i16, ptr %i.eoi, align 2, !tbaa !54 ; 2 uses
  %i.eok = icmp ult i16 %i.eoj, %.0.i15.i4866
  br i1 %i.eok, label %.preheader.i4865, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4867, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4867: ; preds = %.preheader.i4865
  %spec.select.i4868 = tail call i16 @llvm.umin.i16(i16 %.0.i.i4862, i16 %.0.i15.i4866) ; 3 uses
  %i.eol = zext i16 %i.cse to i64
  %i.eom = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.eol ; 3 uses
  %i.eon = load i16, ptr %i.eom, align 2, !tbaa !54 ; 2 uses
  %i.eoo = icmp ult i16 %i.eon, %i.cse
  br i1 %i.eoo, label %.lr.ph.i.i4874, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4869

.lr.ph.i.i4874:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4867, %.lr.ph.i.i4874
  %i.eop = phi i16 [ %i.eot, %.lr.ph.i.i4874 ], [ %i.eon, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4867 ] ; 2 uses
  %i.eoq = phi ptr [ %i.eos, %.lr.ph.i.i4874 ], [ %i.eom, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4867 ]
  store i16 %spec.select.i4868, ptr %i.eoq, align 2, !tbaa !54
  %i.eor = zext i16 %i.eop to i64
  %i.eos = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.eor ; 3 uses
  %i.eot = load i16, ptr %i.eos, align 2, !tbaa !54 ; 2 uses
  %i.eou = icmp ult i16 %i.eot, %i.eop
  br i1 %i.eou, label %.lr.ph.i.i4874, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4869, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4869: ; preds = %.lr.ph.i.i4874, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4867
  %.lcssa.i.i4870 = phi ptr [ %i.eom, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4867 ], [ %i.eos, %.lr.ph.i.i4874 ]
  store i16 %spec.select.i4868, ptr %.lcssa.i.i4870, align 2, !tbaa !54
  br label %bb.aat

bb.aat:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4869, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4863
  %.1.i4871 = phi i16 [ %spec.select.i4868, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4869 ], [ %.0.i.i4862, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4863 ] ; 3 uses
  %i.eov = zext i16 %i.eoc to i64
  %i.eow = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.eov ; 3 uses
  %i.eox = load i16, ptr %i.eow, align 2, !tbaa !54 ; 2 uses
  %i.eoy = icmp ult i16 %i.eox, %i.eoc
  br i1 %i.eoy, label %.lr.ph.i18.i4873, label %.loopexit5083

.lr.ph.i18.i4873:                                 ; preds = %bb.aat, %.lr.ph.i18.i4873
  %i.eoz = phi i16 [ %i.epd, %.lr.ph.i18.i4873 ], [ %i.eox, %bb.aat ] ; 2 uses
  %i.epa = phi ptr [ %i.epc, %.lr.ph.i18.i4873 ], [ %i.eow, %bb.aat ]
  store i16 %.1.i4871, ptr %i.epa, align 2, !tbaa !54
  %i.epb = zext i16 %i.eoz to i64
  %i.epc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.epb ; 3 uses
  %i.epd = load i16, ptr %i.epc, align 2, !tbaa !54 ; 2 uses
  %i.epe = icmp ult i16 %i.epd, %i.eoz
  br i1 %i.epe, label %.lr.ph.i18.i4873, label %.loopexit5083, !llvm.loop !1

.loopexit5083:                                    ; preds = %.lr.ph.i18.i4873, %bb.aat
  %.lcssa.i17.i4872 = phi ptr [ %i.eow, %bb.aat ], [ %i.epc, %.lr.ph.i18.i4873 ]
  store i16 %.1.i4871, ptr %.lcssa.i17.i4872, align 2, !tbaa !54
  %i.epf = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.csh
  store i16 %.1.i4871, ptr %i.epf, align 2, !tbaa !54
  br label %bb.aaw

bb.aau:                                           ; preds = %bb.aan
  %i.epg = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.csh
  %i.eph = load i8, ptr %i.epg, align 1, !tbaa !32
  %.not3743 = icmp eq i8 %i.eph, 0
  br i1 %.not3743, label %bb.vu, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.epi = sext i32 %.43 to i64                   ; 2 uses
  %i.epj = getelementptr i8, ptr %i.li, i64 %i.epi
  %i.epk = getelementptr i8, ptr %i.epj, i64 3
  %i.epl = load i8, ptr %i.epk, align 1, !tbaa !32
  %.not3744 = icmp eq i8 %i.epl, 0
  br i1 %.not3744, label %bb.ud, label %bb.aao

bb.aaw:                                           ; preds = %bb.aae, %bb.aal, %bb.aam, %bb.zo, %bb.zl, %.loopexit5091, %bb.yz, %bb.yq, %.loopexit5072, %bb.ys, %bb.yw, %bb.yh, %bb.yg, %bb.ym, %bb.yk, %bb.yd, %bb.ya, %.loopexit5095, %bb.xm, %.loopexit5099, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4805, %bb.xs, %bb.xp, %.loopexit5121.a, %.loopexit5120.a, %.loopexit5118.a, %.loopexit5117, %.loopexit5116, %bb.xg, %bb.wb, %bb.we, %bb.wf, %bb.wg, %bb.vr, %bb.vx, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4704, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4701, %.loopexit5081, %bb.vo, %bb.uw, %bb.uz, %bb.uy, %bb.uu, %bb.vc, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4684, %bb.ve, %bb.vg, %bb.ur, %.loopexit5082, %bb.un, %bb.ue, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4667, %bb.ug, %.loopexit5114, %bb.tu, %.loopexit5115, %bb.tx, %bb.tw, %bb.tj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4636, %bb.th, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4630, %bb.tb, %bb.te, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4633, %.loopexit5083, %.loopexit5084, %bb.tz
  %.97 = phi i16 [ %.83, %bb.wg ], [ %.593259, %bb.vo ], [ %.513251, %bb.ur ], [ %.373237.ph, %bb.yh ], [ %.493249.ph, %bb.zo ], [ %.81, %bb.vx ], [ %.69, %bb.tz ], [ %i.dfn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4636 ], [ %.333233, %bb.yd ], [ %.70, %bb.ug ], [ %.583258.ph, %bb.vg ], [ %.383238, %bb.yz ], [ %i.pv, %bb.xg ], [ %.663266, %bb.tu ], [ %.96, %.loopexit5084 ], [ %.593259, %.loopexit5083 ], [ %.313231, %bb.xp ], [ %.613261, %bb.te ], [ %.603260, %bb.tb ], [ %i.deq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4630 ], [ %i.dex, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4633 ], [ %.633263, %bb.th ], [ %.633263, %bb.tj ], [ %.673267, %bb.tw ], [ %.673267, %bb.tx ], [ %.653265, %.loopexit5115 ], [ %.663266, %.loopexit5114 ], [ %.71, %bb.ue ], [ %i.djt, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4667 ], [ %.73, %bb.un ], [ %.73, %.loopexit5082 ], [ %.583258.ph, %bb.uu ], [ %.583258.ph, %bb.uw ], [ %.583258.ph, %bb.uy ], [ %.583258.ph, %bb.uz ], [ %.583258.ph, %bb.vc ], [ %.583258.ph, %bb.ve ], [ %i.dnn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4684 ], [ %.76, %.loopexit5081 ], [ %.78, %bb.vr ], [ %i.dpz, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4701 ], [ %i.dql, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4704 ], [ %.84, %bb.we ], [ %.84, %bb.wf ], [ %.83, %bb.wb ], [ %.86, %.loopexit5121.a ], [ %.86, %.loopexit5120.a ], [ %.86, %.loopexit5118.a ], [ %.86, %.loopexit5117 ], [ %.87, %.loopexit5116 ], [ %.89, %bb.xs ], [ %i.ecp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4805 ], [ %.313231, %.loopexit5099 ], [ %.313231, %bb.xm ], [ %.333233, %.loopexit5095 ], [ %.333233, %bb.ya ], [ %.373237.ph, %bb.yk ], [ %.373237.ph, %bb.ym ], [ %.373237.ph, %bb.yg ], [ %.92, %bb.yq ], [ %.92, %bb.ys ], [ %.92, %.loopexit5072 ], [ %.91, %bb.yw ], [ %.493249.ph, %.loopexit5091 ], [ %.493249.ph, %bb.zl ], [ %.583258.ph, %bb.aam ], [ %.583258.ph, %bb.aal ], [ %.583258.ph, %bb.aae ] ; 2 uses
  %indvars.iv.next5991 = add nuw nsw i64 %indvars.iv5990, 2 ; 2 uses
  %i.epm = icmp samesign ult i64 %indvars.iv.next5991, %i.le
  br i1 %i.epm, label %bb.cx, label %._crit_edge5541, !llvm.loop !338

bb.aax:                                           ; preds = %._crit_edge5541
  %i.epn = add nsw i32 %i.b, -1
  %i.epo = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.epp = load i64, ptr %i.eb, align 8, !tbaa !40 ; 2 uses
  %i.epq = zext nneg i32 %i.epn to i64            ; 2 uses
  %i.epr = mul i64 %i.epp, %i.epq
  %i.eps = getelementptr inbounds nuw i8, ptr %i.epo, i64 %i.epr ; 35 uses
  %i.ept = sub i64 0, %i.epp                      ; 2 uses
  %i.epu = getelementptr inbounds i8, ptr %i.eps, i64 %i.ept ; 53 uses
  %i.epv = getelementptr inbounds i8, ptr %i.epu, i64 %i.ept ; 20 uses
  %i.epw = load ptr, ptr %i.ee, align 8, !tbaa !55
  %i.epx = load i64, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.epy = mul i64 %i.epx, %i.epq
  %i.epz = getelementptr inbounds nuw i8, ptr %i.epw, i64 %i.epy ; 116 uses
  %13 = sub i64 0, %i.epx                         ; 2 uses
  %14 = getelementptr inbounds i8, ptr %i.epz, i64 %13
  %i.eqa = getelementptr inbounds i8, ptr %14, i64 %13 ; 59 uses
  br i1 %.not5511, label %.lr.ph5577.preheader, label %._crit_edge5578

.lr.ph5577.preheader:                             ; preds = %bb.aax
  %i.eqb = zext nneg i32 %i.eh to i64             ; 3 uses
  br label %.lr.ph5577

._crit_edge5578:                                  ; preds = %.backedge5050, %bb.aax
  %.98.lcssa = phi i16 [ %.153215.lcssa, %bb.aax ], [ %.98.be, %.backedge5050 ] ; 4 uses
  %.lcssa5210 = phi i32 [ 0, %bb.aax ], [ %i.etb, %.backedge5050 ] ; 2 uses
  %i.eqc = icmp sgt i32 %.lcssa5210, %i.eh
  %i.eqd = sext i32 %.lcssa5210 to i64            ; 5 uses
  %i.eqe = getelementptr inbounds i8, ptr %i.eps, i64 %i.eqd
  %i.eqf = load i8, ptr %i.eqe, align 1, !tbaa !32
  %.not3511 = icmp eq i8 %i.eqf, 0                ; 2 uses
  br i1 %i.eqc, label %bb.agl, label %bb.ahh

.lr.ph5577:                                       ; preds = %.lr.ph5577.preheader, %.backedge5050
  %i.eqg = phi i32 [ %i.etb, %.backedge5050 ], [ 0, %.lr.ph5577.preheader ] ; 6 uses
  %.031605575 = phi i32 [ %.03160.be, %.backedge5050 ], [ -2, %.lr.ph5577.preheader ]
  %.985574 = phi i16 [ %.98.be, %.backedge5050 ], [ %.153215.lcssa, %.lr.ph5577.preheader ] ; 9 uses
  %i.eqh = sext i32 %i.eqg to i64                 ; 7 uses
  %i.eqi = getelementptr inbounds i8, ptr %i.eps, i64 %i.eqh
  %i.eqj = load i8, ptr %i.eqi, align 1, !tbaa !32
  %.not3390 = icmp eq i8 %i.eqj, 0
  br i1 %.not3390, label %.loopexit5043.a, label %bb.aay

bb.aay:                                           ; preds = %.lr.ph5577
  %i.eqk = add nsw i32 %.031605575, 3
  %i.eql = sext i32 %i.eqk to i64                 ; 2 uses
  %i.eqm = getelementptr inbounds i8, ptr %i.epu, i64 %i.eql
  %i.eqn = load i8, ptr %i.eqm, align 1, !tbaa !32
  %.not3391 = icmp eq i8 %i.eqn, 0
  br i1 %.not3391, label %bb.aba, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.eqo = getelementptr inbounds [2 x i8], ptr %i.eqa, i64 %i.eqh
  %i.eqp = load i16, ptr %i.eqo, align 2, !tbaa !54
  %i.eqq = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.eqh
  store i16 %i.eqp, ptr %i.eqq, align 2, !tbaa !54
  br label %.preheader5042

bb.aba:                                           ; preds = %bb.aay
  %i.eqr = getelementptr inbounds i8, ptr %i.eps, i64 %i.eql
  %i.eqs = load i8, ptr %i.eqr, align 1, !tbaa !32
  %.not3392 = icmp eq i8 %i.eqs, 0
  br i1 %.not3392, label %bb.abm, label %bb.abb

bb.abb:                                           ; preds = %bb.abp, %bb.aba
  %.99 = phi i16 [ %.101, %bb.abp ], [ %.985574, %bb.aba ] ; 8 uses
  %.1 = phi i32 [ %.3, %bb.abp ], [ %i.eqg, %bb.aba ] ; 6 uses
  %i.eqt = add nsw i32 %.1, 2
  %i.equ = sext i32 %i.eqt to i64                 ; 2 uses
  %i.eqv = getelementptr inbounds i8, ptr %i.epu, i64 %i.equ
  %i.eqw = load i8, ptr %i.eqv, align 1, !tbaa !32
  %.not3450 = icmp eq i8 %i.eqw, 0
  %i.eqx = sext i32 %.1 to i64                    ; 4 uses
  %i.eqy = getelementptr inbounds i8, ptr %i.epu, i64 %i.eqx
  %i.eqz = load i8, ptr %i.eqy, align 1, !tbaa !32
  %.not3451 = icmp eq i8 %i.eqz, 0                ; 2 uses
  br i1 %.not3450, label %bb.abk, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  br i1 %.not3451, label %bb.abj, label %bb.abd

bb.abd:                                           ; preds = %bb.afq, %bb.aeo, %bb.ace, %bb.abc
  %.100 = phi i16 [ %.99, %bb.abc ], [ %.102, %bb.ace ], [ %.110.ph, %bb.aeo ], [ %.113.ph, %bb.afq ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.abc ], [ %i.etq, %bb.ace ], [ %i.fef, %bb.aeo ], [ %i.fix, %bb.afq ] ; 3 uses
  %i.era = sext i32 %.2 to i64                    ; 4 uses
  %i.erb = getelementptr i8, ptr %i.epv, i64 %i.era
  %i.erc = getelementptr i8, ptr %i.erb, i64 1
  %i.erd = load i8, ptr %i.erc, align 1, !tbaa !32
  %.not3471 = icmp eq i8 %i.erd, 0
  %i.ere = getelementptr [2 x i8], ptr %i.eqa, i64 %i.era ; 3 uses
  br i1 %.not3471, label %bb.abf, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  %i.erf = getelementptr i8, ptr %i.ere, i64 4
  %i.erg = load i16, ptr %i.erf, align 2, !tbaa !54
  %i.erh = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.era
  store i16 %i.erg, ptr %i.erh, align 2, !tbaa !54
  br label %.preheader5048

bb.abf:                                           ; preds = %bb.abd
  %i.eri = load i16, ptr %i.ere, align 2, !tbaa !54 ; 4 uses
  %i.erj = getelementptr i8, ptr %i.ere, i64 4
  %i.erk = load i16, ptr %i.erj, align 2, !tbaa !54 ; 4 uses
  br label %bb.abg

bb.abg:                                           ; preds = %bb.abg, %bb.abf
  %.0.i.i4876 = phi i16 [ %i.eri, %bb.abf ], [ %i.ern, %bb.abg ] ; 4 uses
  %i.erl = zext i16 %.0.i.i4876 to i64
  %i.erm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.erl
  %i.ern = load i16, ptr %i.erm, align 2, !tbaa !54 ; 2 uses
  %i.ero = icmp ult i16 %i.ern, %.0.i.i4876
  br i1 %i.ero, label %bb.abg, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4877, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4877: ; preds = %bb.abg
  %.not.i4878 = icmp eq i16 %i.eri, %i.erk
  br i1 %.not.i4878, label %bb.abh, label %.preheader.i4879

.preheader.i4879:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4877, %.preheader.i4879
  %.0.i15.i4880 = phi i16 [ %i.err, %.preheader.i4879 ], [ %i.erk, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4877 ] ; 3 uses
  %i.erp = zext i16 %.0.i15.i4880 to i64
  %i.erq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.erp
  %i.err = load i16, ptr %i.erq, align 2, !tbaa !54 ; 2 uses
  %i.ers = icmp ult i16 %i.err, %.0.i15.i4880
  br i1 %i.ers, label %.preheader.i4879, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4881, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4881: ; preds = %.preheader.i4879
  %spec.select.i4882 = tail call i16 @llvm.umin.i16(i16 %.0.i.i4876, i16 %.0.i15.i4880) ; 3 uses
  %i.ert = zext i16 %i.erk to i64
  %i.eru = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.ert ; 3 uses
  %i.erv = load i16, ptr %i.eru, align 2, !tbaa !54 ; 2 uses
  %i.erw = icmp ult i16 %i.erv, %i.erk
  br i1 %i.erw, label %.lr.ph.i.i4888, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4883

.lr.ph.i.i4888:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4881, %.lr.ph.i.i4888
  %i.erx = phi i16 [ %i.esb, %.lr.ph.i.i4888 ], [ %i.erv, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4881 ] ; 2 uses
  %i.ery = phi ptr [ %i.esa, %.lr.ph.i.i4888 ], [ %i.eru, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4881 ]
  store i16 %spec.select.i4882, ptr %i.ery, align 2, !tbaa !54
  %i.erz = zext i16 %i.erx to i64
  %i.esa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.erz ; 3 uses
  %i.esb = load i16, ptr %i.esa, align 2, !tbaa !54 ; 2 uses
  %i.esc = icmp ult i16 %i.esb, %i.erx
  br i1 %i.esc, label %.lr.ph.i.i4888, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4883, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4883: ; preds = %.lr.ph.i.i4888, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4881
  %.lcssa.i.i4884 = phi ptr [ %i.eru, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i4881 ], [ %i.esa, %.lr.ph.i.i4888 ]
  store i16 %spec.select.i4882, ptr %.lcssa.i.i4884, align 2, !tbaa !54
  br label %bb.abh

bb.abh:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4883, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4877
  %.1.i4885 = phi i16 [ %spec.select.i4882, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i4883 ], [ %.0.i.i4876, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i4877 ] ; 3 uses
  %i.esd = zext i16 %i.eri to i64
  %i.ese = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.esd ; 3 uses
  %i.esf = load i16, ptr %i.ese, align 2, !tbaa !54 ; 2 uses
  %i.esg = icmp ult i16 %i.esf, %i.eri
  br i1 %i.esg, label %.lr.ph.i18.i4887, label %.loopexit5040

.lr.ph.i18.i4887:                                 ; preds = %bb.abh, %.lr.ph.i18.i4887
  %i.esh = phi i16 [ %i.esl, %.lr.ph.i18.i4887 ], [ %i.esf, %bb.abh ] ; 2 uses
  %i.esi = phi ptr [ %i.esk, %.lr.ph.i18.i4887 ], [ %i.ese, %bb.abh ]
  store i16 %.1.i4885, ptr %i.esi, align 2, !tbaa !54
  %i.esj = zext i16 %i.esh to i64
  %i.esk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.esj ; 3 uses
  %i.esl = load i16, ptr %i.esk, align 2, !tbaa !54 ; 2 uses
  %i.esm = icmp ult i16 %i.esl, %i.esh
  br i1 %i.esm, label %.lr.ph.i18.i4887, label %.loopexit5040, !llvm.loop !1

.loopexit5040:                                    ; preds = %.lr.ph.i18.i4887, %bb.abh
  %.lcssa.i17.i4886 = phi ptr [ %i.ese, %bb.abh ], [ %i.esk, %.lr.ph.i18.i4887 ]
  store i16 %.1.i4885, ptr %.lcssa.i17.i4886, align 2, !tbaa !54
  %i.esn = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.era
  store i16 %.1.i4885, ptr %i.esn, align 2, !tbaa !54
  br label %.preheader5048

bb.abi:                                           ; preds = %.invoke6711
  %i.eso = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.abj:                                           ; preds = %bb.abc
  %i.esp = getelementptr inbounds [2 x i8], ptr %i.eqa, i64 %i.equ
  %i.esq = load i16, ptr %i.esp, align 2, !tbaa !54
  %i.esr = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.eqx
  store i16 %i.esq, ptr %i.esr, align 2, !tbaa !54
  br label %.preheader5048

bb.abk:                                           ; preds = %bb.abb
  br i1 %.not3451, label %bb.abl, label %bb.adk

bb.abl:                                           ; preds = %bb.abk
  %i.ess = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.eqx
  store i16 %.99, ptr %i.ess, align 2, !tbaa !54
  %i.est = zext i16 %.99 to i64
  %i.esu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.est
  store i16 %.99, ptr %i.esu, align 2, !tbaa !54
  %.not.i4890 = icmp eq i16 %.99, -1
  br i1 %.not.i4890, label %.invoke6711, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4892

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4892: ; preds = %bb.abl
  %i.esv = add nuw i16 %.99, 1
  br label %bb.acu

bb.abm:                                           ; preds = %bb.aba
  %i.esw = getelementptr inbounds i8, ptr %i.epu, i64 %i.eqh
  %i.esx = load i8, ptr %i.esw, align 1, !tbaa !32
  %.not3393 = icmp eq i8 %i.esx, 0
  br i1 %.not3393, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.esy = getelementptr inbounds [2 x i8], ptr %i.eqa, i64 %i.eqh
  %i.esz = load i16, ptr %i.esy, align 2, !tbaa !54
  %i.eta = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.eqh
  store i16 %i.esz, ptr %i.eta, align 2, !tbaa !54
  br label %.backedge5050

.backedge5050:                                    ; preds = %bb.abn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4895, %bb.acq, %bb.acs, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4901, %bb.add, %bb.aeb, %bb.ael, %bb.afj, %bb.afu, %bb.afv, %bb.agk
  %.98.be = phi i16 [ %.114.ph, %bb.agk ], [ %.107, %bb.aeb ], [ %.105, %bb.add ], [ %.102, %bb.acq ], [ %.102, %bb.acs ], [ %i.exj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4901 ], [ %.110.ph, %bb.ael ], [ %.112, %bb.afj ], [ %.113.ph, %bb.afu ], [ %.113.ph, %bb.afv ], [ %.985574, %bb.abn ], [ %i.etf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4895 ] ; 2 uses
  %.03160.be = phi i32 [ %i.fma, %bb.agk ], [ %i.ezu, %bb.aeb ], [ %i.exk, %bb.add ], [ %i.etq, %bb.acq ], [ %i.etq, %bb.acs ], [ %i.etq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4901 ], [ %i.feb, %bb.ael ], [ %.14, %bb.afj ], [ %i.fix, %bb.afu ], [ %i.fix, %bb.afv ], [ %i.eqg, %bb.abn ], [ %i.eqg, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4895 ] ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN2cv19connectedcomponents15LabelingBolelliIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  br i1 %.not3378, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.cv, %bb.ce, %bb.ca
  %i.jd = getelementptr i8, ptr %i.ed, i64 %.53192.lcssa
  %i.je = getelementptr i8, ptr %i.jd, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !32
  %.not3380 = icmp eq i8 %i.jf, 0
  br i1 %.not3380, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.53192.lcssa
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !33
  %i.ji = sext i32 %.lcssa5445 to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ji
  store i32 %i.jh, ptr %i.jj, align 4, !tbaa !33
  br label %bb.cw

bb.cd:                                            ; preds = %bb.cb
  %i.jk = sext i32 %.lcssa5445 to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.jk
  store i32 %.103210.ph5126.lcssa5463, ptr %i.jl, align 4, !tbaa !33
  %i.jm = sext i32 %.103210.ph5126.lcssa5463 to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.jm
  store i32 %.103210.ph5126.lcssa5463, ptr %i.jn, align 4, !tbaa !33
  %.not.i3899 = icmp eq i32 %.103210.ph5126.lcssa5463, 2147483647
  br i1 %.not.i3899, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3901

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3901: ; preds = %bb.cd
  %i.jo = add nsw i32 %.103210.ph5126.lcssa5463, 1
  br label %bb.cw

bb.ce:                                            ; preds = %bb.ca
  %i.jp = getelementptr inbounds i8, ptr %i.ed, i64 %i.gu
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !32
  %.not3379 = icmp eq i8 %i.jq, 0
  br i1 %.not3379, label %bb.cf, label %bb.cb

bb.cf:                                            ; preds = %bb.ce
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gu
  store i32 0, ptr %i.jr, align 4, !tbaa !33
  br label %bb.cw

bb.cg:                                            ; preds = %._crit_edge5515
  br i1 %.not3391, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cu, %bb.ck, %bb.cg
  %.pre-phi6056.a = phi i64 [ %i.gu, %bb.cu ], [ %i.ek, %bb.ck ], [ %i.ek, %bb.cg ] ; 2 uses
  %.113211 = phi i32 [ %.103210.ph5126.lcssa5463, %bb.cu ], [ %.53205.lcssa, %bb.ck ], [ %.53205.lcssa, %bb.cg ] ; 6 uses
  %i.js = getelementptr i8, ptr %i.bb, i64 %.pre-phi6056.a
  %i.jt = getelementptr i8, ptr %i.js, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !32
  %.not3390 = icmp eq i8 %i.ju, 0
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.pre-phi6056.a
  store i32 %.113211, ptr %i.jv, align 4, !tbaa !33
  %i.jw = sext i32 %.113211 to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.jw
  store i32 %.113211, ptr %i.jx, align 4, !tbaa !33
  %.not.i3905 = icmp eq i32 %.113211, 2147483647  ; 2 uses
  br i1 %.not3390, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %.not.i3905, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3904

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3904: ; preds = %bb.ci
  %i.jy = add nsw i32 %.113211, 1
  br label %bb.cw

bb.cj:                                            ; preds = %bb.ch
  br i1 %.not.i3905, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3907

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3907: ; preds = %bb.cj
  %i.jz = add nsw i32 %.113211, 1
  br label %bb.cw

bb.ck:                                            ; preds = %bb.cg
  %i.ka = getelementptr inbounds i8, ptr %i.ed, i64 %i.ek
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !32
  %.not3387 = icmp eq i8 %i.kb, 0
  br i1 %.not3387, label %bb.cl, label %bb.ch

bb.cl:                                            ; preds = %bb.cv, %bb.cs, %bb.ck
  %.123212 = phi i32 [ %.53205.lcssa, %bb.ck ], [ %.83208, %bb.cs ], [ %.103210.ph5126.lcssa5463, %bb.cv ] ; 11 uses
  %.73194 = phi i32 [ %.lcssa5474, %bb.ck ], [ %i.fv, %bb.cs ], [ %.lcssa5445, %bb.cv ] ; 3 uses
  %i.kc = add nsw i32 %.73194, 1
  %i.kd = sext i32 %i.kc to i64                   ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %i.bb, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !32
  %.not3388 = icmp eq i8 %i.kf, 0
  br i1 %.not3388, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kg = sext i32 %.73194 to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.kg
  store i32 %.123212, ptr %i.kh, align 4, !tbaa !33
  %i.ki = sext i32 %.123212 to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.ki
  store i32 %.123212, ptr %i.kj, align 4, !tbaa !33
  %.not.i3908 = icmp eq i32 %.123212, 2147483647
  br i1 %.not.i3908, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3910

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3910: ; preds = %bb.cm
  %i.kk = add nsw i32 %.123212, 1
  br label %bb.cw

bb.cn:                                            ; preds = %bb.cl
  %i.kl = getelementptr inbounds i8, ptr %i.ed, i64 %i.kd
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !32
  %.not3389 = icmp eq i8 %i.km, 0
  %i.kn = sext i32 %.73194 to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.kn ; 2 uses
  br i1 %.not3389, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i32 %.123212, ptr %i.ko, align 4, !tbaa !33
  %i.kp = sext i32 %.123212 to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.kp
  store i32 %.123212, ptr %i.kq, align 4, !tbaa !33
  %.not.i3911 = icmp eq i32 %.123212, 2147483647
  br i1 %.not.i3911, label %.invoke6706, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3913

.invoke6706:                                      ; preds = %bb.at, %bb.bm, %bb.az, %bb.ax, %bb.av, %bb.bp, %bb.co, %bb.cm, %bb.cj, %bb.ci, %bb.cd, %bb.bt, %bb.br
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
          to label %.cont6707 unwind label %bb.au

.cont6707:                                        ; preds = %.invoke6706
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3913: ; preds = %bb.co
  %i.kr = add nsw i32 %.123212, 1
  br label %bb.cw

bb.cp:                                            ; preds = %bb.cn
  store i32 0, ptr %i.ko, align 4, !tbaa !33
  br label %bb.cw

bb.cq:                                            ; preds = %bb.bc
  br i1 %.not3384, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cu, %bb.cs, %bb.cq
  %.pre-phi6057.a = phi i64 [ %i.gu, %bb.cu ], [ %i.fx, %bb.cs ], [ %i.fx, %bb.cq ]
  %.133213 = phi i32 [ %.103210.ph5126.lcssa5463, %bb.cu ], [ %.83208, %bb.cs ], [ %.83208, %bb.cq ]
  %i.ks = getelementptr [4 x i8], ptr %i.ef, i64 %.pre-phi6057.a ; 2 uses
  %i.kt = getelementptr i8, ptr %i.ks, i64 -8
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !33
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !33
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  %i.kv = getelementptr inbounds i8, ptr %i.ed, i64 %i.fx
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !32
  %.not3382 = icmp eq i8 %i.kw, 0
  br i1 %.not3382, label %bb.cl, label %bb.cr

bb.ct:                                            ; preds = %.outer._crit_edge
  br i1 %.not3378, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kx = getelementptr i8, ptr %i.ed, i64 %.53192.lcssa
  %i.ky = getelementptr i8, ptr %i.kx, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !32
  %.not3377 = icmp eq i8 %i.kz, 0
  br i1 %.not3377, label %bb.ch, label %bb.cr

bb.cv:                                            ; preds = %bb.ct
  %i.la = getelementptr inbounds i8, ptr %i.ed, i64 %i.gu
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !32
  %.not3376 = icmp eq i8 %i.lb, 0
  br i1 %.not3376, label %bb.cl, label %bb.cb

bb.cw:                                            ; preds = %bb.cr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3907, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3904, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3910, %bb.cp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3913, %bb.cf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3901, %bb.cc, %bb.bw, %bb.bz, %bb.by, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3895, %bb.bu, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3898
  %.143214 = phi i32 [ %i.il, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3895 ], [ %i.ir, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3898 ], [ %.53205.lcssa, %bb.bu ], [ %i.jy, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3904 ], [ %i.jz, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3907 ], [ %i.kk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3910 ], [ %i.kr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3913 ], [ %.123212, %bb.cp ], [ %.83208, %bb.bw ], [ %.83208, %bb.by ], [ %.83208, %bb.bz ], [ %.133213, %bb.cr ], [ %.103210.ph5126.lcssa5463, %bb.cf ], [ %.103210.ph5126.lcssa5463, %bb.cc ], [ %i.jo, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3901 ] ; 2 uses
  %i.lc = icmp sgt i32 %i.ag, 2
  br i1 %i.lc, label %.lr.ph5540, label %._crit_edge5541

.lr.ph5540:                                       ; preds = %bb.cw
  %i.ld = icmp slt i32 %i.n, 3
  %.not3807.a = icmp eq i32 %i.n, 2
  %i.le = sext i32 %i.eh to i64                   ; 3 uses
  %i.lf = zext nneg i32 %i.ag to i64
  br label %bb.cx

._crit_edge5541:                                  ; preds = %bb.aaw, %bb.cw
  %.153215.lcssa = phi i32 [ %.143214, %bb.cw ], [ %.97, %bb.aaw ] ; 3 uses
  br i1 %i.ai, label %bb.aax, label %bb.ajn

bb.cx:                                            ; preds = %.lr.ph5540, %bb.aaw
  %indvars.iv5990 = phi i64 [ 2, %.lr.ph5540 ], [ %indvars.iv.next5991, %bb.aaw ] ; 3 uses
  %.1532155537 = phi i32 [ %.143214, %.lr.ph5540 ], [ %.97, %bb.aaw ] ; 6 uses
  %i.lg = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.lh = load i64, ptr %i.eb, align 8, !tbaa !40 ; 3 uses
  %i.li = mul i64 %i.lh, %indvars.iv5990
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.li ; 74 uses
  %i.lk = sub i64 0, %i.lh                        ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lj, i64 %i.lk ; 100 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 %i.lk ; 39 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lh ; 51 uses
  %i.lo = load ptr, ptr %i.ee, align 8, !tbaa !55
  %i.lp = load i64, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.lq = mul i64 %i.lp, %indvars.iv5990
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lq ; 253 uses
  %11 = sub i64 0, %i.lp                          ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.lr, i64 %11
  %i.ls = getelementptr inbounds i8, ptr %12, i64 %11 ; 125 uses
  %i.lt = load i8, ptr %i.lj, align 1, !tbaa !32
  %.not3808 = icmp eq i8 %i.lt, 0                 ; 3 uses
  br i1 %i.ld, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not3807.a, label %bb.vp, label %bb.sz

bb.cz:                                            ; preds = %bb.cx
  br i1 %.not3808, label %bb.ds, label %bb.da

bb.da:                                            ; preds = %bb.ri, %bb.ol, %bb.oc, %bb.cz
  %.163216 = phi i32 [ %.1532155537, %bb.cz ], [ %.503250, %bb.oc ], [ %.513251, %bb.ol ], [ %.593259, %bb.ri ] ; 8 uses
  %.03161 = phi i32 [ 0, %bb.cz ], [ %i.cbg, %bb.oc ], [ %i.cdf, %bb.ol ], [ %i.csg, %bb.ri ] ; 7 uses
  %i.lu = add nsw i32 %.03161, 1
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.ll, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !32
  %.not3518 = icmp eq i8 %i.lx, 0
  br i1 %.not3518, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ly = sext i32 %.03161 to i64                 ; 2 uses
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !33
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ly
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !33
  br label %.preheader5073

bb.dc:                                            ; preds = %bb.da
  %i.mc = getelementptr inbounds i8, ptr %i.lj, i64 %i.lv
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !32
  %.not3519 = icmp eq i8 %i.md, 0
  br i1 %.not3519, label %bb.dp, label %bb.dd

bb.dd:                                            ; preds = %bb.du, %bb.dc
  %.173217 = phi i32 [ %.203220, %bb.du ], [ %.163216, %bb.dc ] ; 8 uses
  %.13162 = phi i32 [ %.43165, %bb.du ], [ %.03161, %bb.dc ] ; 6 uses
  %i.me = add nsw i32 %.13162, 2
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.ll, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !32
  %.not3670.a = icmp eq i8 %i.mh, 0
  %i.mi = sext i32 %.13162 to i64                 ; 5 uses
  %i.mj = getelementptr inbounds i8, ptr %i.ll, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !32
  %.not3671 = icmp eq i8 %i.mk, 0                 ; 2 uses
  br i1 %.not3670.a, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %bb.dd
  br i1 %.not3671, label %bb.dl, label %bb.df

bb.df:                                            ; preds = %bb.qk, %bb.kw, %bb.eo, %bb.de
  %.183218 = phi i32 [ %.173217, %bb.de ], [ %.233223, %bb.eo ], [ %.373237.ph, %bb.kw ], [ %.583258.ph, %bb.qk ] ; 2 uses
  %.23163 = phi i32 [ %.13162, %bb.de ], [ %.73168, %bb.eo ], [ %i.bhc, %bb.kw ], [ %i.cpy, %bb.qk ] ; 3 uses
  %i.ml = sext i32 %.23163 to i64                 ; 4 uses
  %i.mm = getelementptr i8, ptr %i.lm, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mm, i64 1
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !32
  %.not3673 = icmp eq i8 %i.mo, 0
  %i.mp = getelementptr [4 x i8], ptr %i.ls, i64 %i.ml ; 3 uses
  br i1 %.not3673, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mq = getelementptr i8, ptr %i.mp, i64 8
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !33
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ml
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !33
  br label %.preheader5096

bb.dh:                                            ; preds = %bb.df
  %i.mt = load i32, ptr %i.mp, align 4, !tbaa !33 ; 4 uses
  %i.mu = getelementptr i8, ptr %i.mp, i64 8
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !33 ; 4 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %bb.dh
  %.0.i.i = phi i32 [ %i.mt, %bb.dh ], [ %i.my, %bb.di ] ; 4 uses
  %i.mw = sext i32 %.0.i.i to i64
  %i.mx = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !33 ; 2 uses
  %i.mz = icmp slt i32 %i.my, %.0.i.i
  br i1 %i.mz, label %bb.di, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i: ; preds = %bb.di
  %.not.i3914 = icmp eq i32 %i.mt, %i.mv
  br i1 %.not.i3914, label %bb.dj, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i18.i = phi i32 [ %i.nc, %.preheader.i ], [ %i.mv, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.na = sext i32 %.0.i18.i to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !33 ; 2 uses
  %i.nd = icmp slt i32 %i.nc, %.0.i18.i
  br i1 %i.nd, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i: ; preds = %.preheader.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i) ; 3 uses
  %i.ne = sext i32 %i.mv to i64
  %i.nf = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.ne ; 3 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !33 ; 2 uses
  %i.nh = icmp slt i32 %i.ng, %i.mv
  br i1 %i.nh, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, %.lr.ph.i.i
  %i.ni = phi i32 [ %i.nm, %.lr.ph.i.i ], [ %i.ng, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ] ; 2 uses
  %i.nj = phi ptr [ %i.nl, %.lr.ph.i.i ], [ %i.nf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ]
  store i32 %spec.select.i, ptr %i.nj, align 4, !tbaa !33
  %i.nk = sext i32 %i.ni to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.nk ; 3 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !33 ; 2 uses
  %i.nn = icmp slt i32 %i.nm, %i.ni
  br i1 %i.nn, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i
  %.lcssa.i.i = phi ptr [ %i.nf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ], [ %i.nl, %.lr.ph.i.i ]
  store i32 %spec.select.i, ptr %.lcssa.i.i, align 4, !tbaa !33
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i
  %.1.i = phi i32 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.no = sext i32 %i.mt to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.no ; 3 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !33 ; 2 uses
  %i.nr = icmp slt i32 %i.nq, %i.mt
  br i1 %i.nr, label %.lr.ph.i21.i, label %.loopexit5070.a

.lr.ph.i21.i:                                     ; preds = %bb.dj, %.lr.ph.i21.i
  %i.ns = phi i32 [ %i.nw, %.lr.ph.i21.i ], [ %i.nq, %bb.dj ] ; 2 uses
  %i.nt = phi ptr [ %i.nv, %.lr.ph.i21.i ], [ %i.np, %bb.dj ]
  store i32 %.1.i, ptr %i.nt, align 4, !tbaa !33
  %i.nu = sext i32 %i.ns to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.nu ; 3 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !33 ; 2 uses
  %i.nx = icmp slt i32 %i.nw, %i.ns
  br i1 %i.nx, label %.lr.ph.i21.i, label %.loopexit5070.a, !llvm.loop !4

.loopexit5070.a:                                  ; preds = %.lr.ph.i21.i, %bb.dj
  %.lcssa.i20.i = phi ptr [ %i.np, %bb.dj ], [ %i.nv, %.lr.ph.i21.i ]
  store i32 %.1.i, ptr %.lcssa.i20.i, align 4, !tbaa !33
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ml
  store i32 %.1.i, ptr %i.ny, align 4, !tbaa !33
  br label %.preheader5096

bb.dk:                                            ; preds = %.invoke6708
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.dl:                                            ; preds = %bb.de
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.mf
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !33
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.mi
  store i32 %i.ob, ptr %i.oc, align 4, !tbaa !33
  br label %.preheader5096

bb.dm:                                            ; preds = %bb.dd
  br i1 %.not3671, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.od = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.mi
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !33
  %i.of = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.mi
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !33
  br label %bb.iw

bb.do:                                            ; preds = %bb.dm
  %i.og = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.mi
  store i32 %.173217, ptr %i.og, align 4, !tbaa !33
  %i.oh = sext i32 %.173217 to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.oh
  store i32 %.173217, ptr %i.oi, align 4, !tbaa !33
  %.not.i3915 = icmp eq i32 %.173217, 2147483647
  br i1 %.not.i3915, label %.invoke6708, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3917

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3917: ; preds = %bb.do
  %i.oj = add nsw i32 %.173217, 1
  br label %bb.ia

bb.dp:                                            ; preds = %bb.dc
  %i.ok = sext i32 %.03161 to i64                 ; 4 uses
  %i.ol = getelementptr inbounds i8, ptr %i.ll, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !32
  %.not3520 = icmp eq i8 %i.om, 0
  br i1 %.not3520, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.on = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.ok
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !33
  %i.op = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ok
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !33
  br label %bb.oi

bb.dr:                                            ; preds = %bb.dp
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ok
  store i32 %.163216, ptr %i.oq, align 4, !tbaa !33
  %i.or = sext i32 %.163216 to i64
  %i.os = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.or
  store i32 %.163216, ptr %i.os, align 4, !tbaa !33
  %.not.i3918 = icmp eq i32 %.163216, 2147483647
  br i1 %.not.i3918, label %.invoke6708, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3920
end_hunk_15
begin_hunk_16_@_ZN2cv19connectedcomponents15LabelingBolelliIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
bb.aae:                                           ; preds = %bb.aad
  %i.emv = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.cpg
  %i.emw = load i32, ptr %i.emv, align 4, !tbaa !33
  %i.emx = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.cpg
  store i32 %i.emw, ptr %i.emx, align 4, !tbaa !33
  br label %bb.aaw

bb.aaf:                                           ; preds = %bb.zz
  %i.emy = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.cpg
  %i.emz = load i8, ptr %i.emy, align 1, !tbaa !32
  %.not3786 = icmp eq i8 %i.emz, 0
  br i1 %.not3786, label %bb.vu, label %bb.aag

bb.aag:                                           ; preds = %bb.aaf
  %i.ena = add nsw i32 %.42.lcssa, 3
  %i.enb = zext nneg i32 %i.ena to i64            ; 2 uses
  %i.enc = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.enb
  %i.end = load i8, ptr %i.enc, align 1, !tbaa !32
  %.not3787 = icmp eq i8 %i.end, 0
  br i1 %.not3787, label %bb.vb, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.ene = add nsw i32 %.42.lcssa, 1
  %i.enf = zext nneg i32 %i.ene to i64            ; 2 uses
  %i.eng = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.enf
  %i.enh = load i8, ptr %i.eng, align 1, !tbaa !32
  %.not3788 = icmp eq i8 %i.enh, 0
  br i1 %.not3788, label %bb.aai, label %bb.yo

bb.aai:                                           ; preds = %bb.aah
  %i.eni = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.enf
  %i.enj = load i8, ptr %i.eni, align 1, !tbaa !32
  %.not3789 = icmp eq i8 %i.enj, 0
  br i1 %.not3789, label %bb.vq, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  %i.enk = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.enb
  %i.enl = load i8, ptr %i.enk, align 1, !tbaa !32
  %.not3790 = icmp eq i8 %i.enl, 0
  br i1 %.not3790, label %bb.aak, label %._crit_edge6069

._crit_edge6069:                                  ; preds = %bb.aaj
  %.pre6100 = sext i32 %.lcssa5371 to i64
  br label %bb.yp

bb.aak:                                           ; preds = %bb.aaj
  %i.enm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.cpg
  %i.enn = load i8, ptr %i.enm, align 1, !tbaa !32
  %.not3791 = icmp eq i8 %i.enn, 0
  br i1 %.not3791, label %bb.aam, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.eno = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.cpg
  %i.enp = load i32, ptr %i.eno, align 4, !tbaa !33
  %i.enq = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.cpg
  store i32 %i.enp, ptr %i.enq, align 4, !tbaa !33
  br label %bb.aaw

bb.aam:                                           ; preds = %bb.aak
  %i.enr = sext i32 %.42.lcssa to i64
  %i.ens = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.enr
  %i.ent = load i32, ptr %i.ens, align 4, !tbaa !33
  %i.enu = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.cpg
  store i32 %i.ent, ptr %i.enu, align 4, !tbaa !33
  br label %bb.aaw

bb.aan:                                           ; preds = %bb.rg
  br i1 %.not3753.a, label %bb.aau, label %._crit_edge6068

._crit_edge6068:                                  ; preds = %bb.aan
  %.pre6102 = sext i32 %.43 to i64
  br label %bb.aao

bb.aao:                                           ; preds = %._crit_edge6068, %bb.aav
  %.pre-phi6103 = phi i64 [ %.pre6102, %._crit_edge6068 ], [ %i.epj, %bb.aav ] ; 2 uses
  %i.env = getelementptr i8, ptr %i.ln, i64 %.pre-phi6103
  %i.enw = getelementptr i8, ptr %i.env, i64 1
  %i.enx = load i8, ptr %i.enw, align 1, !tbaa !32
  %.not3749.a = icmp eq i8 %i.enx, 0
  br i1 %.not3749.a, label %bb.vq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.eny = getelementptr i8, ptr %i.ll, i64 %.pre-phi6103 ; 2 uses
  %i.enz = getelementptr i8, ptr %i.eny, i64 3
  %i.eoa = load i8, ptr %i.enz, align 1, !tbaa !32
  %.not3750 = icmp eq i8 %i.eoa, 0
  br i1 %.not3750, label %bb.vj, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap
  %i.eob = load i8, ptr %i.eny, align 1, !tbaa !32
  %.not3751 = icmp eq i8 %i.eob, 0
  br i1 %.not3751, label %bb.aar, label %bb.zt

bb.aar:                                           ; preds = %bb.aaq
  %i.eoc = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.csi
  %i.eod = load i32, ptr %i.eoc, align 4, !tbaa !33 ; 4 uses
  br label %bb.aas

bb.aas:                                           ; preds = %bb.aas, %bb.aar
  %.0.i.i4862 = phi i32 [ %i.eod, %bb.aar ], [ %i.eog, %bb.aas ] ; 4 uses
  %i.eoe = sext i32 %.0.i.i4862 to i64
  %i.eof = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.eoe
  %i.eog = load i32, ptr %i.eof, align 4, !tbaa !33 ; 2 uses
  %i.eoh = icmp slt i32 %i.eog, %.0.i.i4862
  br i1 %i.eoh, label %bb.aas, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4863, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4863: ; preds = %bb.aas
  %.not.i4864 = icmp eq i32 %i.eod, %i.csf
  br i1 %.not.i4864, label %bb.aat, label %.preheader.i4865

.preheader.i4865:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4863, %.preheader.i4865
  %.0.i18.i4866 = phi i32 [ %i.eok, %.preheader.i4865 ], [ %i.csf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4863 ] ; 3 uses
  %i.eoi = sext i32 %.0.i18.i4866 to i64
  %i.eoj = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.eoi
  %i.eok = load i32, ptr %i.eoj, align 4, !tbaa !33 ; 2 uses
  %i.eol = icmp slt i32 %i.eok, %.0.i18.i4866
  br i1 %i.eol, label %.preheader.i4865, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4867, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4867: ; preds = %.preheader.i4865
  %spec.select.i4868 = tail call i32 @llvm.smin.i32(i32 %.0.i.i4862, i32 %.0.i18.i4866) ; 3 uses
  %i.eom = sext i32 %i.csf to i64
  %i.eon = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.eom ; 3 uses
  %i.eoo = load i32, ptr %i.eon, align 4, !tbaa !33 ; 2 uses
  %i.eop = icmp slt i32 %i.eoo, %i.csf
  br i1 %i.eop, label %.lr.ph.i.i4874, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4869

.lr.ph.i.i4874:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4867, %.lr.ph.i.i4874
  %i.eoq = phi i32 [ %i.eou, %.lr.ph.i.i4874 ], [ %i.eoo, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4867 ] ; 2 uses
  %i.eor = phi ptr [ %i.eot, %.lr.ph.i.i4874 ], [ %i.eon, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4867 ]
  store i32 %spec.select.i4868, ptr %i.eor, align 4, !tbaa !33
  %i.eos = sext i32 %i.eoq to i64
  %i.eot = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.eos ; 3 uses
  %i.eou = load i32, ptr %i.eot, align 4, !tbaa !33 ; 2 uses
  %i.eov = icmp slt i32 %i.eou, %i.eoq
  br i1 %i.eov, label %.lr.ph.i.i4874, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4869, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4869: ; preds = %.lr.ph.i.i4874, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4867
  %.lcssa.i.i4870 = phi ptr [ %i.eon, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4867 ], [ %i.eot, %.lr.ph.i.i4874 ]
  store i32 %spec.select.i4868, ptr %.lcssa.i.i4870, align 4, !tbaa !33
  br label %bb.aat

bb.aat:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4869, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4863
  %.1.i4871 = phi i32 [ %spec.select.i4868, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4869 ], [ %.0.i.i4862, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4863 ] ; 3 uses
  %i.eow = sext i32 %i.eod to i64
  %i.eox = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.eow ; 3 uses
  %i.eoy = load i32, ptr %i.eox, align 4, !tbaa !33 ; 2 uses
  %i.eoz = icmp slt i32 %i.eoy, %i.eod
  br i1 %i.eoz, label %.lr.ph.i21.i4873, label %.loopexit5083

.lr.ph.i21.i4873:                                 ; preds = %bb.aat, %.lr.ph.i21.i4873
  %i.epa = phi i32 [ %i.epe, %.lr.ph.i21.i4873 ], [ %i.eoy, %bb.aat ] ; 2 uses
  %i.epb = phi ptr [ %i.epd, %.lr.ph.i21.i4873 ], [ %i.eox, %bb.aat ]
  store i32 %.1.i4871, ptr %i.epb, align 4, !tbaa !33
  %i.epc = sext i32 %i.epa to i64
  %i.epd = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.epc ; 3 uses
  %i.epe = load i32, ptr %i.epd, align 4, !tbaa !33 ; 2 uses
  %i.epf = icmp slt i32 %i.epe, %i.epa
  br i1 %i.epf, label %.lr.ph.i21.i4873, label %.loopexit5083, !llvm.loop !4

.loopexit5083:                                    ; preds = %.lr.ph.i21.i4873, %bb.aat
  %.lcssa.i20.i4872 = phi ptr [ %i.eox, %bb.aat ], [ %i.epd, %.lr.ph.i21.i4873 ]
  store i32 %.1.i4871, ptr %.lcssa.i20.i4872, align 4, !tbaa !33
  %i.epg = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.csi
  store i32 %.1.i4871, ptr %i.epg, align 4, !tbaa !33
  br label %bb.aaw

bb.aau:                                           ; preds = %bb.aan
  %i.eph = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.csi
  %i.epi = load i8, ptr %i.eph, align 1, !tbaa !32
  %.not3747 = icmp eq i8 %i.epi, 0
  br i1 %.not3747, label %bb.vu, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.epj = sext i32 %.43 to i64                   ; 2 uses
  %i.epk = getelementptr i8, ptr %i.lj, i64 %i.epj
  %i.epl = getelementptr i8, ptr %i.epk, i64 3
  %i.epm = load i8, ptr %i.epl, align 1, !tbaa !32
  %.not3748 = icmp eq i8 %i.epm, 0
  br i1 %.not3748, label %bb.ud, label %bb.aao

bb.aaw:                                           ; preds = %bb.aae, %bb.aal, %bb.aam, %bb.zo, %bb.zl, %.loopexit5091, %bb.yz, %bb.yq, %.loopexit5072, %bb.ys, %bb.yw, %bb.yh, %bb.yg, %bb.ym, %bb.yk, %bb.yd, %bb.ya, %.loopexit5095, %bb.xm, %.loopexit5099, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4805, %bb.xs, %bb.xp, %.loopexit5121.a, %.loopexit5120.a, %.loopexit5118.a, %.loopexit5117, %.loopexit5116, %bb.xg, %bb.wb, %bb.we, %bb.wf, %bb.wg, %bb.vr, %bb.vx, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4704, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4701, %.loopexit5081, %bb.vo, %bb.uw, %bb.uz, %bb.uy, %bb.uu, %bb.vc, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4684, %bb.ve, %bb.vg, %bb.ur, %.loopexit5082, %bb.un, %bb.ue, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4667, %bb.ug, %.loopexit5114, %bb.tu, %.loopexit5115, %bb.tx, %bb.tw, %bb.tj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4636, %bb.th, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4630, %bb.tb, %bb.te, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4633, %.loopexit5083, %.loopexit5084, %bb.tz
  %.97 = phi i32 [ %.83, %bb.wg ], [ %.593259, %bb.vo ], [ %.513251, %bb.ur ], [ %.373237.ph, %bb.yh ], [ %.493249.ph, %bb.zo ], [ %.81, %bb.vx ], [ %.69, %bb.tz ], [ %i.dfo, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4636 ], [ %.333233, %bb.yd ], [ %.70, %bb.ug ], [ %.583258.ph, %bb.vg ], [ %.383238, %bb.yz ], [ %i.pw, %bb.xg ], [ %.663266, %bb.tu ], [ %.96, %.loopexit5084 ], [ %.593259, %.loopexit5083 ], [ %.313231, %bb.xp ], [ %.613261, %bb.te ], [ %.603260, %bb.tb ], [ %i.der, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4630 ], [ %i.dey, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4633 ], [ %.633263, %bb.th ], [ %.633263, %bb.tj ], [ %.673267, %bb.tw ], [ %.673267, %bb.tx ], [ %.653265, %.loopexit5115 ], [ %.663266, %.loopexit5114 ], [ %.71, %bb.ue ], [ %i.dju, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4667 ], [ %.73, %bb.un ], [ %.73, %.loopexit5082 ], [ %.583258.ph, %bb.uu ], [ %.583258.ph, %bb.uw ], [ %.583258.ph, %bb.uy ], [ %.583258.ph, %bb.uz ], [ %.583258.ph, %bb.vc ], [ %.583258.ph, %bb.ve ], [ %i.dno, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4684 ], [ %.76, %.loopexit5081 ], [ %.78, %bb.vr ], [ %i.dqa, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4701 ], [ %i.dqm, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4704 ], [ %.84, %bb.we ], [ %.84, %bb.wf ], [ %.83, %bb.wb ], [ %.86, %.loopexit5121.a ], [ %.86, %.loopexit5120.a ], [ %.86, %.loopexit5118.a ], [ %.86, %.loopexit5117 ], [ %.87, %.loopexit5116 ], [ %.89, %bb.xs ], [ %i.ecq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4805 ], [ %.313231, %.loopexit5099 ], [ %.313231, %bb.xm ], [ %.333233, %.loopexit5095 ], [ %.333233, %bb.ya ], [ %.373237.ph, %bb.yk ], [ %.373237.ph, %bb.ym ], [ %.373237.ph, %bb.yg ], [ %.92, %bb.yq ], [ %.92, %bb.ys ], [ %.92, %.loopexit5072 ], [ %.91, %bb.yw ], [ %.493249.ph, %.loopexit5091 ], [ %.493249.ph, %bb.zl ], [ %.583258.ph, %bb.aam ], [ %.583258.ph, %bb.aal ], [ %.583258.ph, %bb.aae ] ; 2 uses
  %indvars.iv.next5991 = add nuw nsw i64 %indvars.iv5990, 2 ; 2 uses
  %i.epn = icmp samesign ult i64 %indvars.iv.next5991, %i.lf
  br i1 %i.epn, label %bb.cx, label %._crit_edge5541, !llvm.loop !342

bb.aax:                                           ; preds = %._crit_edge5541
  %i.epo = add nsw i32 %i.b, -1
  %i.epp = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.epq = load i64, ptr %i.eb, align 8, !tbaa !40 ; 2 uses
  %i.epr = zext nneg i32 %i.epo to i64            ; 2 uses
  %i.eps = mul i64 %i.epq, %i.epr
  %i.ept = getelementptr inbounds nuw i8, ptr %i.epp, i64 %i.eps ; 35 uses
  %i.epu = sub i64 0, %i.epq                      ; 2 uses
  %i.epv = getelementptr inbounds i8, ptr %i.ept, i64 %i.epu ; 53 uses
  %i.epw = getelementptr inbounds i8, ptr %i.epv, i64 %i.epu ; 20 uses
  %i.epx = load ptr, ptr %i.ee, align 8, !tbaa !55
  %i.epy = load i64, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.epz = mul i64 %i.epy, %i.epr
  %i.eqa = getelementptr inbounds nuw i8, ptr %i.epx, i64 %i.epz ; 116 uses
  %13 = sub i64 0, %i.epy                         ; 2 uses
  %14 = getelementptr inbounds i8, ptr %i.eqa, i64 %13
  %i.eqb = getelementptr inbounds i8, ptr %14, i64 %13 ; 59 uses
  br i1 %.not5511, label %.lr.ph5577.preheader, label %._crit_edge5578

.lr.ph5577.preheader:                             ; preds = %bb.aax
  %i.eqc = zext nneg i32 %i.eh to i64             ; 3 uses
  br label %.lr.ph5577

._crit_edge5578:                                  ; preds = %.backedge5050, %bb.aax
  %.98.lcssa = phi i32 [ %.153215.lcssa, %bb.aax ], [ %.98.be, %.backedge5050 ] ; 4 uses
  %.lcssa5210 = phi i32 [ 0, %bb.aax ], [ %i.etc, %.backedge5050 ] ; 2 uses
  %i.eqd = icmp sgt i32 %.lcssa5210, %i.eh
  %i.eqe = sext i32 %.lcssa5210 to i64            ; 5 uses
  %i.eqf = getelementptr inbounds i8, ptr %i.ept, i64 %i.eqe
  %i.eqg = load i8, ptr %i.eqf, align 1, !tbaa !32
  %.not3515 = icmp eq i8 %i.eqg, 0                ; 2 uses
  br i1 %i.eqd, label %bb.agl, label %bb.ahh

.lr.ph5577:                                       ; preds = %.lr.ph5577.preheader, %.backedge5050
  %i.eqh = phi i32 [ %i.etc, %.backedge5050 ], [ 0, %.lr.ph5577.preheader ] ; 6 uses
  %.031605575 = phi i32 [ %.03160.be, %.backedge5050 ], [ -2, %.lr.ph5577.preheader ]
  %.985574 = phi i32 [ %.98.be, %.backedge5050 ], [ %.153215.lcssa, %.lr.ph5577.preheader ] ; 9 uses
  %i.eqi = sext i32 %i.eqh to i64                 ; 7 uses
  %i.eqj = getelementptr inbounds i8, ptr %i.ept, i64 %i.eqi
  %i.eqk = load i8, ptr %i.eqj, align 1, !tbaa !32
  %.not3394 = icmp eq i8 %i.eqk, 0
  br i1 %.not3394, label %.loopexit5043.a, label %bb.aay

bb.aay:                                           ; preds = %.lr.ph5577
  %i.eql = add nsw i32 %.031605575, 3
  %i.eqm = sext i32 %i.eql to i64                 ; 2 uses
  %i.eqn = getelementptr inbounds i8, ptr %i.epv, i64 %i.eqm
  %i.eqo = load i8, ptr %i.eqn, align 1, !tbaa !32
  %.not3395 = icmp eq i8 %i.eqo, 0
  br i1 %.not3395, label %bb.aba, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.eqp = getelementptr inbounds [4 x i8], ptr %i.eqb, i64 %i.eqi
  %i.eqq = load i32, ptr %i.eqp, align 4, !tbaa !33
  %i.eqr = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.eqi
  store i32 %i.eqq, ptr %i.eqr, align 4, !tbaa !33
  br label %.preheader5042

bb.aba:                                           ; preds = %bb.aay
  %i.eqs = getelementptr inbounds i8, ptr %i.ept, i64 %i.eqm
  %i.eqt = load i8, ptr %i.eqs, align 1, !tbaa !32
  %.not3396 = icmp eq i8 %i.eqt, 0
  br i1 %.not3396, label %bb.abm, label %bb.abb

bb.abb:                                           ; preds = %bb.abp, %bb.aba
  %.99 = phi i32 [ %.101, %bb.abp ], [ %.985574, %bb.aba ] ; 8 uses
  %.1 = phi i32 [ %.3, %bb.abp ], [ %i.eqh, %bb.aba ] ; 6 uses
  %i.equ = add nsw i32 %.1, 2
  %i.eqv = sext i32 %i.equ to i64                 ; 2 uses
  %i.eqw = getelementptr inbounds i8, ptr %i.epv, i64 %i.eqv
  %i.eqx = load i8, ptr %i.eqw, align 1, !tbaa !32
  %.not3454 = icmp eq i8 %i.eqx, 0
  %i.eqy = sext i32 %.1 to i64                    ; 4 uses
  %i.eqz = getelementptr inbounds i8, ptr %i.epv, i64 %i.eqy
  %i.era = load i8, ptr %i.eqz, align 1, !tbaa !32
  %.not3455 = icmp eq i8 %i.era, 0                ; 2 uses
  br i1 %.not3454, label %bb.abk, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  br i1 %.not3455, label %bb.abj, label %bb.abd

bb.abd:                                           ; preds = %bb.afq, %bb.aeo, %bb.ace, %bb.abc
  %.100 = phi i32 [ %.99, %bb.abc ], [ %.102, %bb.ace ], [ %.110.ph, %bb.aeo ], [ %.113.ph, %bb.afq ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.abc ], [ %i.etr, %bb.ace ], [ %i.feg, %bb.aeo ], [ %i.fiy, %bb.afq ] ; 3 uses
  %i.erb = sext i32 %.2 to i64                    ; 4 uses
  %i.erc = getelementptr i8, ptr %i.epw, i64 %i.erb
  %i.erd = getelementptr i8, ptr %i.erc, i64 1
  %i.ere = load i8, ptr %i.erd, align 1, !tbaa !32
  %.not3475 = icmp eq i8 %i.ere, 0
  %i.erf = getelementptr [4 x i8], ptr %i.eqb, i64 %i.erb ; 3 uses
  br i1 %.not3475, label %bb.abf, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  %i.erg = getelementptr i8, ptr %i.erf, i64 8
  %i.erh = load i32, ptr %i.erg, align 4, !tbaa !33
  %i.eri = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.erb
  store i32 %i.erh, ptr %i.eri, align 4, !tbaa !33
  br label %.preheader5048

bb.abf:                                           ; preds = %bb.abd
  %i.erj = load i32, ptr %i.erf, align 4, !tbaa !33 ; 4 uses
  %i.erk = getelementptr i8, ptr %i.erf, i64 8
  %i.erl = load i32, ptr %i.erk, align 4, !tbaa !33 ; 4 uses
  br label %bb.abg

bb.abg:                                           ; preds = %bb.abg, %bb.abf
  %.0.i.i4876 = phi i32 [ %i.erj, %bb.abf ], [ %i.ero, %bb.abg ] ; 4 uses
  %i.erm = sext i32 %.0.i.i4876 to i64
  %i.ern = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.erm
  %i.ero = load i32, ptr %i.ern, align 4, !tbaa !33 ; 2 uses
  %i.erp = icmp slt i32 %i.ero, %.0.i.i4876
  br i1 %i.erp, label %bb.abg, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4877, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4877: ; preds = %bb.abg
  %.not.i4878 = icmp eq i32 %i.erj, %i.erl
  br i1 %.not.i4878, label %bb.abh, label %.preheader.i4879

.preheader.i4879:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4877, %.preheader.i4879
  %.0.i18.i4880 = phi i32 [ %i.ers, %.preheader.i4879 ], [ %i.erl, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4877 ] ; 3 uses
  %i.erq = sext i32 %.0.i18.i4880 to i64
  %i.err = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.erq
  %i.ers = load i32, ptr %i.err, align 4, !tbaa !33 ; 2 uses
  %i.ert = icmp slt i32 %i.ers, %.0.i18.i4880
  br i1 %i.ert, label %.preheader.i4879, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4881, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4881: ; preds = %.preheader.i4879
  %spec.select.i4882 = tail call i32 @llvm.smin.i32(i32 %.0.i.i4876, i32 %.0.i18.i4880) ; 3 uses
  %i.eru = sext i32 %i.erl to i64
  %i.erv = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.eru ; 3 uses
  %i.erw = load i32, ptr %i.erv, align 4, !tbaa !33 ; 2 uses
  %i.erx = icmp slt i32 %i.erw, %i.erl
  br i1 %i.erx, label %.lr.ph.i.i4888, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4883

.lr.ph.i.i4888:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4881, %.lr.ph.i.i4888
  %i.ery = phi i32 [ %i.esc, %.lr.ph.i.i4888 ], [ %i.erw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4881 ] ; 2 uses
  %i.erz = phi ptr [ %i.esb, %.lr.ph.i.i4888 ], [ %i.erv, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4881 ]
  store i32 %spec.select.i4882, ptr %i.erz, align 4, !tbaa !33
  %i.esa = sext i32 %i.ery to i64
  %i.esb = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.esa ; 3 uses
  %i.esc = load i32, ptr %i.esb, align 4, !tbaa !33 ; 2 uses
  %i.esd = icmp slt i32 %i.esc, %i.ery
  br i1 %i.esd, label %.lr.ph.i.i4888, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4883, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4883: ; preds = %.lr.ph.i.i4888, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4881
  %.lcssa.i.i4884 = phi ptr [ %i.erv, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4881 ], [ %i.esb, %.lr.ph.i.i4888 ]
  store i32 %spec.select.i4882, ptr %.lcssa.i.i4884, align 4, !tbaa !33
  br label %bb.abh

bb.abh:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4883, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4877
  %.1.i4885 = phi i32 [ %spec.select.i4882, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4883 ], [ %.0.i.i4876, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4877 ] ; 3 uses
  %i.ese = sext i32 %i.erj to i64
  %i.esf = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.ese ; 3 uses
  %i.esg = load i32, ptr %i.esf, align 4, !tbaa !33 ; 2 uses
  %i.esh = icmp slt i32 %i.esg, %i.erj
  br i1 %i.esh, label %.lr.ph.i21.i4887, label %.loopexit5040

.lr.ph.i21.i4887:                                 ; preds = %bb.abh, %.lr.ph.i21.i4887
  %i.esi = phi i32 [ %i.esm, %.lr.ph.i21.i4887 ], [ %i.esg, %bb.abh ] ; 2 uses
  %i.esj = phi ptr [ %i.esl, %.lr.ph.i21.i4887 ], [ %i.esf, %bb.abh ]
  store i32 %.1.i4885, ptr %i.esj, align 4, !tbaa !33
  %i.esk = sext i32 %i.esi to i64
  %i.esl = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.esk ; 3 uses
  %i.esm = load i32, ptr %i.esl, align 4, !tbaa !33 ; 2 uses
  %i.esn = icmp slt i32 %i.esm, %i.esi
  br i1 %i.esn, label %.lr.ph.i21.i4887, label %.loopexit5040, !llvm.loop !4

.loopexit5040:                                    ; preds = %.lr.ph.i21.i4887, %bb.abh
  %.lcssa.i20.i4886 = phi ptr [ %i.esf, %bb.abh ], [ %i.esl, %.lr.ph.i21.i4887 ]
  store i32 %.1.i4885, ptr %.lcssa.i20.i4886, align 4, !tbaa !33
  %i.eso = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.erb
  store i32 %.1.i4885, ptr %i.eso, align 4, !tbaa !33
  br label %.preheader5048

bb.abi:                                           ; preds = %.invoke6711
  %i.esp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.abj:                                           ; preds = %bb.abc
  %i.esq = getelementptr inbounds [4 x i8], ptr %i.eqb, i64 %i.eqv
  %i.esr = load i32, ptr %i.esq, align 4, !tbaa !33
  %i.ess = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.eqy
  store i32 %i.esr, ptr %i.ess, align 4, !tbaa !33
  br label %.preheader5048

bb.abk:                                           ; preds = %bb.abb
  br i1 %.not3455, label %bb.abl, label %bb.adk

bb.abl:                                           ; preds = %bb.abk
  %i.est = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.eqy
  store i32 %.99, ptr %i.est, align 4, !tbaa !33
  %i.esu = sext i32 %.99 to i64
  %i.esv = getelementptr inbounds [4 x i8], ptr %.sroa.05029.0, i64 %i.esu
  store i32 %.99, ptr %i.esv, align 4, !tbaa !33
  %.not.i4890 = icmp eq i32 %.99, 2147483647
  br i1 %.not.i4890, label %.invoke6711, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4892

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4892: ; preds = %bb.abl
  %i.esw = add nsw i32 %.99, 1
  br label %bb.acu

bb.abm:                                           ; preds = %bb.aba
  %i.esx = getelementptr inbounds i8, ptr %i.epv, i64 %i.eqi
  %i.esy = load i8, ptr %i.esx, align 1, !tbaa !32
  %.not3397 = icmp eq i8 %i.esy, 0
  br i1 %.not3397, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.esz = getelementptr inbounds [4 x i8], ptr %i.eqb, i64 %i.eqi
  %i.eta = load i32, ptr %i.esz, align 4, !tbaa !33
  %i.etb = getelementptr inbounds [4 x i8], ptr %i.eqa, i64 %i.eqi
  store i32 %i.eta, ptr %i.etb, align 4, !tbaa !33
  br label %.backedge5050

.backedge5050:                                    ; preds = %bb.abn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4895, %bb.acq, %bb.acs, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4901, %bb.add, %bb.aeb, %bb.ael, %bb.afj, %bb.afu, %bb.afv, %bb.agk
  %.98.be = phi i32 [ %.114.ph, %bb.agk ], [ %.107, %bb.aeb ], [ %.105, %bb.add ], [ %.102, %bb.acq ], [ %.102, %bb.acs ], [ %i.exk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4901 ], [ %.110.ph, %bb.ael ], [ %.112, %bb.afj ], [ %.113.ph, %bb.afu ], [ %.113.ph, %bb.afv ], [ %.985574, %bb.abn ], [ %i.etg, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4895 ] ; 2 uses
  %.03160.be = phi i32 [ %i.fmb, %bb.agk ], [ %i.ezv, %bb.aeb ], [ %i.exl, %bb.add ], [ %i.etr, %bb.acq ], [ %i.etr, %bb.acs ], [ %i.etr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4901 ], [ %i.fec, %bb.ael ], [ %.14, %bb.afj ], [ %i.fiy, %bb.afu ], [ %i.fiy, %bb.afv ], [ %i.eqh, %bb.abn ], [ %i.eqh, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4895 ] ; 2 uses
end_hunk_16
begin_hunk_17_@_ZNK2cv19connectedcomponents18LabelingWuParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !387

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.03751 = phi ptr [ %i.cl, %.lr.ph ], [ %i.du, %bb.g ] ; 3 uses
  %i.ct = load i32, ptr %.03751, align 4, !tbaa !33
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !33 ; 2 uses
  store i32 %i.cw, ptr %.03751, align 4, !tbaa !33
  %i.cx = load i32, ptr %i.ce, align 4, !tbaa !96
  %i.cy = icmp slt i32 %i.cx, 2
  %i.cz = load i64, ptr %i.cg, align 8
  %i.da = sext i32 %i.cw to i64                   ; 2 uses
  %i.db = mul i64 %i.cz, %i.da
  %.sink.idx.i.i45 = select i1 %i.cy, i64 0, i64 %i.db
  %.sink.i.i46 = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sink.idx.i.i45 ; 6 uses
  %i.dc = load i32, ptr %.sink.i.i46, align 4, !tbaa !33
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %..i47 = tail call i32 @llvm.smin.i32(i32 %i.dc, i32 %i.dd)
  store i32 %..i47, ptr %.sink.i.i46, align 4, !tbaa !33
  %i.de = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !33
  %i.dg = tail call i32 @llvm.smax.i32(i32 %i.df, i32 %i.dd)
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !33
  %i.dj = tail call i32 @llvm.smin.i32(i32 %i.di, i32 %i.cr)
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !33
  %i.dm = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 %i.cr)
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !33
  %i.dn = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 16 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !33
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !33
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.da ; 2 uses
  %i.dr = load <2 x i64>, ptr %i.dq, align 8, !tbaa !40
  %i.ds = insertelement <2 x i64> %i.cs, i64 %indvars.iv, i64 0
  %i.dt = add <2 x i64> %i.dr, %i.ds
  store <2 x i64> %i.dt, ptr %i.dq, align 8, !tbaa !40
  %i.du = getelementptr inbounds nuw i8, ptr %.03751, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp eq ptr %i.du, %i.co
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !388

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge61, %bb.e, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents9CCStatsOp11initElementEi(ptr noundef nonnull align 8 dereferenceable(460) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"struct.cv::connectedcomponents::Point2ui64", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %1, i32 noundef 5, i32 noundef 4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 5 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %1, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.h

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.i = mul i64 %i.g, %indvars.iv.epil
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i ; 2 uses
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 -2147483648, i32 -2147483648>, ptr %i.j, align 4, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.k, align 4, !tbaa !33
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !392

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.m = sext i32 %1 to i64                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !136  ; 3 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4                   ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.m
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.v = sub nuw nsw i64 %i.m, %i.t
  call void @_ZNSt6vectorIN2cv19connectedcomponents10Point2ui64ESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.o, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNSt6vectorIN2cv19connectedcomponents10Point2ui64ESaIS2_EE6resizeEmRKS2_.exit

bb.e:                                             ; preds = %._crit_edge
  %i.w = icmp ugt i64 %i.t, %i.m
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIN2cv19connectedcomponents10Point2ui64ESaIS2_EE6resizeEmRKS2_.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.x
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv19connectedcomponents10Point2ui64ESaIS2_EE6resizeEmRKS2_.exit, label %_ZSt8_DestroyIPN2cv19connectedcomponents10Point2ui64ES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv19connectedcomponents10Point2ui64ES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.x, ptr %i.n, align 8, !tbaa !136
  br label %_ZNSt6vectorIN2cv19connectedcomponents10Point2ui64ESaIS2_EE6resizeEmRKS2_.exit

_ZNSt6vectorIN2cv19connectedcomponents10Point2ui64ESaIS2_EE6resizeEmRKS2_.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPN2cv19connectedcomponents10Point2ui64ES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.g:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.h ]
  %i.z = mul i64 %i.g, %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 -2147483648, i32 -2147483648>, ptr %i.aa, align 4, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 0, ptr %i.ab, align 4, !tbaa !33
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ac = mul i64 %i.g, %indvars.iv.next
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ac ; 2 uses
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 -2147483648, i32 -2147483648>, ptr %i.ad, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 0, ptr %i.ae, align 4, !tbaa !33
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.af = mul i64 %i.g, %indvars.iv.next.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.af ; 2 uses
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 -2147483648, i32 -2147483648>, ptr %i.ag, align 4, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.ah, align 4, !tbaa !33
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.ai = mul i64 %i.g, %indvars.iv.next.2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ai ; 2 uses
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 -2147483648, i32 -2147483648>, ptr %i.aj, align 4, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 0, ptr %i.ak, align 4, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !393
}

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE11mergeLabelsERKNS_3MatERS4_PiS8_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.087159 = load i32, ptr %3, align 4, !tbaa !33 ; 2 uses
  %i.e = icmp slt i32 %.087159, %i.d
  br i1 %i.e, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %4 = sub i64 0, %i.i                            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = sub i64 0, %i.m
  %i.o = icmp sgt i32 %i.b, 0
  br i1 %i.o, label %.lr.ph.us.preheader, label %._crit_edge163

.lr.ph.us.preheader:                              ; preds = %.lr.ph162
  %i.p = add nsw i32 %i.b, -2
  %i.q = add nsw i32 %i.b, -1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = sext i32 %i.p to i64
  %i.t = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.087160.us = phi i32 [ %.087.us, %._crit_edge.us ], [ %.087159, %.lr.ph.us.preheader ]
  %i.u = sext i32 %.087160.us to i64              ; 3 uses
  %i.v = mul i64 %i.i, %i.u
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %5, i64 %4
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %4 ; 3 uses
  %i.y = mul i64 %i.m, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.n ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.ab ] ; 16 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33 ; 9 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %.not.us = icmp eq i64 %indvars.iv, 0
  br i1 %.not.us, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33 ; 5 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32
  %.not93.us = icmp eq i8 %i.aj, 0
  br i1 %.not93.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.aa, i64 %indvars.iv
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %.not94.us = icmp eq i8 %i.am, 0
  br i1 %.not94.us, label %bb.h, label %.preheader.us

.preheader.us:                                    ; preds = %bb.f, %.preheader.us
  %.0.i.i.us = phi i32 [ %i.ap, %.preheader.us ], [ %i.ag, %bb.f ] ; 4 uses
  %i.an = sext i32 %.0.i.i.us to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !33 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %.0.i.i.us
  br i1 %i.aq, label %.preheader.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %.preheader.us
  %.not.i.us = icmp eq i32 %i.ag, %i.ac
  br i1 %.not.i.us, label %bb.g, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.at, %.preheader.i.us ], [ %i.ac, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.ar = sext i32 %.0.i18.i.us to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33 ; 2 uses
  %i.au = icmp slt i32 %i.at, %.0.i18.i.us
  br i1 %i.au, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.av = zext nneg i32 %i.ac to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !33 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.ac
  br i1 %i.ay, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.az = phi i32 [ %i.bd, %.lr.ph.i.i.us ], [ %i.ax, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.ba = phi ptr [ %i.bc, %.lr.ph.i.i.us ], [ %i.aw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.ba, align 4, !tbaa !33
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !33 ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.az
  br i1 %i.be, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.aw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.bc, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 4 uses
  %i.bf = zext nneg i32 %i.ag to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bf ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.ag
  br i1 %i.bi, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us

.lr.ph.i21.i.us:                                  ; preds = %bb.g, %.lr.ph.i21.i.us
  %i.bj = phi i32 [ %i.bn, %.lr.ph.i21.i.us ], [ %i.bh, %bb.g ] ; 2 uses
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i21.i.us ], [ %i.bg, %bb.g ]
  store i32 %.1.i.us, ptr %i.bk, align 4, !tbaa !33
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bl ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !33 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bj
  br i1 %i.bo, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us: ; preds = %.lr.ph.i21.i.us, %bb.g
  %.lcssa.i20.i.us = phi ptr [ %i.bg, %bb.g ], [ %i.bm, %.lr.ph.i21.i.us ]
  store i32 %.1.i.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !33
  store i32 %.1.i.us, ptr %i.ab, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bp = phi i32 [ %.1.i.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us ], [ %i.ac, %bb.f ], [ %i.ac, %bb.e ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 13 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33 ; 9 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bt = icmp samesign ult i64 %indvars.iv, %i.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %.not97.us = icmp eq i8 %i.bv, 0                ; 3 uses
  br i1 %i.bt, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %.not96.us = icmp eq i8 %i.bx, 0
  br i1 %.not96.us, label %bb.w, label %.preheader195

.preheader195:                                    ; preds = %bb.k, %.preheader195
  %.0.i.i121.us = phi i32 [ %i.ca, %.preheader195 ], [ %i.br, %bb.k ] ; 4 uses
  %i.by = sext i32 %.0.i.i121.us to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %.0.i.i121.us
  br i1 %i.cb, label %.preheader195, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us: ; preds = %.preheader195
  %.not.i123.us = icmp eq i32 %i.br, %i.bp
  br i1 %.not.i123.us, label %bb.l, label %.preheader.i124.us

.preheader.i124.us:                               ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, %.preheader.i124.us
  %.0.i18.i125.us = phi i32 [ %i.ce, %.preheader.i124.us ], [ %i.bp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us ] ; 3 uses
  %i.cc = sext i32 %.0.i18.i125.us to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !33 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %.0.i18.i125.us
  br i1 %i.cf, label %.preheader.i124.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us: ; preds = %.preheader.i124.us
  %spec.select.i127.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i121.us, i32 %.0.i18.i125.us) ; 3 uses
  %i.cg = sext i32 %i.bp to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !33 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.bp
  br i1 %i.cj, label %.lr.ph.i.i133.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us

.lr.ph.i.i133.us:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us, %.lr.ph.i.i133.us
  %i.ck = phi i32 [ %i.co, %.lr.ph.i.i133.us ], [ %i.ci, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ] ; 2 uses
  %i.cl = phi ptr [ %i.cn, %.lr.ph.i.i133.us ], [ %i.ch, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ]
  store i32 %spec.select.i127.us, ptr %i.cl, align 4, !tbaa !33
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cm ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !33 ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.ck
  br i1 %i.cp, label %.lr.ph.i.i133.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us: ; preds = %.lr.ph.i.i133.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us
  %.lcssa.i.i129.us = phi ptr [ %i.ch, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ], [ %i.cn, %.lr.ph.i.i133.us ]
  store i32 %spec.select.i127.us, ptr %.lcssa.i.i129.us, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us
  %.1.i130.us = phi i32 [ %spec.select.i127.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us ], [ %.0.i.i121.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us ] ; 3 uses
  %i.cq = zext nneg i32 %i.br to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cq ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !33 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.br
  br i1 %i.ct, label %.lr.ph.i21.i132.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us

.lr.ph.i21.i132.us:                               ; preds = %bb.l, %.lr.ph.i21.i132.us
  %i.cu = phi i32 [ %i.cy, %.lr.ph.i21.i132.us ], [ %i.cs, %bb.l ] ; 2 uses
  %i.cv = phi ptr [ %i.cx, %.lr.ph.i21.i132.us ], [ %i.cr, %bb.l ]
  store i32 %.1.i130.us, ptr %i.cv, align 4, !tbaa !33
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cw ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !33 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cu
  br i1 %i.cz, label %.lr.ph.i21.i132.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us: ; preds = %.lr.ph.i21.i132.us, %bb.l
  %.lcssa.i20.i131.us = phi ptr [ %i.cr, %bb.l ], [ %i.cx, %.lr.ph.i21.i132.us ]
  store i32 %.1.i130.us, ptr %.lcssa.i20.i131.us, align 4, !tbaa !33
  br label %.sink.split

bb.m:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !32
  %.not98.us = icmp eq i8 %i.db, 0
  br i1 %.not98.us, label %bb.o, label %.preheader203

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !32
  %.not99.us = icmp eq i8 %i.de, 0                ; 2 uses
  br i1 %.not99.us, label %bb.q, label %bb.p

end_hunk_17
begin_hunk_18_@_ZN2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE11mergeLabelsERKNS_3MatERS4_PiS8_:bb.a
  %i.ei = phi ptr [ %i.ek, %.lr.ph.i21.i118.us ], [ %i.ee, %bb.v ]
  store i32 %.1.i116.us, ptr %i.ei, align 4, !tbaa !33
  %i.ej = sext i32 %i.eh to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ej ; 3 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !33 ; 2 uses
  %i.em = icmp slt i32 %i.el, %i.eh
  br i1 %i.em, label %.lr.ph.i21.i118.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit120.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit120.us: ; preds = %.lr.ph.i21.i118.us, %bb.v
  %.lcssa.i20.i117.us = phi ptr [ %i.ee, %bb.v ], [ %i.ek, %.lr.ph.i21.i118.us ]
  store i32 %.1.i116.us, ptr %.lcssa.i20.i117.us, align 4, !tbaa !33
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit120.us
  %.1.i116.us.sink = phi i32 [ %.1.i116.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit120.us ], [ %.1.i130.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us ] ; 2 uses
  store i32 %.1.i116.us.sink, ptr %i.ab, align 4, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.t, %bb.s, %bb.k, %bb.j, %bb.h
  %i.en = phi i32 [ %i.bp, %bb.j ], [ %i.bp, %bb.t ], [ %i.bp, %bb.s ], [ %i.bp, %bb.h ], [ %i.bp, %bb.k ], [ %.1.i116.us.sink, %.sink.split ] ; 4 uses
  %i.eo = icmp slt i64 %indvars.iv, %i.s
  br i1 %i.eo, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ep = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !33 ; 5 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !32
  %.not105.us = icmp eq i8 %i.ev, 0
  br i1 %.not105.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ep
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !32
  %.not106.us = icmp eq i8 %i.ex, 0
  br i1 %.not106.us, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.z, %.preheader
  %.0.i.i135.us = phi i32 [ %i.fa, %.preheader ], [ %i.er, %bb.z ] ; 4 uses
  %i.ey = sext i32 %.0.i.i135.us to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !33 ; 2 uses
  %i.fb = icmp slt i32 %i.fa, %.0.i.i135.us
  br i1 %i.fb, label %.preheader, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us: ; preds = %.preheader
  %.not.i137.us = icmp eq i32 %i.er, %i.en
  br i1 %.not.i137.us, label %bb.aa, label %.preheader.i138.us

.preheader.i138.us:                               ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us, %.preheader.i138.us
  %.0.i18.i139.us = phi i32 [ %i.fe, %.preheader.i138.us ], [ %i.en, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us ] ; 3 uses
  %i.fc = sext i32 %.0.i18.i139.us to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !33 ; 2 uses
  %i.ff = icmp slt i32 %i.fe, %.0.i18.i139.us
  br i1 %i.ff, label %.preheader.i138.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us: ; preds = %.preheader.i138.us
  %spec.select.i141.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i135.us, i32 %.0.i18.i139.us) ; 3 uses
  %i.fg = sext i32 %i.en to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fg ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !33 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, %i.en
  br i1 %i.fj, label %.lr.ph.i.i147.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us

.lr.ph.i.i147.us:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us, %.lr.ph.i.i147.us
  %i.fk = phi i32 [ %i.fo, %.lr.ph.i.i147.us ], [ %i.fi, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us ] ; 2 uses
  %i.fl = phi ptr [ %i.fn, %.lr.ph.i.i147.us ], [ %i.fh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us ]
  store i32 %spec.select.i141.us, ptr %i.fl, align 4, !tbaa !33
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fm ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !33 ; 2 uses
  %i.fp = icmp slt i32 %i.fo, %i.fk
  br i1 %i.fp, label %.lr.ph.i.i147.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us: ; preds = %.lr.ph.i.i147.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us
  %.lcssa.i.i143.us = phi ptr [ %i.fh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i140.us ], [ %i.fn, %.lr.ph.i.i147.us ]
  store i32 %spec.select.i141.us, ptr %.lcssa.i.i143.us, align 4, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us
  %.1.i144.us = phi i32 [ %spec.select.i141.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i142.us ], [ %.0.i.i135.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i136.us ] ; 3 uses
  %i.fq = zext nneg i32 %i.er to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fq ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !33 ; 2 uses
  %i.ft = icmp slt i32 %i.fs, %i.er
  br i1 %i.ft, label %.lr.ph.i21.i146.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit148.us

.lr.ph.i21.i146.us:                               ; preds = %bb.aa, %.lr.ph.i21.i146.us
  %i.fu = phi i32 [ %i.fy, %.lr.ph.i21.i146.us ], [ %i.fs, %bb.aa ] ; 2 uses
  %i.fv = phi ptr [ %i.fx, %.lr.ph.i21.i146.us ], [ %i.fr, %bb.aa ]
  store i32 %.1.i144.us, ptr %i.fv, align 4, !tbaa !33
  %i.fw = sext i32 %i.fu to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fw ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !33 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %i.fu
  br i1 %i.fz, label %.lr.ph.i21.i146.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit148.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit148.us: ; preds = %.lr.ph.i21.i146.us, %bb.aa
  %.lcssa.i20.i145.us = phi ptr [ %i.fr, %bb.aa ], [ %i.fx, %.lr.ph.i21.i146.us ]
  store i32 %.1.i144.us, ptr %.lcssa.i20.i145.us, align 4, !tbaa !33
  store i32 %.1.i144.us, ptr %i.ab, align 4, !tbaa !33
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit148.us, %bb.z, %bb.y, %bb.x, %bb.w, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ga = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.ga, label %bb.b, label %._crit_edge.us, !llvm.loop !394

._crit_edge.us:                                   ; preds = %bb.ab
  %i.gb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.u
  %.087.us = load i32, ptr %i.gb, align 4, !tbaa !33 ; 2 uses
  %i.gc = icmp slt i32 %.087.us, %i.d
  br i1 %i.gc, label %.lr.ph.us, label %._crit_edge163, !llvm.loop !395

._crit_edge163:                                   ; preds = %._crit_edge.us, %.lr.ph162, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE9FirstScanD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE9FirstScanclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !60     ; 2 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61
  %i.e = shl nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !398, !nonnull !93, !align !94 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.e) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.l = sext i32 %i.b to i64                     ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store i32 %.sroa.speculated, ptr %i.m, align 4, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399, !nonnull !93, !align !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52
  %i.r = add nsw i32 %i.q, 1
  %i.s = sdiv i32 %i.r, 2
  %i.t = mul nsw i32 %i.s, %i.a
  %i.u = add nsw i32 %i.t, 1                      ; 4 uses
  %i.v = load i32, ptr %i.h, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52   ; 2 uses
  %i.y = or disjoint i32 %i.b, 1                  ; 2 uses
  %i.z = icmp slt i32 %i.b, %.sroa.speculated
  br i1 %i.z, label %.lr.ph2745, label %._crit_edge2746

.lr.ph2745:                                       ; preds = %bb.a
  %i.aa = icmp sgt i32 %i.x, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 75 uses
  br i1 %i.aa, label %.lr.ph.us.preheader, label %._crit_edge2746

.lr.ph.us.preheader:                              ; preds = %.lr.ph2745
  %i.ac = zext nneg i32 %i.x to i64               ; 13 uses
  %i.ad = sext i32 %.sroa.speculated to i64
  %i.ae = sext i32 %i.y to i64
  %i.af = sext i32 %i.v to i64
  %invariant.op = add nsw i64 %i.af, -1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv2901 = phi i64 [ %i.l, %.lr.ph.us.preheader ], [ %indvars.iv.next2902, %._crit_edge.us ] ; 6 uses
  %.013712743.us = phi i32 [ %i.u, %.lr.ph.us.preheader ], [ %.2.us, %._crit_edge.us ]
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !398, !nonnull !93, !align !94 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !40 ; 3 uses
  %i.al = mul i64 %i.ak, %indvars.iv2901
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 21 uses
  %i.an = sub i64 0, %i.ak                        ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an ; 73 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.an ; 40 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 5 uses
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !399, !nonnull !93, !align !94 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.av = load i64, ptr %i.au, align 8, !tbaa !40 ; 2 uses
  %i.aw = mul i64 %i.av, %indvars.iv2901
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw ; 221 uses
  %2 = sub i64 0, %i.av                           ; 2 uses
  %3 = getelementptr inbounds i8, ptr %i.ax, i64 %2
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %2 ; 102 uses
  %i.az = icmp sgt i64 %indvars.iv2901, %i.l      ; 14 uses
  %i.ba = icmp sgt i64 %indvars.iv2901, %i.ae     ; 24 uses
  %i.bb = icmp slt i64 %indvars.iv2901, %invariant.op ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.qy
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.qy ] ; 266 uses
  %.12739.us = phi i32 [ %.013712743.us, %.lr.ph.us ], [ %.2.us, %bb.qy ] ; 161 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !32
  %.not.us = icmp eq i8 %i.bd, 0
  br i1 %.not.us, label %bb.js, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = add nsw i64 %indvars.iv, -1             ; 21 uses
  %.not1473.us = icmp eq i64 %indvars.iv, 0       ; 5 uses
  br i1 %.not1473.us, label %.critedge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32
  %.not1474.us = icmp eq i8 %i.bg, 0
  br i1 %.not1474.us, label %bb.ba, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = or disjoint i64 %indvars.iv, 1          ; 4 uses
  %i.bi = icmp samesign ult i64 %i.bh, %i.ac      ; 2 uses
  %or.cond.us = and i1 %i.az, %i.bi
  br i1 %or.cond.us, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32
  %.not1535.us = icmp eq i8 %i.bk, 0
  br i1 %.not1535.us, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !32
  %.not1544.us = icmp eq i8 %i.bm, 0
  br i1 %.not1544.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr [4 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !33
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !33
  br label %bb.qy

bb.i:                                             ; preds = %bb.g
  br i1 %i.ba, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !32
  %.not1545.us = icmp eq i8 %i.br, 0
  br i1 %.not1545.us, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.be
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !32
  %.not1546.us = icmp eq i8 %i.bt, 0
  br i1 %.not1546.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr [4 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !33
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !33
  br label %bb.qy

bb.m:                                             ; preds = %bb.k
  %i.bx = add nsw i64 %indvars.iv, -2             ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !32
  %.not1547.us = icmp eq i8 %i.bz, 0
  br i1 %.not1547.us, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.be
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %.not1548.us = icmp eq i8 %i.cb, 0
  br i1 %.not1548.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bx
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !33
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !33
  br label %bb.qy

bb.p:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %i.ab, align 8, !tbaa !119 ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !33 ; 4 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bx
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !33 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0.i.i.us = phi i32 [ %i.ch, %bb.p ], [ %i.cm, %bb.q ] ; 4 uses
  %i.ck = sext i32 %.0.i.i.us to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !33 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %.0.i.i.us
  br i1 %i.cn, label %bb.q, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %bb.q
  %.not.i.us = icmp eq i32 %i.ch, %i.cj
  br i1 %.not.i.us, label %bb.r, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.cq, %.preheader.i.us ], [ %i.cj, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.co = sext i32 %.0.i18.i.us to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !33 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %.0.i18.i.us
  br i1 %i.cr, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.cs = sext i32 %i.cj to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cs ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !33 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.cj
  br i1 %i.cv, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.cw = phi i32 [ %i.da, %.lr.ph.i.i.us ], [ %i.cu, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.cx = phi ptr [ %i.cz, %.lr.ph.i.i.us ], [ %i.ct, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.cx, align 4, !tbaa !33
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cy ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !33 ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.cw
  br i1 %i.db, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.ct, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.cz, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !33
  br label %bb.r

bb.r:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.dc = sext i32 %i.ch to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.dc ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !33 ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.ch
  br i1 %i.df, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us

.lr.ph.i21.i.us:                                  ; preds = %bb.r, %.lr.ph.i21.i.us
  %i.dg = phi i32 [ %i.dk, %.lr.ph.i21.i.us ], [ %i.de, %bb.r ] ; 2 uses
  %i.dh = phi ptr [ %i.dj, %.lr.ph.i21.i.us ], [ %i.dd, %bb.r ]
  store i32 %.1.i.us, ptr %i.dh, align 4, !tbaa !33
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.di ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !33 ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %i.dg
  br i1 %i.dl, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us: ; preds = %.lr.ph.i21.i.us, %bb.r
  %.lcssa.i20.i.us = phi ptr [ %i.dd, %bb.r ], [ %i.dj, %.lr.ph.i21.i.us ]
  store i32 %.1.i.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !33
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store i32 %.1.i.us, ptr %i.dm, align 4, !tbaa !33
  br label %bb.qy

bb.s:                                             ; preds = %bb.m
  %i.dn = load ptr, ptr %i.ab, align 8, !tbaa !119 ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !33 ; 4 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bx
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.0.i.i1572.us = phi i32 [ %i.dp, %bb.s ], [ %i.du, %bb.t ] ; 4 uses
  %i.ds = sext i32 %.0.i.i1572.us to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !33 ; 2 uses
  %i.dv = icmp slt i32 %i.du, %.0.i.i1572.us
  br i1 %i.dv, label %bb.t, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i1573.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i1573.us: ; preds = %bb.t
  %.not.i1574.us = icmp eq i32 %i.dp, %i.dr
  br i1 %.not.i1574.us, label %bb.u, label %.preheader.i1575.us

.preheader.i1575.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i1573.us, %.preheader.i1575.us
  %.0.i18.i1576.us = phi i32 [ %i.dy, %.preheader.i1575.us ], [ %i.dr, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i1573.us ] ; 3 uses
  %i.dw = sext i32 %.0.i18.i1576.us to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !33 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %.0.i18.i1576.us
  br i1 %i.dz, label %.preheader.i1575.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i1577.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i1577.us: ; preds = %.preheader.i1575.us
  %spec.select.i1578.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i1572.us, i32 %.0.i18.i1576.us) ; 3 uses
  %i.ea = sext i32 %i.dr to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ea ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !33 ; 2 uses
end_hunk_18
begin_hunk_19_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.cqi = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 4 ; 2 uses
  %i.cqj = load i32, ptr %i.cqi, align 4, !tbaa !33
  %i.cqk = tail call i32 @llvm.smin.i32(i32 %i.cqj, i32 %i.clr)
  store i32 %i.cqk, ptr %i.cqi, align 4, !tbaa !33
  %i.cql = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 12 ; 2 uses
  %i.cqm = load i32, ptr %i.cql, align 4, !tbaa !33
  %i.cqn = tail call i32 @llvm.smax.i32(i32 %i.cqm, i32 %i.clr)
  store i32 %i.cqn, ptr %i.cql, align 4, !tbaa !33
  %i.cqo = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 16 ; 2 uses
  %i.cqp = load i32, ptr %i.cqo, align 4, !tbaa !33
  %i.cqq = add nsw i32 %i.cqp, 1
  store i32 %i.cqq, ptr %i.cqo, align 4, !tbaa !33
  %i.cqr = getelementptr inbounds nuw [16 x i8], ptr %i.cnx, i64 %i.cqb ; 3 uses
  %i.cqs = load i64, ptr %i.cqr, align 8, !tbaa !116
  %i.cqt = add i64 %i.cqs, %indvars.iv1198
  store i64 %i.cqt, ptr %i.cqr, align 8, !tbaa !116
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  store i32 0, ptr %i.cpx, align 4, !tbaa !33
  %i.cqu = load i32, ptr %i.cny, align 4, !tbaa !33
  %i.cqv = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1089 = tail call i32 @llvm.smin.i32(i32 %i.cqu, i32 %i.cqv)
  store i32 %..i1089, ptr %i.cny, align 4, !tbaa !33
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cny, i64 8 ; 2 uses
  %i.cqx = load i32, ptr %i.cqw, align 4, !tbaa !33
  %i.cqy = tail call i32 @llvm.smax.i32(i32 %i.cqx, i32 %i.cqv)
  store i32 %i.cqy, ptr %i.cqw, align 4, !tbaa !33
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cny, i64 4 ; 2 uses
  %i.cra = load i32, ptr %i.cqz, align 4, !tbaa !33
  %i.crb = tail call i32 @llvm.smin.i32(i32 %i.cra, i32 %i.cls)
  store i32 %i.crb, ptr %i.cqz, align 4, !tbaa !33
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cny, i64 12 ; 2 uses
  %i.crd = load i32, ptr %i.crc, align 4, !tbaa !33
  %i.cre = tail call i32 @llvm.smax.i32(i32 %i.crd, i32 %i.cls)
  store i32 %i.cre, ptr %i.crc, align 4, !tbaa !33
  %i.crf = getelementptr inbounds nuw i8, ptr %i.cny, i64 16 ; 2 uses
  %i.crg = load i32, ptr %i.crf, align 4, !tbaa !33
  %i.crh = add nsw i32 %i.crg, 1
  store i32 %i.crh, ptr %i.crf, align 4, !tbaa !33
  %i.cri = load i64, ptr %i.cnx, align 8, !tbaa !116
  %i.crj = add i64 %i.cri, %indvars.iv1198
  store i64 %i.crj, ptr %i.cnx, align 8, !tbaa !116
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.sink1381 = phi ptr [ %i.cnx, %bb.fa ], [ %i.cqr, %bb.ez ]
  %i.crk = getelementptr inbounds nuw i8, ptr %.sink1381, i64 8 ; 2 uses
  %i.crl = load i64, ptr %i.crk, align 8, !tbaa !117
  %i.crm = add i64 %i.crl, %i.clk
  store i64 %i.crm, ptr %i.crk, align 8, !tbaa !117
  %i.crn = getelementptr inbounds nuw i8, ptr %i.cle, i64 %i.coc
  %i.cro = load i8, ptr %i.crn, align 1, !tbaa !32
  %.not769 = icmp eq i8 %i.cro, 0
  %i.crp = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %i.coc ; 2 uses
  br i1 %.not769, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i32 %i.cme, ptr %i.crp, align 4, !tbaa !33
  %i.crq = load i32, ptr %i.cak, align 4, !tbaa !96
  %i.crr = icmp slt i32 %i.crq, 2
  %i.crs = load i64, ptr %i.cam, align 8
  %i.crt = sext i32 %i.cme to i64                 ; 2 uses
  %i.cru = mul i64 %i.crs, %i.crt
  %.sink.idx.i.i1090 = select i1 %i.crr, i64 0, i64 %i.cru
  %.sink.i.i1091 = getelementptr inbounds nuw i8, ptr %i.cny, i64 %.sink.idx.i.i1090 ; 6 uses
  %i.crv = load i32, ptr %.sink.i.i1091, align 4, !tbaa !33
  %i.crw = trunc nuw nsw i64 %i.coc to i32        ; 2 uses
  %..i1092 = tail call i32 @llvm.smin.i32(i32 %i.crv, i32 %i.crw)
  store i32 %..i1092, ptr %.sink.i.i1091, align 4, !tbaa !33
  %i.crx = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 8 ; 2 uses
  %i.cry = load i32, ptr %i.crx, align 4, !tbaa !33
  %i.crz = tail call i32 @llvm.smax.i32(i32 %i.cry, i32 %i.crw)
  store i32 %i.crz, ptr %i.crx, align 4, !tbaa !33
  %i.csa = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 4 ; 2 uses
  %i.csb = load i32, ptr %i.csa, align 4, !tbaa !33
  %i.csc = tail call i32 @llvm.smin.i32(i32 %i.csb, i32 %i.clt)
  store i32 %i.csc, ptr %i.csa, align 4, !tbaa !33
  %i.csd = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 12 ; 2 uses
  %i.cse = load i32, ptr %i.csd, align 4, !tbaa !33
  %i.csf = tail call i32 @llvm.smax.i32(i32 %i.cse, i32 %i.clt)
  store i32 %i.csf, ptr %i.csd, align 4, !tbaa !33
  %i.csg = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 16 ; 2 uses
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !33
  %i.csi = add nsw i32 %i.csh, 1
  store i32 %i.csi, ptr %i.csg, align 4, !tbaa !33
  %i.csj = getelementptr inbounds nuw [16 x i8], ptr %i.cnx, i64 %i.crt ; 2 uses
  %i.csk = load <2 x i64>, ptr %i.csj, align 8, !tbaa !40
  %i.csl = insertelement <2 x i64> %i.clv, i64 %i.coc, i64 0
  %i.csm = add <2 x i64> %i.csk, %i.csl
  store <2 x i64> %i.csm, ptr %i.csj, align 8, !tbaa !40
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fb
  store i32 0, ptr %i.crp, align 4, !tbaa !33
  %i.csn = load i32, ptr %i.cny, align 4, !tbaa !33
  %i.cso = trunc nuw nsw i64 %i.coc to i32        ; 2 uses
  %..i1095 = tail call i32 @llvm.smin.i32(i32 %i.csn, i32 %i.cso)
  store i32 %..i1095, ptr %i.cny, align 4, !tbaa !33
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cny, i64 8 ; 2 uses
  %i.csq = load i32, ptr %i.csp, align 4, !tbaa !33
  %i.csr = tail call i32 @llvm.smax.i32(i32 %i.csq, i32 %i.cso)
  store i32 %i.csr, ptr %i.csp, align 4, !tbaa !33
  %i.css = getelementptr inbounds nuw i8, ptr %i.cny, i64 4 ; 2 uses
  %i.cst = load i32, ptr %i.css, align 4, !tbaa !33
  %i.csu = tail call i32 @llvm.smin.i32(i32 %i.cst, i32 %i.clu)
  store i32 %i.csu, ptr %i.css, align 4, !tbaa !33
  %i.csv = getelementptr inbounds nuw i8, ptr %i.cny, i64 12 ; 2 uses
  %i.csw = load i32, ptr %i.csv, align 4, !tbaa !33
  %i.csx = tail call i32 @llvm.smax.i32(i32 %i.csw, i32 %i.clu)
  store i32 %i.csx, ptr %i.csv, align 4, !tbaa !33
  %i.csy = getelementptr inbounds nuw i8, ptr %i.cny, i64 16 ; 2 uses
  %i.csz = load i32, ptr %i.csy, align 4, !tbaa !33
  %i.cta = add nsw i32 %i.csz, 1
  store i32 %i.cta, ptr %i.csy, align 4, !tbaa !33
  %i.ctb = load <2 x i64>, ptr %i.cnx, align 8, !tbaa !40
  %i.ctc = insertelement <2 x i64> %i.clv, i64 %i.coc, i64 0
  %i.ctd = add <2 x i64> %i.ctb, %i.ctc
  store <2 x i64> %i.ctd, ptr %i.cnx, align 8, !tbaa !40
  br label %bb.ff

bb.fe:                                            ; preds = %bb.er
  store i32 0, ptr %i.cly, align 4, !tbaa !33
  %i.cte = or disjoint i64 %indvars.iv1198, 1     ; 5 uses
  %i.ctf = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cte
  store i32 0, ptr %i.ctf, align 4, !tbaa !33
  %i.ctg = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %indvars.iv1198
  store i32 0, ptr %i.ctg, align 4, !tbaa !33
  %i.cth = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %i.cte
  store i32 0, ptr %i.cth, align 4, !tbaa !33
  %i.cti = load ptr, ptr %i.cal, align 8, !tbaa !55 ; 6 uses
  %i.ctj = load i32, ptr %i.cti, align 4, !tbaa !33
  %i.ctk = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 4 uses
  %..i1098 = tail call i32 @llvm.smin.i32(i32 %i.ctj, i32 %i.ctk)
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.cti, i64 8 ; 2 uses
  %i.ctm = load i32, ptr %i.ctl, align 4, !tbaa !33
  %i.ctn = tail call i32 @llvm.smax.i32(i32 %i.ctm, i32 %i.ctk)
  %i.cto = getelementptr inbounds nuw i8, ptr %i.cti, i64 4 ; 2 uses
  %i.ctp = load i32, ptr %i.cto, align 4, !tbaa !33
  %i.ctq = tail call i32 @llvm.smin.i32(i32 %i.ctp, i32 %i.cll)
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.cti, i64 12 ; 2 uses
  %i.cts = load i32, ptr %i.ctr, align 4, !tbaa !33
  %i.ctt = tail call i32 @llvm.smax.i32(i32 %i.cts, i32 %i.cll)
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.cti, i64 16 ; 2 uses
  %i.ctv = load i32, ptr %i.ctu, align 4, !tbaa !33
  %i.ctw = load ptr, ptr %i.can, align 8, !tbaa !50 ; 3 uses
  %i.ctx = load i64, ptr %i.ctw, align 8, !tbaa !116
  %i.cty = add i64 %i.ctx, %indvars.iv1198
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.ctw, i64 8 ; 2 uses
  %i.cua = load i64, ptr %i.ctz, align 8, !tbaa !117
  %i.cub = trunc nuw nsw i64 %i.cte to i32        ; 4 uses
  %..i1101 = tail call i32 @llvm.smin.i32(i32 %..i1098, i32 %i.cub)
  %i.cuc = tail call i32 @llvm.umax.i32(i32 %i.ctn, i32 %i.cub)
  %i.cud = add i64 %i.cty, %i.cte
  %..i1104 = tail call i32 @llvm.smin.i32(i32 %..i1101, i32 %i.ctk)
  %i.cue = tail call i32 @llvm.umax.i32(i32 %i.cuc, i32 %i.ctk)
  %i.cuf = tail call i32 @llvm.smin.i32(i32 %i.ctq, i32 %i.clm)
  %i.cug = tail call i32 @llvm.smax.i32(i32 %i.ctt, i32 %i.clm)
  %i.cuh = add i64 %i.cud, %indvars.iv1198
  %..i1107 = tail call i32 @llvm.smin.i32(i32 %..i1104, i32 %i.cub)
  store i32 %..i1107, ptr %i.cti, align 4, !tbaa !33
  %i.cui = tail call i32 @llvm.umax.i32(i32 %i.cue, i32 %i.cub)
  store i32 %i.cui, ptr %i.ctl, align 4, !tbaa !33
  store i32 %i.cuf, ptr %i.cto, align 4, !tbaa !33
  store i32 %i.cug, ptr %i.ctr, align 4, !tbaa !33
  %i.cuj = add nsw i32 %i.ctv, 4
  store i32 %i.cuj, ptr %i.ctu, align 4, !tbaa !33
  %i.cuk = add i64 %i.cuh, %i.cte
  store i64 %i.cuk, ptr %i.ctw, align 8, !tbaa !116
  %.reass1293 = add i64 %i.cua, %invariant.op1292
  store i64 %.reass1293, ptr %i.ctz, align 8, !tbaa !117
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fc, %bb.fd, %bb.fe
  %indvars.iv.next1199 = add nuw nsw i64 %indvars.iv1198, 2 ; 2 uses
  %i.cul = load i32, ptr %i.axq, align 4, !tbaa !52 ; 2 uses
  %i.cum = sext i32 %i.cul to i64
  %i.cun = icmp slt i64 %indvars.iv.next1199, %i.cum
  br i1 %i.cun, label %bb.er, label %._crit_edge1144, !llvm.loop !415

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge1131, %._crit_edge1137, %._crit_edge1144, %._crit_edge1151, %._crit_edge1158, %._crit_edge1164, %._crit_edge1171, %.lr.ph1173, %.preheader1121, %.preheader1119, %.preheader1117, %.preheader1115, %.preheader1113, %.preheader1111, %.preheader1109, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE11mergeLabelsERKNS_3MatERS4_PiS8_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.087159 = load i32, ptr %3, align 4, !tbaa !33 ; 2 uses
  %i.e = icmp slt i32 %.087159, %i.d
  br i1 %i.e, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %4 = sub i64 0, %i.i                            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = sub i64 0, %i.m
  %i.o = icmp sgt i32 %i.b, 0
  br i1 %i.o, label %.lr.ph.us.preheader, label %._crit_edge163

.lr.ph.us.preheader:                              ; preds = %.lr.ph162
  %i.p = add nsw i32 %i.b, -2
  %i.q = add nsw i32 %i.b, -1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = sext i32 %i.p to i64
  %i.t = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.087160.us = phi i32 [ %.087.us, %._crit_edge.us ], [ %.087159, %.lr.ph.us.preheader ]
  %i.u = sext i32 %.087160.us to i64              ; 3 uses
  %i.v = mul i64 %i.i, %i.u
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %5, i64 %4
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %4 ; 3 uses
  %i.y = mul i64 %i.m, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.n ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.ab ] ; 16 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33 ; 9 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %.not.us = icmp eq i64 %indvars.iv, 0
  br i1 %.not.us, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33 ; 5 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32
  %.not93.us = icmp eq i8 %i.aj, 0
  br i1 %.not93.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.aa, i64 %indvars.iv
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %.not94.us = icmp eq i8 %i.am, 0
  br i1 %.not94.us, label %bb.h, label %.preheader.us

.preheader.us:                                    ; preds = %bb.f, %.preheader.us
  %.0.i.i.us = phi i32 [ %i.ap, %.preheader.us ], [ %i.ag, %bb.f ] ; 4 uses
  %i.an = sext i32 %.0.i.i.us to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !33 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %.0.i.i.us
  br i1 %i.aq, label %.preheader.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %.preheader.us
  %.not.i.us = icmp eq i32 %i.ag, %i.ac
  br i1 %.not.i.us, label %bb.g, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.at, %.preheader.i.us ], [ %i.ac, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.ar = sext i32 %.0.i18.i.us to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33 ; 2 uses
  %i.au = icmp slt i32 %i.at, %.0.i18.i.us
  br i1 %i.au, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.av = zext nneg i32 %i.ac to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !33 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.ac
  br i1 %i.ay, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.az = phi i32 [ %i.bd, %.lr.ph.i.i.us ], [ %i.ax, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.ba = phi ptr [ %i.bc, %.lr.ph.i.i.us ], [ %i.aw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.ba, align 4, !tbaa !33
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !33 ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.az
  br i1 %i.be, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.aw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.bc, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 4 uses
  %i.bf = zext nneg i32 %i.ag to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bf ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.ag
  br i1 %i.bi, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us

.lr.ph.i21.i.us:                                  ; preds = %bb.g, %.lr.ph.i21.i.us
  %i.bj = phi i32 [ %i.bn, %.lr.ph.i21.i.us ], [ %i.bh, %bb.g ] ; 2 uses
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i21.i.us ], [ %i.bg, %bb.g ]
  store i32 %.1.i.us, ptr %i.bk, align 4, !tbaa !33
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bl ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !33 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bj
  br i1 %i.bo, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us: ; preds = %.lr.ph.i21.i.us, %bb.g
  %.lcssa.i20.i.us = phi ptr [ %i.bg, %bb.g ], [ %i.bm, %.lr.ph.i21.i.us ]
  store i32 %.1.i.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !33
  store i32 %.1.i.us, ptr %i.ab, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bp = phi i32 [ %.1.i.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us ], [ %i.ac, %bb.f ], [ %i.ac, %bb.e ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 13 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33 ; 9 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bt = icmp samesign ult i64 %indvars.iv, %i.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %.not97.us = icmp eq i8 %i.bv, 0                ; 3 uses
  br i1 %i.bt, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %.not96.us = icmp eq i8 %i.bx, 0
  br i1 %.not96.us, label %bb.w, label %.preheader195

.preheader195:                                    ; preds = %bb.k, %.preheader195
  %.0.i.i121.us = phi i32 [ %i.ca, %.preheader195 ], [ %i.br, %bb.k ] ; 4 uses
  %i.by = sext i32 %.0.i.i121.us to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %.0.i.i121.us
  br i1 %i.cb, label %.preheader195, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us: ; preds = %.preheader195
  %.not.i123.us = icmp eq i32 %i.br, %i.bp
  br i1 %.not.i123.us, label %bb.l, label %.preheader.i124.us

.preheader.i124.us:                               ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, %.preheader.i124.us
  %.0.i18.i125.us = phi i32 [ %i.ce, %.preheader.i124.us ], [ %i.bp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us ] ; 3 uses
  %i.cc = sext i32 %.0.i18.i125.us to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !33 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %.0.i18.i125.us
  br i1 %i.cf, label %.preheader.i124.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us: ; preds = %.preheader.i124.us
  %spec.select.i127.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i121.us, i32 %.0.i18.i125.us) ; 3 uses
  %i.cg = sext i32 %i.bp to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !33 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.bp
  br i1 %i.cj, label %.lr.ph.i.i133.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us

.lr.ph.i.i133.us:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us, %.lr.ph.i.i133.us
  %i.ck = phi i32 [ %i.co, %.lr.ph.i.i133.us ], [ %i.ci, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ] ; 2 uses
  %i.cl = phi ptr [ %i.cn, %.lr.ph.i.i133.us ], [ %i.ch, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ]
  store i32 %spec.select.i127.us, ptr %i.cl, align 4, !tbaa !33
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cm ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !33 ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.ck
  br i1 %i.cp, label %.lr.ph.i.i133.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us: ; preds = %.lr.ph.i.i133.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us
  %.lcssa.i.i129.us = phi ptr [ %i.ch, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i126.us ], [ %i.cn, %.lr.ph.i.i133.us ]
  store i32 %spec.select.i127.us, ptr %.lcssa.i.i129.us, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us
  %.1.i130.us = phi i32 [ %spec.select.i127.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i128.us ], [ %.0.i.i121.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us ] ; 3 uses
  %i.cq = zext nneg i32 %i.br to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cq ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !33 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.br
  br i1 %i.ct, label %.lr.ph.i21.i132.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us

.lr.ph.i21.i132.us:                               ; preds = %bb.l, %.lr.ph.i21.i132.us
  %i.cu = phi i32 [ %i.cy, %.lr.ph.i21.i132.us ], [ %i.cs, %bb.l ] ; 2 uses
  %i.cv = phi ptr [ %i.cx, %.lr.ph.i21.i132.us ], [ %i.cr, %bb.l ]
  store i32 %.1.i130.us, ptr %i.cv, align 4, !tbaa !33
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cw ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !33 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cu
  br i1 %i.cz, label %.lr.ph.i21.i132.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit134.us: ; preds = %.lr.ph.i21.i132.us, %bb.l
  %.lcssa.i20.i131.us = phi ptr [ %i.cr, %bb.l ], [ %i.cx, %.lr.ph.i21.i132.us ]
  store i32 %.1.i130.us, ptr %.lcssa.i20.i131.us, align 4, !tbaa !33
  br label %.sink.split

bb.m:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !32
  %.not98.us = icmp eq i8 %i.db, 0
  br i1 %.not98.us, label %bb.o, label %.preheader203

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !32
  %.not99.us = icmp eq i8 %i.de, 0                ; 2 uses
  br i1 %.not99.us, label %bb.q, label %bb.p

end_hunk_19
begin_hunk_20_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE9FirstScanclERKNS_5RangeE:bb.a
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3432: ; preds = %bb.ca
  %i.jv = add nsw i32 %.102813.ph4437.lcssa4770, 1
  br label %bb.cy

bb.cc:                                            ; preds = %bb.bx
  %i.jw = getelementptr inbounds i8, ptr %i.dt, i64 %i.gw
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !32
  %.not2951 = icmp eq i8 %i.jx, 0
  br i1 %.not2951, label %bb.cd, label %bb.by

bb.cd:                                            ; preds = %bb.cc
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.gw
  store i32 0, ptr %i.jy, align 4, !tbaa !33
  br label %bb.cy

bb.ce:                                            ; preds = %._crit_edge4822
  br i1 %.not2963, label %bb.ck, label %bb.cf

bb.cf:                                            ; preds = %bb.cw, %bb.ck, %bb.ce
  %.pre-phi5333.a = phi i64 [ %i.gw, %bb.cw ], [ %i.ee, %bb.ck ], [ %i.ee, %bb.ce ] ; 2 uses
  %.112814 = phi i32 [ %.102813.ph4437.lcssa4770, %bb.cw ], [ %.52808.lcssa, %bb.ck ], [ %.52808.lcssa, %bb.ce ] ; 6 uses
  %i.jz = getelementptr i8, ptr %i.ah, i64 %.pre-phi5333.a
  %i.ka = getelementptr i8, ptr %i.jz, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !32
  %.not2962 = icmp eq i8 %i.kb, 0
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.pre-phi5333.a
  store i32 %.112814, ptr %i.kc, align 4, !tbaa !33
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !125
  %i.kf = sext i32 %.112814 to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kf
  store i32 %.112814, ptr %i.kg, align 4, !tbaa !33
  %.not.i3435 = icmp eq i32 %.112814, 2147483647  ; 2 uses
  br i1 %.not2962, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not.i3435, label %bb.ch, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3434

bb.ch:                                            ; preds = %bb.cg
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3434: ; preds = %bb.cg
  %i.kh = add nsw i32 %.112814, 1
  br label %bb.cy

bb.ci:                                            ; preds = %bb.cf
  br i1 %.not.i3435, label %bb.cj, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3436

bb.cj:                                            ; preds = %bb.ci
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3436: ; preds = %bb.ci
  %i.ki = add nsw i32 %.112814, 1
  br label %bb.cy

bb.ck:                                            ; preds = %bb.ce
  %i.kj = getelementptr inbounds i8, ptr %i.dt, i64 %i.ee
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !32
  %.not2959 = icmp eq i8 %i.kk, 0
  br i1 %.not2959, label %bb.cl, label %bb.cf

bb.cl:                                            ; preds = %bb.cx, %bb.cu, %bb.ck
  %.122815 = phi i32 [ %.52808.lcssa, %bb.ck ], [ %.82811, %bb.cu ], [ %.102813.ph4437.lcssa4770, %bb.cx ] ; 11 uses
  %.72797 = phi i32 [ %.lcssa4781, %bb.ck ], [ %i.ft, %bb.cu ], [ %.lcssa4752, %bb.cx ] ; 3 uses
  %i.kl = add nsw i32 %.72797, 1
  %i.km = sext i32 %i.kl to i64                   ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %i.ah, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !32
  %.not2960 = icmp eq i8 %i.ko, 0
  br i1 %.not2960, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kp = sext i32 %.72797 to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.kp
  store i32 %.122815, ptr %i.kq, align 4, !tbaa !33
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !125
  %i.kt = sext i32 %.122815 to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.kt
  store i32 %.122815, ptr %i.ku, align 4, !tbaa !33
  %.not.i3437 = icmp eq i32 %.122815, 2147483647
  br i1 %.not.i3437, label %bb.cn, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3438

bb.cn:                                            ; preds = %bb.cm
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3438: ; preds = %bb.cm
  %i.kv = add nsw i32 %.122815, 1
  br label %bb.cy

bb.co:                                            ; preds = %bb.cl
  %i.kw = getelementptr inbounds i8, ptr %i.dt, i64 %i.km
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !32
  %.not2961 = icmp eq i8 %i.kx, 0
  %i.ky = sext i32 %.72797 to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ky ; 2 uses
  br i1 %.not2961, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i32 %.122815, ptr %i.kz, align 4, !tbaa !33
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !125
  %i.lc = sext i32 %.122815 to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.lc
  store i32 %.122815, ptr %i.ld, align 4, !tbaa !33
  %.not.i3439 = icmp eq i32 %.122815, 2147483647
  br i1 %.not.i3439, label %bb.cq, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3440

bb.cq:                                            ; preds = %bb.cp
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3440: ; preds = %bb.cp
  %i.le = add nsw i32 %.122815, 1
  br label %bb.cy

bb.cr:                                            ; preds = %bb.co
  store i32 0, ptr %i.kz, align 4, !tbaa !33
  br label %bb.cy

bb.cs:                                            ; preds = %bb.av
  br i1 %.not2956, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cw, %bb.cu, %bb.cs
  %.pre-phi5334 = phi i64 [ %i.gw, %bb.cw ], [ %i.fv, %bb.cu ], [ %i.fv, %bb.cs ]
  %.132816 = phi i32 [ %.102813.ph4437.lcssa4770, %bb.cw ], [ %.82811, %bb.cu ], [ %.82811, %bb.cs ]
  %i.lf = getelementptr [4 x i8], ptr %i.dz, i64 %.pre-phi5334 ; 2 uses
  %i.lg = getelementptr i8, ptr %i.lf, i64 -8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !33
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !33
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cs
  %i.li = getelementptr inbounds i8, ptr %i.dt, i64 %i.fv
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !32
  %.not2954 = icmp eq i8 %i.lj, 0
  br i1 %.not2954, label %bb.cl, label %bb.ct

bb.cv:                                            ; preds = %.outer._crit_edge
  br i1 %.not2950, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lk = getelementptr i8, ptr %i.dt, i64 %.52795.lcssa
  %i.ll = getelementptr i8, ptr %i.lk, i64 1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !32
  %.not2949 = icmp eq i8 %i.lm, 0
  br i1 %.not2949, label %bb.cf, label %bb.ct

bb.cx:                                            ; preds = %bb.cv
  %i.ln = getelementptr inbounds i8, ptr %i.dt, i64 %i.gw
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !32
  %.not2948 = icmp eq i8 %i.lo, 0
  br i1 %.not2948, label %bb.cl, label %bb.by

bb.cy:                                            ; preds = %bb.ct, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3436, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3434, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3438, %bb.cr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3440, %bb.cd, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3432, %bb.bz, %bb.bt, %bb.bw, %bb.bv, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3428, %bb.br, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3430
  %.142817 = phi i32 [ %i.iq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3428 ], [ %i.iy, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3430 ], [ %.52808.lcssa, %bb.br ], [ %i.kh, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3434 ], [ %i.ki, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3436 ], [ %i.kv, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3438 ], [ %i.le, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3440 ], [ %.122815, %bb.cr ], [ %.82811, %bb.bt ], [ %.82811, %bb.bv ], [ %.82811, %bb.bw ], [ %.132816, %bb.ct ], [ %.102813.ph4437.lcssa4770, %bb.cd ], [ %.102813.ph4437.lcssa4770, %bb.bz ], [ %i.jv, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3432 ] ; 2 uses
  %i.lp = icmp sgt i32 %i.y, 2
  br i1 %i.lp, label %.lr.ph4848, label %._crit_edge4849

.lr.ph4848:                                       ; preds = %bb.cy
  %i.lq = add nsw i32 %i.y, %i.b
  %.027894844 = add i32 %i.b, 2
  %i.lr = icmp slt i32 %i.w, 3
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 87 uses
  %.not3379.a = icmp eq i32 %i.w, 2
  %i.lt = sext i32 %i.ea to i64                   ; 3 uses
  %i.lu = sext i32 %.027894844 to i64
  %i.lv = sext i32 %i.lq to i64
  br label %bb.cz

._crit_edge4849:                                  ; preds = %bb.abl, %bb.cy
  %.152818.lcssa = phi i32 [ %.142817, %bb.cy ], [ %.97, %bb.abl ] ; 3 uses
  br i1 %i.aa, label %bb.abm, label %bb.akl

bb.cz:                                            ; preds = %.lr.ph4848, %bb.abl
  %indvars.iv5276 = phi i64 [ %i.lu, %.lr.ph4848 ], [ %indvars.iv.next5277, %bb.abl ] ; 3 uses
  %.1528184845 = phi i32 [ %.142817, %.lr.ph4848 ], [ %.97, %bb.abl ] ; 6 uses
  %i.lw = load ptr, ptr %i.f, align 8, !tbaa !423, !nonnull !93, !align !94 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !55
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 128
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !40 ; 3 uses
  %i.mb = mul i64 %i.ma, %indvars.iv5276
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mb ; 74 uses
  %i.md = sub i64 0, %i.ma                        ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 %i.md ; 100 uses
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 %i.md ; 39 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ma ; 51 uses
  %i.mh = load ptr, ptr %i.n, align 8, !tbaa !424, !nonnull !93, !align !94 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !55
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 128
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !40 ; 2 uses
  %i.mm = mul i64 %i.ml, %indvars.iv5276
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mm ; 263 uses
  %2 = sub i64 0, %i.ml                           ; 2 uses
  %3 = getelementptr inbounds i8, ptr %i.mn, i64 %2
  %i.mo = getelementptr inbounds i8, ptr %3, i64 %2 ; 139 uses
  %i.mp = load i8, ptr %i.mc, align 1, !tbaa !32
  %.not3380 = icmp eq i8 %i.mp, 0                 ; 3 uses
  br i1 %i.lr, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  br i1 %.not3379.a, label %bb.wd, label %bb.ti

bb.db:                                            ; preds = %bb.cz
  br i1 %.not3380, label %bb.dv, label %bb.dc

bb.dc:                                            ; preds = %bb.rr, %bb.or, %bb.oi, %bb.db
  %.162819 = phi i32 [ %.1528184845, %bb.db ], [ %.502853, %bb.oi ], [ %.512854, %bb.or ], [ %.592862, %bb.rr ] ; 8 uses
  %.02764 = phi i32 [ 0, %bb.db ], [ %i.ccu, %bb.oi ], [ %i.ceu, %bb.or ], [ %i.cvk, %bb.rr ] ; 7 uses
  %i.mq = add nsw i32 %.02764, 1
  %i.mr = sext i32 %i.mq to i64                   ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.me, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !32
  %.not3090 = icmp eq i8 %i.mt, 0
  br i1 %.not3090, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mu = sext i32 %.02764 to i64                 ; 2 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !33
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.mu
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !33
  br label %.preheader4428

bb.de:                                            ; preds = %bb.dc
  %i.my = getelementptr inbounds i8, ptr %i.mc, i64 %i.mr
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !32
  %.not3091 = icmp eq i8 %i.mz, 0
  br i1 %.not3091, label %bb.dr, label %bb.df

bb.df:                                            ; preds = %bb.dx, %bb.de
  %.172820 = phi i32 [ %.202823, %bb.dx ], [ %.162819, %bb.de ] ; 8 uses
  %.12765 = phi i32 [ %.42768, %bb.dx ], [ %.02764, %bb.de ] ; 6 uses
  %i.na = add nsw i32 %.12765, 2
  %i.nb = sext i32 %i.na to i64                   ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %i.me, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !32
  %.not3242.a = icmp eq i8 %i.nd, 0
  %i.ne = sext i32 %.12765 to i64                 ; 5 uses
  %i.nf = getelementptr inbounds i8, ptr %i.me, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !32
  %.not3243 = icmp eq i8 %i.ng, 0                 ; 2 uses
  br i1 %.not3242.a, label %bb.dn, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  br i1 %.not3243, label %bb.dm, label %bb.dh

bb.dh:                                            ; preds = %bb.qs, %bb.lb, %bb.et, %bb.dg
  %.182821 = phi i32 [ %.172820, %bb.dg ], [ %.232826, %bb.et ], [ %.372840.ph, %bb.lb ], [ %.582861.ph, %bb.qs ] ; 2 uses
  %.22766 = phi i32 [ %.12765, %bb.dg ], [ %.72771, %bb.et ], [ %i.bhu, %bb.lb ], [ %i.ctb, %bb.qs ] ; 3 uses
  %i.nh = sext i32 %.22766 to i64                 ; 5 uses
  %i.ni = getelementptr i8, ptr %i.mf, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.ni, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !32
  %.not3245 = icmp eq i8 %i.nk, 0
  br i1 %.not3245, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nl = getelementptr [4 x i8], ptr %i.mo, i64 %i.nh
  %i.nm = getelementptr i8, ptr %i.nl, i64 8
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !33
  %i.no = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.nh
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !33
  br label %.preheader4433

bb.dj:                                            ; preds = %bb.dh
  %i.np = load ptr, ptr %i.ls, align 8, !tbaa !125 ; 6 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.nh ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !33 ; 4 uses
  %i.ns = getelementptr i8, ptr %i.nq, i64 8
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !33 ; 4 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %bb.dj
  %.0.i.i = phi i32 [ %i.nr, %bb.dj ], [ %i.nw, %bb.dk ] ; 4 uses
  %i.nu = sext i32 %.0.i.i to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !33 ; 2 uses
  %i.nx = icmp slt i32 %i.nw, %.0.i.i
  br i1 %i.nx, label %bb.dk, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i: ; preds = %bb.dk
  %.not.i3441 = icmp eq i32 %i.nr, %i.nt
  br i1 %.not.i3441, label %bb.dl, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i, %.preheader.i
  %.0.i18.i = phi i32 [ %i.oa, %.preheader.i ], [ %i.nt, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.ny = sext i32 %.0.i18.i to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !33 ; 2 uses
  %i.ob = icmp slt i32 %i.oa, %.0.i18.i
  br i1 %i.ob, label %.preheader.i, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i: ; preds = %.preheader.i
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.0.i18.i) ; 3 uses
  %i.oc = sext i32 %i.nt to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.oc ; 3 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !33 ; 2 uses
  %i.of = icmp slt i32 %i.oe, %i.nt
  br i1 %i.of, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i, %.lr.ph.i.i
  %i.og = phi i32 [ %i.ok, %.lr.ph.i.i ], [ %i.oe, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ] ; 2 uses
  %i.oh = phi ptr [ %i.oj, %.lr.ph.i.i ], [ %i.od, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ]
  store i32 %spec.select.i, ptr %i.oh, align 4, !tbaa !33
  %i.oi = sext i32 %i.og to i64
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.oi ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !33 ; 2 uses
  %i.ol = icmp slt i32 %i.ok, %i.og
  br i1 %i.ol, label %.lr.ph.i.i, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i
  %.lcssa.i.i = phi ptr [ %i.od, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i ], [ %i.oj, %.lr.ph.i.i ]
  store i32 %spec.select.i, ptr %.lcssa.i.i, align 4, !tbaa !33
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i
  %.1.i = phi i32 [ %spec.select.i, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i ], [ %.0.i.i, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i ] ; 3 uses
  %i.om = sext i32 %i.nr to i64
  %i.on = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.om ; 3 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !33 ; 2 uses
  %i.op = icmp slt i32 %i.oo, %i.nr
  br i1 %i.op, label %.lr.ph.i21.i, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit

.lr.ph.i21.i:                                     ; preds = %bb.dl, %.lr.ph.i21.i
  %i.oq = phi i32 [ %i.ou, %.lr.ph.i21.i ], [ %i.oo, %bb.dl ] ; 2 uses
  %i.or = phi ptr [ %i.ot, %.lr.ph.i21.i ], [ %i.on, %bb.dl ]
  store i32 %.1.i, ptr %i.or, align 4, !tbaa !33
  %i.os = sext i32 %i.oq to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.os ; 3 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !33 ; 2 uses
  %i.ov = icmp slt i32 %i.ou, %i.oq
  br i1 %i.ov, label %.lr.ph.i21.i, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit: ; preds = %.lr.ph.i21.i, %bb.dl
  %.lcssa.i20.i = phi ptr [ %i.on, %bb.dl ], [ %i.ot, %.lr.ph.i21.i ]
  store i32 %.1.i, ptr %.lcssa.i20.i, align 4, !tbaa !33
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.nh
  store i32 %.1.i, ptr %i.ow, align 4, !tbaa !33
  br label %.preheader4433

bb.dm:                                            ; preds = %bb.dg
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.nb
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !33
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ne
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !33
  br label %.preheader4433

bb.dn:                                            ; preds = %bb.df
  br i1 %.not3243, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.ne
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !33
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ne
  store i32 %i.pb, ptr %i.pc, align 4, !tbaa !33
  br label %bb.ja

bb.dp:                                            ; preds = %bb.dn
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ne
  store i32 %.172820, ptr %i.pd, align 4, !tbaa !33
  %i.pe = load ptr, ptr %i.ls, align 8, !tbaa !125
  %i.pf = sext i32 %.172820 to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pe, i64 %i.pf
  store i32 %.172820, ptr %i.pg, align 4, !tbaa !33
  %.not.i3442 = icmp eq i32 %.172820, 2147483647
  br i1 %.not.i3442, label %bb.dq, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3443

bb.dq:                                            ; preds = %bb.dp
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit3443: ; preds = %bb.dp
  %i.ph = add nsw i32 %.172820, 1
  br label %bb.id

bb.dr:                                            ; preds = %bb.de
  %i.pi = sext i32 %.02764 to i64                 ; 4 uses
  %i.pj = getelementptr inbounds i8, ptr %i.me, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !32
  %.not3092 = icmp eq i8 %i.pk, 0
  br i1 %.not3092, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.pi
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !33
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.pi
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !33
  br label %bb.oo

bb.dt:                                            ; preds = %bb.dr
  %i.po = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.pi
  store i32 %.162819, ptr %i.po, align 4, !tbaa !33
  %i.pp = load ptr, ptr %i.ls, align 8, !tbaa !125
  %i.pq = sext i32 %.162819 to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.pp, i64 %i.pq
end_hunk_20
begin_hunk_21_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE9FirstScanclERKNS_5RangeE:bb.a
  store i32 %.1.i4353, ptr %i.eql, align 4, !tbaa !33
  %i.eqm = sext i32 %i.eqk to i64
  %i.eqn = getelementptr inbounds [4 x i8], ptr %i.epi, i64 %i.eqm ; 3 uses
  %i.eqo = load i32, ptr %i.eqn, align 4, !tbaa !33 ; 2 uses
  %i.eqp = icmp slt i32 %i.eqo, %i.eqk
  br i1 %i.eqp, label %.lr.ph.i21.i4355, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4357, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4357: ; preds = %.lr.ph.i21.i4355, %bb.aan
  %.lcssa.i20.i4354 = phi ptr [ %i.eqh, %bb.aan ], [ %i.eqn, %.lr.ph.i21.i4355 ]
  store i32 %.1.i4353, ptr %.lcssa.i20.i4354, align 4, !tbaa !33
  store i32 %.1.i4353, ptr %i.epl, align 4, !tbaa !33
  br label %bb.abl

bb.aao:                                           ; preds = %bb.aah
  %i.eqq = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.cew
  %i.eqr = load i8, ptr %i.eqq, align 1, !tbaa !32
  %.not3218 = icmp eq i8 %i.eqr, 0
  br i1 %.not3218, label %bb.wj, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.eqs = sext i32 %.35 to i64                   ; 2 uses
  %i.eqt = getelementptr i8, ptr %i.mc, i64 %i.eqs
  %i.equ = getelementptr i8, ptr %i.eqt, i64 3
  %i.eqv = load i8, ptr %i.equ, align 1, !tbaa !32
  %.not3219 = icmp eq i8 %i.eqv, 0
  br i1 %.not3219, label %bb.up, label %bb.aai

bb.aaq:                                           ; preds = %._crit_edge4841
  br i1 %.not3372.a, label %bb.aaw, label %bb.aar

bb.aar:                                           ; preds = %bb.aaq
  %i.eqw = add nsw i32 %.42.lcssa, 1
  %i.eqx = zext nneg i32 %i.eqw to i64            ; 2 uses
  %i.eqy = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.eqx
  %i.eqz = load i8, ptr %i.eqy, align 1, !tbaa !32
  %.not3364.a = icmp eq i8 %i.eqz, 0
  br i1 %.not3364.a, label %bb.aas, label %bb.zf

bb.aas:                                           ; preds = %bb.aar
  %i.era = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.eqx
  %i.erb = load i8, ptr %i.era, align 1, !tbaa !32
  %.not3365 = icmp eq i8 %i.erb, 0
  br i1 %.not3365, label %bb.aat, label %bb.zf

bb.aat:                                           ; preds = %bb.aas
  %i.erc = sext i32 %.42.lcssa to i64
  %i.erd = getelementptr i8, ptr %i.me, i64 %i.erc
  %i.ere = getelementptr i8, ptr %i.erd, i64 3
  %i.erf = load i8, ptr %i.ere, align 1, !tbaa !32
  %.not3366 = icmp eq i8 %i.erf, 0
  br i1 %.not3366, label %bb.vk, label %bb.aau

bb.aau:                                           ; preds = %bb.aat
  %i.erg = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.csj
  %i.erh = load i8, ptr %i.erg, align 1, !tbaa !32
  %.not3367 = icmp eq i8 %i.erh, 0
  br i1 %.not3367, label %bb.wt, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.eri = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.csj
  %i.erj = load i32, ptr %i.eri, align 4, !tbaa !33
  %i.erk = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.csj
  store i32 %i.erj, ptr %i.erk, align 4, !tbaa !33
  br label %bb.abl

bb.aaw:                                           ; preds = %bb.aaq
  %i.erl = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.csj
  %i.erm = load i8, ptr %i.erl, align 1, !tbaa !32
  %.not3358 = icmp eq i8 %i.erm, 0
  br i1 %.not3358, label %bb.wj, label %bb.aax

bb.aax:                                           ; preds = %bb.aaw
  %i.ern = add nsw i32 %.42.lcssa, 3
  %i.ero = zext nneg i32 %i.ern to i64            ; 2 uses
  %i.erp = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ero
  %i.erq = load i8, ptr %i.erp, align 1, !tbaa !32
  %.not3359 = icmp eq i8 %i.erq, 0
  br i1 %.not3359, label %bb.vo, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.err = add nsw i32 %.42.lcssa, 1
  %i.ers = zext nneg i32 %i.err to i64            ; 2 uses
  %i.ert = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ers
  %i.eru = load i8, ptr %i.ert, align 1, !tbaa !32
  %.not3360 = icmp eq i8 %i.eru, 0
  br i1 %.not3360, label %bb.aaz, label %bb.zf

bb.aaz:                                           ; preds = %bb.aay
  %i.erv = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.ers
  %i.erw = load i8, ptr %i.erv, align 1, !tbaa !32
  %.not3361 = icmp eq i8 %i.erw, 0
  br i1 %.not3361, label %bb.we, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %i.erx = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.ero
  %i.ery = load i8, ptr %i.erx, align 1, !tbaa !32
  %.not3362 = icmp eq i8 %i.ery, 0
  br i1 %.not3362, label %bb.abb, label %._crit_edge5346.a

._crit_edge5346.a:                                ; preds = %bb.aba
  %.pre5377 = sext i32 %.lcssa4676 to i64
  br label %bb.zg

bb.abb:                                           ; preds = %bb.aba
  %i.erz = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.csj
  %i.esa = load i8, ptr %i.erz, align 1, !tbaa !32
  %.not3363 = icmp eq i8 %i.esa, 0
  br i1 %.not3363, label %bb.abd, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  %i.esb = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.csj
  %i.esc = load i32, ptr %i.esb, align 4, !tbaa !33
  %i.esd = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.csj
  store i32 %i.esc, ptr %i.esd, align 4, !tbaa !33
  br label %bb.abl

bb.abd:                                           ; preds = %bb.abb
  %i.ese = sext i32 %.42.lcssa to i64
  %i.esf = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ese
  %i.esg = load i32, ptr %i.esf, align 4, !tbaa !33
  %i.esh = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.csj
  store i32 %i.esg, ptr %i.esh, align 4, !tbaa !33
  br label %bb.abl

bb.abe:                                           ; preds = %bb.rp
  br i1 %.not3325.a, label %bb.abj, label %._crit_edge5345

._crit_edge5345:                                  ; preds = %bb.abe
  %.pre5379 = sext i32 %.43 to i64
  br label %bb.abf

bb.abf:                                           ; preds = %._crit_edge5345, %bb.abk
  %.pre-phi5380 = phi i64 [ %.pre5379, %._crit_edge5345 ], [ %i.esw, %bb.abk ] ; 2 uses
  %i.esi = getelementptr i8, ptr %i.mg, i64 %.pre-phi5380
  %i.esj = getelementptr i8, ptr %i.esi, i64 1
  %i.esk = load i8, ptr %i.esj, align 1, !tbaa !32
  %.not3321.a = icmp eq i8 %i.esk, 0
  br i1 %.not3321.a, label %bb.we, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  %i.esl = getelementptr i8, ptr %i.me, i64 %.pre-phi5380 ; 2 uses
  %i.esm = getelementptr i8, ptr %i.esl, i64 3
  %i.esn = load i8, ptr %i.esm, align 1, !tbaa !32
  %.not3322 = icmp eq i8 %i.esn, 0
  br i1 %.not3322, label %bb.vx, label %bb.abh

bb.abh:                                           ; preds = %bb.abg
  %i.eso = load i8, ptr %i.esl, align 1, !tbaa !32
  %.not3323 = icmp eq i8 %i.eso, 0
  br i1 %.not3323, label %bb.abi, label %bb.aak

bb.abi:                                           ; preds = %bb.abh
  %i.esp = load ptr, ptr %i.ls, align 8, !tbaa !125
  %i.esq = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.cvm
  %i.esr = load i32, ptr %i.esq, align 4, !tbaa !33
  %i.ess = tail call fastcc noundef i32 @_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_(ptr noundef %i.esp, i32 noundef %i.esr, i32 noundef %i.cvj)
  %i.est = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.cvm
  store i32 %i.ess, ptr %i.est, align 4, !tbaa !33
  br label %bb.abl

bb.abj:                                           ; preds = %bb.abe
  %i.esu = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.cvm
  %i.esv = load i8, ptr %i.esu, align 1, !tbaa !32
  %.not3319 = icmp eq i8 %i.esv, 0
  br i1 %.not3319, label %bb.wj, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.esw = sext i32 %.43 to i64                   ; 2 uses
  %i.esx = getelementptr i8, ptr %i.mc, i64 %i.esw
  %i.esy = getelementptr i8, ptr %i.esx, i64 3
  %i.esz = load i8, ptr %i.esy, align 1, !tbaa !32
  %.not3320 = icmp eq i8 %i.esz, 0
  br i1 %.not3320, label %bb.up, label %bb.abf

bb.abl:                                           ; preds = %bb.aav, %bb.abc, %bb.abd, %bb.aaf, %bb.aac, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4343, %bb.zq, %bb.zh, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4329, %bb.zj, %bb.zn, %bb.yy, %bb.yx, %bb.zd, %bb.zb, %bb.yu, %bb.yr, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4315, %bb.yc, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4299, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4301, %bb.yi, %bb.yf, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4215, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4229, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4257, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4271, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4285, %bb.xw, %bb.wr, %bb.wu, %bb.wv, %bb.ww, %bb.wf, %bb.wn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4201, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4199, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4197, %bb.wc, %bb.vj, %bb.vm, %bb.vl, %bb.vh, %bb.vp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4183, %bb.vr, %bb.vu, %bb.ve, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4181, %bb.va, %bb.uq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4167, %bb.ut, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4165, %bb.ug, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4151, %bb.uj, %bb.ui, %bb.tu, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4137, %bb.ts, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4133, %bb.tk, %bb.tp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4135, %bb.abi, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4357, %bb.ul
  %.97 = phi i32 [ %.83, %bb.ww ], [ %.592862, %bb.wc ], [ %.512854, %bb.ve ], [ %.372840.ph, %bb.yy ], [ %.492852.ph, %bb.aaf ], [ %.81, %bb.wn ], [ %.69, %bb.ul ], [ %i.djc, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4137 ], [ %.332836, %bb.yu ], [ %.70, %bb.ut ], [ %.582861.ph, %bb.vu ], [ %.382841, %bb.zq ], [ %i.qx, %bb.xw ], [ %.662869, %bb.ug ], [ %.96, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4357 ], [ %.592862, %bb.abi ], [ %.312834, %bb.yf ], [ %.612864, %bb.tp ], [ %.602863, %bb.tk ], [ %i.did, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4133 ], [ %i.dil, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4135 ], [ %.632866, %bb.ts ], [ %.632866, %bb.tu ], [ %.672870, %bb.ui ], [ %.672870, %bb.uj ], [ %.652868, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4151 ], [ %.662869, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4165 ], [ %.71, %bb.uq ], [ %i.dnl, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4167 ], [ %.73, %bb.va ], [ %.73, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4181 ], [ %.582861.ph, %bb.vh ], [ %.582861.ph, %bb.vj ], [ %.582861.ph, %bb.vl ], [ %.582861.ph, %bb.vm ], [ %.582861.ph, %bb.vp ], [ %.582861.ph, %bb.vr ], [ %i.drk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4183 ], [ %.76, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4197 ], [ %.78, %bb.wf ], [ %i.dty, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4199 ], [ %i.dul, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4201 ], [ %.84, %bb.wu ], [ %.84, %bb.wv ], [ %.83, %bb.wr ], [ %.86, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4215 ], [ %.86, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4229 ], [ %.86, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4257 ], [ %.86, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4271 ], [ %.87, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4285 ], [ %.89, %bb.yi ], [ %i.egw, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4301 ], [ %.312834, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4299 ], [ %.312834, %bb.yc ], [ %.332836, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4315 ], [ %.332836, %bb.yr ], [ %.372840.ph, %bb.zb ], [ %.372840.ph, %bb.zd ], [ %.372840.ph, %bb.yx ], [ %.92, %bb.zh ], [ %.92, %bb.zj ], [ %.92, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4329 ], [ %.91, %bb.zn ], [ %.492852.ph, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4343 ], [ %.492852.ph, %bb.aac ], [ %.582861.ph, %bb.abd ], [ %.582861.ph, %bb.abc ], [ %.582861.ph, %bb.aav ] ; 2 uses
  %indvars.iv.next5277 = add nsw i64 %indvars.iv5276, 2 ; 2 uses
  %i.eta = icmp slt i64 %indvars.iv.next5277, %i.lv
  br i1 %i.eta, label %bb.cz, label %._crit_edge4849, !llvm.loop !422

bb.abm:                                           ; preds = %._crit_edge4849
  %i.etb = add nsw i32 %.sroa.speculated, -1
  %i.etc = load ptr, ptr %i.f, align 8, !tbaa !423, !nonnull !93, !align !94 ; 2 uses
  %i.etd = getelementptr inbounds nuw i8, ptr %i.etc, i64 24
  %i.ete = load ptr, ptr %i.etd, align 8, !tbaa !55
  %i.etf = getelementptr inbounds nuw i8, ptr %i.etc, i64 128
  %i.etg = load i64, ptr %i.etf, align 8, !tbaa !40 ; 2 uses
  %i.eth = sext i32 %i.etb to i64                 ; 2 uses
  %i.eti = mul i64 %i.etg, %i.eth
  %i.etj = getelementptr inbounds nuw i8, ptr %i.ete, i64 %i.eti ; 35 uses
  %i.etk = sub i64 0, %i.etg                      ; 2 uses
  %i.etl = getelementptr inbounds i8, ptr %i.etj, i64 %i.etk ; 53 uses
  %i.etm = getelementptr inbounds i8, ptr %i.etl, i64 %i.etk ; 20 uses
  %i.etn = load ptr, ptr %i.n, align 8, !tbaa !424, !nonnull !93, !align !94 ; 2 uses
  %i.eto = getelementptr inbounds nuw i8, ptr %i.etn, i64 24
  %i.etp = load ptr, ptr %i.eto, align 8, !tbaa !55
  %i.etq = getelementptr inbounds nuw i8, ptr %i.etn, i64 128
  %i.etr = load i64, ptr %i.etq, align 8, !tbaa !40 ; 2 uses
  %i.ets = mul i64 %i.etr, %i.eth
  %i.ett = getelementptr inbounds nuw i8, ptr %i.etp, i64 %i.ets ; 120 uses
  %4 = sub i64 0, %i.etr                          ; 2 uses
  %5 = getelementptr inbounds i8, ptr %i.ett, i64 %4
  %i.etu = getelementptr inbounds i8, ptr %5, i64 %4 ; 70 uses
  br i1 %.not4818, label %.lr.ph4885, label %._crit_edge4886

.lr.ph4885:                                       ; preds = %bb.abm
  %i.etv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 34 uses
  %i.etw = zext nneg i32 %i.ea to i64             ; 3 uses
  br label %bb.abn

._crit_edge4886:                                  ; preds = %.backedge4427.a, %bb.abm
  %.98.lcssa = phi i32 [ %.152818.lcssa, %bb.abm ], [ %.98.be, %.backedge4427.a ] ; 4 uses
  %.lcssa4521 = phi i32 [ 0, %bb.abm ], [ %i.ewy, %.backedge4427.a ] ; 2 uses
  %i.etx = icmp sgt i32 %.lcssa4521, %i.ea
  %i.ety = sext i32 %.lcssa4521 to i64            ; 5 uses
  %i.etz = getelementptr inbounds i8, ptr %i.etj, i64 %i.ety
  %i.eua = load i8, ptr %i.etz, align 1, !tbaa !32
  %.not3087 = icmp eq i8 %i.eua, 0                ; 2 uses
  br i1 %i.etx, label %bb.ahg, label %bb.aie

bb.abn:                                           ; preds = %.lr.ph4885, %.backedge4427.a
  %i.eub = phi i32 [ 0, %.lr.ph4885 ], [ %i.ewy, %.backedge4427.a ] ; 6 uses
  %.04883 = phi i32 [ -2, %.lr.ph4885 ], [ %.0.be, %.backedge4427.a ]
  %.984882 = phi i32 [ %.152818.lcssa, %.lr.ph4885 ], [ %.98.be, %.backedge4427.a ] ; 9 uses
  %i.euc = sext i32 %i.eub to i64                 ; 7 uses
  %i.eud = getelementptr inbounds i8, ptr %i.etj, i64 %i.euc
  %i.eue = load i8, ptr %i.eud, align 1, !tbaa !32
  %.not2966 = icmp eq i8 %i.eue, 0
  br i1 %.not2966, label %.loopexit4420, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  %i.euf = add nsw i32 %.04883, 3
  %i.eug = sext i32 %i.euf to i64                 ; 2 uses
  %i.euh = getelementptr inbounds i8, ptr %i.etl, i64 %i.eug
  %i.eui = load i8, ptr %i.euh, align 1, !tbaa !32
  %.not2967 = icmp eq i8 %i.eui, 0
  br i1 %.not2967, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.euj = getelementptr inbounds [4 x i8], ptr %i.etu, i64 %i.euc
  %i.euk = load i32, ptr %i.euj, align 4, !tbaa !33
  %i.eul = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.euc
  store i32 %i.euk, ptr %i.eul, align 4, !tbaa !33
  br label %.preheader4419

bb.abq:                                           ; preds = %bb.abo
  %i.eum = getelementptr inbounds i8, ptr %i.etj, i64 %i.eug
  %i.eun = load i8, ptr %i.eum, align 1, !tbaa !32
  %.not2968 = icmp eq i8 %i.eun, 0
  br i1 %.not2968, label %bb.acc, label %bb.abr

bb.abr:                                           ; preds = %bb.acg, %bb.abq
  %.99 = phi i32 [ %.101, %bb.acg ], [ %.984882, %bb.abq ] ; 8 uses
  %.1 = phi i32 [ %.3, %bb.acg ], [ %i.eub, %bb.abq ] ; 6 uses
  %i.euo = add nsw i32 %.1, 2
  %i.eup = sext i32 %i.euo to i64                 ; 2 uses
  %i.euq = getelementptr inbounds i8, ptr %i.etl, i64 %i.eup
  %i.eur = load i8, ptr %i.euq, align 1, !tbaa !32
  %.not3026 = icmp eq i8 %i.eur, 0
  %i.eus = sext i32 %.1 to i64                    ; 4 uses
  %i.eut = getelementptr inbounds i8, ptr %i.etl, i64 %i.eus
  %i.euu = load i8, ptr %i.eut, align 1, !tbaa !32
  %.not3027 = icmp eq i8 %i.euu, 0                ; 2 uses
  br i1 %.not3026, label %bb.abz, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  br i1 %.not3027, label %bb.aby, label %bb.abt

bb.abt:                                           ; preds = %bb.agl, %bb.afj, %bb.acv, %bb.abs
  %.100 = phi i32 [ %.99, %bb.abs ], [ %.102, %bb.acv ], [ %.110.ph, %bb.afj ], [ %.113.ph, %bb.agl ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.abs ], [ %i.exo, %bb.acv ], [ %i.fja, %bb.afj ], [ %i.fob, %bb.agl ] ; 3 uses
  %i.euv = sext i32 %.2 to i64                    ; 5 uses
  %i.euw = getelementptr i8, ptr %i.etm, i64 %i.euv
  %i.eux = getelementptr i8, ptr %i.euw, i64 1
  %i.euy = load i8, ptr %i.eux, align 1, !tbaa !32
  %.not3047 = icmp eq i8 %i.euy, 0
  br i1 %.not3047, label %bb.abv, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.euz = getelementptr [4 x i8], ptr %i.etu, i64 %i.euv
  %i.eva = getelementptr i8, ptr %i.euz, i64 8
  %i.evb = load i32, ptr %i.eva, align 4, !tbaa !33
  %i.evc = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.euv
  store i32 %i.evb, ptr %i.evc, align 4, !tbaa !33
  br label %.preheader4425

bb.abv:                                           ; preds = %bb.abt
  %i.evd = load ptr, ptr %i.etv, align 8, !tbaa !125 ; 6 uses
  %i.eve = getelementptr inbounds [4 x i8], ptr %i.etu, i64 %i.euv ; 2 uses
  %i.evf = load i32, ptr %i.eve, align 4, !tbaa !33 ; 4 uses
  %i.evg = getelementptr i8, ptr %i.eve, i64 8
  %i.evh = load i32, ptr %i.evg, align 4, !tbaa !33 ; 4 uses
  br label %bb.abw

bb.abw:                                           ; preds = %bb.abw, %bb.abv
  %.0.i.i4358 = phi i32 [ %i.evf, %bb.abv ], [ %i.evk, %bb.abw ] ; 4 uses
  %i.evi = sext i32 %.0.i.i4358 to i64
  %i.evj = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.evi
  %i.evk = load i32, ptr %i.evj, align 4, !tbaa !33 ; 2 uses
  %i.evl = icmp slt i32 %i.evk, %.0.i.i4358
  br i1 %i.evl, label %bb.abw, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359: ; preds = %bb.abw
  %.not.i4360 = icmp eq i32 %i.evf, %i.evh
  br i1 %.not.i4360, label %bb.abx, label %.preheader.i4361

.preheader.i4361:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359, %.preheader.i4361
  %.0.i18.i4362 = phi i32 [ %i.evo, %.preheader.i4361 ], [ %i.evh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359 ] ; 3 uses
  %i.evm = sext i32 %.0.i18.i4362 to i64
  %i.evn = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.evm
  %i.evo = load i32, ptr %i.evn, align 4, !tbaa !33 ; 2 uses
  %i.evp = icmp slt i32 %i.evo, %.0.i18.i4362
  br i1 %i.evp, label %.preheader.i4361, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363: ; preds = %.preheader.i4361
  %spec.select.i4364 = tail call i32 @llvm.smin.i32(i32 %.0.i.i4358, i32 %.0.i18.i4362) ; 3 uses
  %i.evq = sext i32 %i.evh to i64
  %i.evr = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.evq ; 3 uses
  %i.evs = load i32, ptr %i.evr, align 4, !tbaa !33 ; 2 uses
  %i.evt = icmp slt i32 %i.evs, %i.evh
  br i1 %i.evt, label %.lr.ph.i.i4370, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365

.lr.ph.i.i4370:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363, %.lr.ph.i.i4370
  %i.evu = phi i32 [ %i.evy, %.lr.ph.i.i4370 ], [ %i.evs, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363 ] ; 2 uses
  %i.evv = phi ptr [ %i.evx, %.lr.ph.i.i4370 ], [ %i.evr, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363 ]
  store i32 %spec.select.i4364, ptr %i.evv, align 4, !tbaa !33
  %i.evw = sext i32 %i.evu to i64
  %i.evx = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.evw ; 3 uses
  %i.evy = load i32, ptr %i.evx, align 4, !tbaa !33 ; 2 uses
  %i.evz = icmp slt i32 %i.evy, %i.evu
  br i1 %i.evz, label %.lr.ph.i.i4370, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365: ; preds = %.lr.ph.i.i4370, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363
  %.lcssa.i.i4366 = phi ptr [ %i.evr, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i4363 ], [ %i.evx, %.lr.ph.i.i4370 ]
  store i32 %spec.select.i4364, ptr %.lcssa.i.i4366, align 4, !tbaa !33
  br label %bb.abx

bb.abx:                                           ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359
  %.1.i4367 = phi i32 [ %spec.select.i4364, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i4365 ], [ %.0.i.i4358, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i4359 ] ; 3 uses
  %i.ewa = sext i32 %i.evf to i64
  %i.ewb = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.ewa ; 3 uses
  %i.ewc = load i32, ptr %i.ewb, align 4, !tbaa !33 ; 2 uses
  %i.ewd = icmp slt i32 %i.ewc, %i.evf
  br i1 %i.ewd, label %.lr.ph.i21.i4369, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4371

.lr.ph.i21.i4369:                                 ; preds = %bb.abx, %.lr.ph.i21.i4369
  %i.ewe = phi i32 [ %i.ewi, %.lr.ph.i21.i4369 ], [ %i.ewc, %bb.abx ] ; 2 uses
  %i.ewf = phi ptr [ %i.ewh, %.lr.ph.i21.i4369 ], [ %i.ewb, %bb.abx ]
  store i32 %.1.i4367, ptr %i.ewf, align 4, !tbaa !33
  %i.ewg = sext i32 %i.ewe to i64
  %i.ewh = getelementptr inbounds [4 x i8], ptr %i.evd, i64 %i.ewg ; 3 uses
  %i.ewi = load i32, ptr %i.ewh, align 4, !tbaa !33 ; 2 uses
  %i.ewj = icmp slt i32 %i.ewi, %i.ewe
  br i1 %i.ewj, label %.lr.ph.i21.i4369, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4371, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit4371: ; preds = %.lr.ph.i21.i4369, %bb.abx
  %.lcssa.i20.i4368 = phi ptr [ %i.ewb, %bb.abx ], [ %i.ewh, %.lr.ph.i21.i4369 ]
  store i32 %.1.i4367, ptr %.lcssa.i20.i4368, align 4, !tbaa !33
  %i.ewk = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.euv
  store i32 %.1.i4367, ptr %i.ewk, align 4, !tbaa !33
  br label %.preheader4425

bb.aby:                                           ; preds = %bb.abs
  %i.ewl = getelementptr inbounds [4 x i8], ptr %i.etu, i64 %i.eup
  %i.ewm = load i32, ptr %i.ewl, align 4, !tbaa !33
  %i.ewn = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.eus
  store i32 %i.ewm, ptr %i.ewn, align 4, !tbaa !33
  br label %.preheader4425

bb.abz:                                           ; preds = %bb.abr
  br i1 %.not3027, label %bb.aca, label %bb.aee

bb.aca:                                           ; preds = %bb.abz
  %i.ewo = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.eus
  store i32 %.99, ptr %i.ewo, align 4, !tbaa !33
  %i.ewp = load ptr, ptr %i.etv, align 8, !tbaa !125
  %i.ewq = sext i32 %.99 to i64
  %i.ewr = getelementptr inbounds [4 x i8], ptr %i.ewp, i64 %i.ewq
  store i32 %.99, ptr %i.ewr, align 4, !tbaa !33
  %.not.i4372 = icmp eq i32 %.99, 2147483647
  br i1 %.not.i4372, label %bb.acb, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4373

bb.acb:                                           ; preds = %bb.aca
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 2147483647, i32 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_E15__cv_check__269) #16
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementIiEEvT_.exit4373: ; preds = %bb.aca
  %i.ews = add nsw i32 %.99, 1
  br label %bb.adn

bb.acc:                                           ; preds = %bb.abq
  %i.ewt = getelementptr inbounds i8, ptr %i.etl, i64 %i.euc
  %i.ewu = load i8, ptr %i.ewt, align 1, !tbaa !32
  %.not2969 = icmp eq i8 %i.ewu, 0
  br i1 %.not2969, label %bb.ace, label %bb.acd

bb.acd:                                           ; preds = %bb.acc
  %i.ewv = getelementptr inbounds [4 x i8], ptr %i.etu, i64 %i.euc
  %i.eww = load i32, ptr %i.ewv, align 4, !tbaa !33
  %i.ewx = getelementptr inbounds [4 x i8], ptr %i.ett, i64 %i.euc
  store i32 %i.eww, ptr %i.ewx, align 4, !tbaa !33
  br label %.backedge4427.a

end_hunk_21
