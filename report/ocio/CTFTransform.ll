Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CTFTransform?download=true
inline.NumInlined: 3283
inline.NumDeleted: 894
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriter12writeContentEv:bb.a
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !53
  %.pre = load i64, ptr %i.q, align 8, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.ar = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.an, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !52
  store ptr %i.p, ptr %7, align 8, !tbaa !51
  store i64 0, ptr %i.q, align 8, !tbaa !52
  store i8 0, ptr %i.p, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106 ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !107
  %.not.i.i44 = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i.i44, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !60
  %i.ay = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ag
  br i1 %i.az, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45

bb.j:                                             ; preds = %bb.i
  %i.ba = load i32, ptr %i.ag, align 8
  store i32 %i.ba, ptr %i.ax, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45: ; preds = %bb.i
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !51
  %i.bb = load i64, ptr %i.ag, align 8, !tbaa !53
  store i64 %i.bb, ptr %i.ax, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 3, ptr %i.bc, align 8, !tbaa !52
  store ptr %i.ag, ptr %6, align 8, !tbaa !51
  store i64 0, ptr %i.ah, align 8, !tbaa !52
  store i8 0, ptr %i.ag, align 8, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !60
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ak
  br i1 %i.bg, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bh = load i64, ptr %i.as, align 8, !tbaa !52 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !51
  %i.bk = load i64, ptr %i.ak, align 8, !tbaa !53
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !53
  %.pre105 = load i64, ptr %i.as, align 8, !tbaa !52
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.bl = phi i64 [ %.pre105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.bh, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !52
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !51
  store i64 0, ptr %i.as, align 8, !tbaa !52
  store i8 0, ptr %i.ak, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store ptr %i.bn, ptr %i.at, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.l:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.au, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.t

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.l
  %.pre106 = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 2 uses
  %i.bo = icmp eq ptr %.pre106, %i.ak
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.bp = load i64, ptr %i.ak, align 8, !tbaa !53
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %.pre106, i64 noundef %i.bq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.br = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ag
  br i1 %i.bs, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bt = load i64, ptr %i.ag, align 8, !tbaa !53
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bv = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.p
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.bx = load i64, ptr %i.p, align 8, !tbaa !53
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !166, !nonnull !98, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cb, ptr %8, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cb, ptr noundef nonnull align 1 dereferenceable(5) @_ZN16OpenColorIO_v2_5L9TAG_ARRAYE, i64 5, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 5, ptr %i.cc, align 8, !tbaa !52
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 21
  store i8 0, ptr %i.cd, align 1, !tbaa !53
  invoke void @_ZN16OpenColorIO_v2_512XmlFormatter13writeStartTagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt4pairIS6_S6_ESaISB_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.cb
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.m
  %i.cg = load i64, ptr %i.cb, align 8, !tbaa !53
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !210
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 232
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !160
  %i.cl = icmp eq i32 %i.ck, 1
  %.in.v = select i1 %i.cl, i64 16, i64 20
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.cm = load i32, ptr %.in, align 4, !tbaa !293 ; 2 uses
  %i.cn = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.cm)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.co = fptrunc double %i.cn to float           ; 2 uses
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !210
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 224
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !162
  %i.cs = and i32 %i.cr, 2
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %bb.av, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef i64 %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.p unwind label %bb.w       ; 6 uses

bb.p:                                             ; preds = %bb.o
  %.not102 = icmp eq i64 %i.cw, 0
  br i1 %.not102, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = icmp ugt i64 %i.cw, 2305843009213693951
  br i1 %i.cx, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #28
          to label %.noexc87 unwind label %bb.w

.noexc87:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.q
  %i.cy = shl nuw nsw i64 %i.cw, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #30
          to label %.noexc88 unwind label %bb.w   ; 5 uses

.noexc88:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.cz, align 4, !tbaa !59
  %i.da = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.lr.ph, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc88
  %i.dc = getelementptr i8, ptr %i.cz, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.da, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dc, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !59
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc88
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !755
  br label %bb.y

._crit_edge.loopexit:                             ; preds = %_ZN9Imath_3_14halfC2Ef.exit
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cw
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %.sroa.090.1167 = phi ptr [ null, %bb.p ], [ %i.cz, %._crit_edge.loopexit ] ; 10 uses
  %.sroa.11.0164 = phi ptr [ null, %bb.p ], [ %10, %._crit_edge.loopexit ] ; 8 uses
  %i.df = load ptr, ptr %i.bz, align 8, !tbaa !166, !nonnull !98, !align !167
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef i64 %i.di(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.aj unwind label %bb.w      ; 2 uses

bb.s:                                             ; preds = %bb.c, %_ZNSolsEm.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.t:                                             ; preds = %bb.l
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #27
  %i.dm = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.p
  br i1 %i.dn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.t, %bb.e
  %.sink = phi ptr [ %i.ad, %bb.e ], [ %i.dm, %bb.t ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.dl, %bb.t ]
  %i.do = load i64, ptr %i.p, align 8, !tbaa !53
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dp) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.t, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.dl, %bb.t ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cb
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.u
  %i.dt = load i64, ptr %i.cb, align 8, !tbaa !53
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.w:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, %bb.r, %.noexc66, %bb.ak, %bb.aj, %._crit_edge, %bb.o
  %.sroa.17.0 = phi ptr [ %.sroa.11.0164, %.noexc66 ], [ %.sroa.11.0164, %bb.ak ], [ %.sroa.11.0164, %bb.aj ], [ %.sroa.11.0164, %._crit_edge ], [ null, %bb.r ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i ], [ null, %bb.o ]
  %.sroa.090.0 = phi ptr [ %.sroa.090.1167, %.noexc66 ], [ %.sroa.090.1167, %bb.ak ], [ %.sroa.090.1167, %bb.aj ], [ %.sroa.090.1167, %._crit_edge ], [ null, %bb.r ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i ], [ null, %bb.o ]
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.body68:                                          ; preds = %bb.at, %bb.w
  %.sroa.17.2 = phi ptr [ %.sroa.11.0164, %bb.at ], [ %.sroa.17.0, %bb.w ]
  %.sroa.090.2 = phi ptr [ %.sroa.090.1167, %bb.at ], [ %.sroa.090.0, %bb.w ] ; 3 uses
  %eh.lpad-body69 = phi { ptr, i32 } [ %.pn20.pn.i, %bb.at ], [ %i.dw, %bb.w ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.090.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.body68
  %i.dx = ptrtoint ptr %.sroa.17.2 to i64
  %i.dy = ptrtoint ptr %.sroa.090.2 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.2, i64 noundef %i.dz) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.y:                                             ; preds = %.lr.ph, %_ZN9Imath_3_14halfC2Ef.exit
  %.033103 = phi i64 [ 0, %.lr.ph ], [ %i.fv, %_ZN9Imath_3_14halfC2Ef.exit ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.033103
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !294
  %i.ec = fmul float %i.eb, %i.co                 ; 2 uses
  %i.ed = bitcast float %i.ec to i32
  %i.ee = call float @llvm.fabs.f32(float %i.ec)
  %i.ef = bitcast float %i.ee to i32              ; 10 uses
  %i.eg = lshr i32 %i.ed, 16                      ; 3 uses
  %i.eh = trunc nuw i32 %i.eg to i16
  %i.ei = and i16 %i.eh, -32768                   ; 3 uses
  %i.ej = icmp samesign ugt i32 %i.ef, 947912703
  br i1 %i.ej, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ek = icmp samesign ugt i32 %i.ef, 2139095039
  br i1 %i.ek, label %bb.aa, label %bb.ac, !prof !80

bb.aa:                                            ; preds = %bb.z
  %i.el = or disjoint i16 %i.ei, 31744            ; 2 uses
  %i.em = icmp eq i32 %i.ef, 2139095040
  br i1 %i.em, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = lshr i32 %i.ef, 13
  %i.eo = and i32 %i.en, 1023                     ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  %i.eq = zext i1 %i.ep to i16
  %i.er = trunc nuw nsw i32 %i.eo to i16
  %i.es = or i16 %i.er, %i.eq
  %i.et = or disjoint i16 %i.es, %i.el
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.ac:                                            ; preds = %bb.z
  %i.eu = icmp samesign ugt i32 %i.ef, 1199566847
  br i1 %i.eu, label %bb.ad, label %bb.ae, !prof !80

bb.ad:                                            ; preds = %bb.ac
  %i.ev = or disjoint i16 %i.ei, 31744
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ew = add nuw nsw i32 %i.ef, 134221823
  %i.ex = lshr i32 %i.ef, 13
  %i.ey = and i32 %i.ex, 1
  %i.ez = add nuw nsw i32 %i.ew, %i.ey
  %i.fa = lshr i32 %i.ez, 13
  %i.fb = and i32 %i.eg, 32768
  %i.fc = or i32 %i.fa, %i.fb
  %i.fd = trunc i32 %i.fc to i16
  br label %_ZN9Imath_3_14halfC2Ef.exit

bb.af:                                            ; preds = %bb.y
  %i.fe = icmp samesign ult i32 %i.ef, 855638017
  br i1 %i.fe, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ff = lshr i32 %i.ef, 23                      ; 2 uses
  %i.fg = sub nuw nsw i32 126, %i.ff
  %i.fh = and i32 %i.ef, 8388607
  %i.fi = or disjoint i32 %i.fh, 8388608          ; 2 uses
  %i.fj = add nsw i32 %i.ff, -94
  %i.fk = shl i32 %i.fi, %i.fj                    ; 2 uses
  %i.fl = lshr i32 %i.fi, %i.fg                   ; 2 uses
  %i.fm = and i32 %i.eg, 32768
  %i.fn = or i32 %i.fl, %i.fm
  %i.fo = trunc nuw i32 %i.fn to i16              ; 2 uses
  %i.fp = icmp ugt i32 %i.fk, -2147483648
  br i1 %i.fp, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fq = icmp ne i32 %i.fk, -2147483648
  %i.fr = and i32 %i.fl, 1
  %.not.i.i60 = icmp eq i32 %i.fr, 0
  %or.cond.i.i = select i1 %i.fq, i1 true, i1 %.not.i.i60
  br i1 %or.cond.i.i, label %_ZN9Imath_3_14halfC2Ef.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fs = add nuw i16 %i.fo, 1
  br label %_ZN9Imath_3_14halfC2Ef.exit

_ZN9Imath_3_14halfC2Ef.exit:                      ; preds = %bb.aa, %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.ah, %bb.ai
  %.033.i.i = phi i16 [ %i.ei, %bb.af ], [ %i.et, %bb.ab ], [ %i.ev, %bb.ad ], [ %i.fd, %bb.ae ], [ %i.el, %bb.aa ], [ %i.fs, %bb.ai ], [ %i.fo, %bb.ah ]
  %i.ft = zext i16 %.033.i.i to i32
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.033103
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !59
  %i.fv = add nuw i64 %.033103, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fv, %i.cw
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.y, !llvm.loop !746

bb.aj:                                            ; preds = %._crit_edge
  %i.fw = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = invoke noundef i64 %i.fy(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.ak unwind label %bb.w

bb.ak:                                            ; preds = %bb.aj
  %i.ga = icmp eq i64 %i.fz, 1
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_512XmlFormatter9getStreamEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df)
          to label %.noexc66 unwind label %bb.w   ; 2 uses

.noexc66:                                         ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %.noexc67 unwind label %bb.w

.noexc67:                                         ; preds = %.noexc66
  %i.gc = load ptr, ptr %1, align 8, !tbaa !79
  %i.gd = getelementptr i8, ptr %i.gc, i64 -24
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds i8, ptr %1, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 5, ptr %i.gg, align 8, !tbaa !275
  %i.gh = ptrtoint ptr %.sroa.090.1167 to i64     ; 2 uses
  %.not58.i = icmp eq ptr %.sroa.090.1167, %.sroa.11.0164
  br i1 %.not58.i, label %._crit_edge.i, label %._crit_edge.i.i.lr.ph.i

._crit_edge.i.i.lr.ph.i:                          ; preds = %.noexc67
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gt = and i64 %i.dj, 4294967295
  %i.gu = add i64 %i.dj, 4294967295
  %i.gv = and i64 %i.gu, 4294967295
  %i.gw = select i1 %i.ga, i64 3, i64 1
  br label %._crit_edge.i.i.i61

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, %.noexc67
  %i.gx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gx, ptr %1, align 8, !tbaa !79
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gz = getelementptr i8, ptr %i.gx, i64 -24
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds i8, ptr %1, i64 %i.ha
  store ptr %i.gy, ptr %i.hb, align 8, !tbaa !79
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hc, align 8, !tbaa !79
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !51 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !53
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

._crit_edge.i.i.i61:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, %._crit_edge.i.i.lr.ph.i
  %.sroa.039.059.i = phi ptr [ %.sroa.090.1167, %._crit_edge.i.i.lr.ph.i ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.gi, ptr %2, align 8, !tbaa !60
  store i64 0, ptr %i.gj, align 8, !tbaa !52
  store i8 0, ptr %i.gi, align 8, !tbaa !53
  %i.hj = load i64, ptr %i.gl, align 8, !tbaa !52
  %i.hk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gk, i64 noundef 0, i64 noundef %i.hj, ptr noundef nonnull %i.gi, i64 noundef 0)
          to label %.noexc23.i unwind label %bb.al ; 0 uses

.noexc23.i:                                       ; preds = %._crit_edge.i.i.i61
  %i.hl = load i32, ptr %i.gn, align 8, !tbaa !243
  %i.hm = and i32 %i.hl, 3
  %.not.i.i.i.i = icmp eq i32 %i.hm, 0
  %i.hn = load i64, ptr %i.gl, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.hn
  %i.ho = load ptr, ptr %i.gk, align 8, !tbaa !51
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.gm, ptr noundef %i.ho, i64 noundef 0, i64 noundef %.0.i.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i unwind label %bb.al

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i: ; preds = %.noexc23.i
  %i.hp = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.gi
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i
  %i.hr = load i64, ptr %i.gi, align 8, !tbaa !53
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ht = load i32, ptr %.sroa.039.059.i, align 4, !tbaa !59
  %i.hu = uitofp i32 %i.ht to float
  %i.hv = fpext float %i.hu to double
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.hv)
          to label %_ZNSolsEf.exit.i unwind label %bb.am ; 0 uses

bb.al:                                            ; preds = %.noexc23.i, %._crit_edge.i.i.i61
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %i.hy = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.gi
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.al
  %i.ia = load i64, ptr %i.gi, align 8, !tbaa !53
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.at

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZNSolsEf.exit.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  store ptr %i.go, ptr %3, align 8, !tbaa !60, !alias.scope !758
  store i64 0, ptr %i.gp, align 8, !tbaa !52, !alias.scope !758
  store i8 0, ptr %i.go, align 8, !tbaa !53, !alias.scope !758
  %i.id = load ptr, ptr %i.gq, align 8, !tbaa !102, !noalias !758 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.id, null
  %i.ie = load ptr, ptr %i.gr, align 8, !noalias !758 ; 2 uses
  %i.if = icmp ugt ptr %i.id, %i.ie
  %.08.i.i.i.i = select i1 %i.if, ptr %i.id, ptr %i.ie ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i64 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i64, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZNSolsEf.exit.i
  %i.ig = load ptr, ptr %i.gs, align 8, !tbaa !103, !noalias !758 ; 2 uses
  %i.ih = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ig, i64 noundef %i.ij)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = load ptr, ptr %3, align 8, !tbaa !51, !alias.scope !758 ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.go
  br i1 %i.in, label %.body.i, label %.body.i.sink.split

bb.ap:                                            ; preds = %_ZNSolsEf.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.gk)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.ao

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.ap, %bb.an
  %i.io = load i64, ptr %i.gp, align 8, !tbaa !52 ; 3 uses
  %i.ip = load ptr, ptr %1, align 8, !tbaa !79
  %i.iq = getelementptr i8, ptr %i.ip, i64 -24
  %i.ir = load i64, ptr %i.iq, align 8
  %i.is = getelementptr inbounds i8, ptr %1, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !275
  %i.iv = icmp ugt i64 %i.io, %i.iu
  br i1 %i.iv, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  store i64 %i.io, ptr %i.it, align 8, !tbaa !275
  br label %bb.as

bb.ar:                                            ; preds = %.invoke.i, %bb.as
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.go
  br i1 %i.iy, label %.body.i, label %.body.i.sink.split

bb.as:                                            ; preds = %bb.aq, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.iz = load ptr, ptr %3, align 8, !tbaa !51
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef %i.iz, i64 noundef %i.io)
          to label %.invoke.i unwind label %bb.ar ; 0 uses

.invoke.i:                                        ; preds = %bb.as
  %i.jb = ptrtoint ptr %.sroa.039.059.i to i64
  %i.jc = sub i64 %i.jb, %i.gh
  %i.jd = ashr exact i64 %i.jc, 2
  %i.je = srem i64 %i.jd, %i.gt
  %i.jf = icmp eq i64 %i.je, %i.gv
  %.str.60..str.39.i = select i1 %i.jf, ptr @.str.60, ptr @.str.39
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull %.str.60..str.39.i, i64 noundef 1)
end_hunk_0
