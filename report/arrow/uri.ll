Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/uri?download=true
inline.NumInlined: 924
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5arrow4util3Uri5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !125

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !124
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store i64 0, ptr %i.p, align 8, !tbaa !11
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !16
  store i8 0, ptr %i.q, align 1, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !126  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127
  %.not.i.i1.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i1.i, label %_ZN5arrow4util3Uri4Impl5ResetEv.exit, label %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i
  store ptr %i.s, ptr %i.t, align 8, !tbaa !127
  br label %_ZN5arrow4util3Uri4Impl5ResetEv.exit

_ZN5arrow4util3Uri4Impl5ResetEv.exit:             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i, %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i32 -1, ptr %i.v, align 8, !tbaa !21
  %i.w = load ptr, ptr %1, align 8, !tbaa !40
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util3Uri4Impl10KeepStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(250) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 4 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.aa = load ptr, ptr %1, align 8, !tbaa !40
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !16  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = call i32 @uriParseSingleUriExA(ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ae, ptr noundef nonnull %i.a)
  switch i32 %i.af, label %bb.e [
    i32 0, label %bb.h
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN5arrow4util3Uri4Impl5ResetEv.exit
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !128
  call void @_ZN5arrow8internal12JoinToStringIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA37_S2_RS2_RA13_S2_lRA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(20) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(37) @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull align 1 dereferenceable(13) @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(2) @.str.9), !noalias !128
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %8, align 8, !tbaa !16, !noalias !128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA37_S2_RS2_RA13_S2_lRA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !14, !noalias !128
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #24
  br label %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA37_S2_RS2_RA13_S2_lRA2_S2_EEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %8, align 8, !tbaa !16, !noalias !128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %bb.d
  %i.au = load i64, ptr %i.as, align 8, !tbaa !14, !noalias !128
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i29 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !128
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA37_S2_RS2_RA13_S2_lRA2_S2_EEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.af

bb.e:                                             ; preds = %_ZN5arrow4util3Uri4Impl5ResetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !133
  call void @_ZN5arrow8internal12JoinToStringIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(20) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.5), !noalias !133
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %7, align 8, !tbaa !16, !noalias !133 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26: ; preds = %bb.f
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !14, !noalias !133
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #24
  br label %_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %7, align 8, !tbaa !16, !noalias !133 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.g
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !14, !noalias !133
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !133
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !133
  br label %bb.af

bb.h:                                             ; preds = %_ZN5arrow4util3Uri4Impl5ResetEv.exit
  %i.bh = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %.val24 = load ptr, ptr %i.bh, align 8, !tbaa !42 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %.val25 = load ptr, ptr %i.bi, align 8          ; 2 uses
  %i.bj = icmp eq ptr %.val24, null
  %i.bk = icmp eq ptr %.val25, %.val24
  %i.bl = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %i.bl, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !138
  call void @_ZN5arrow8internal12JoinToStringIJRA24_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(24) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.5), !noalias !138
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %6, align 8, !tbaa !16, !noalias !138 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZN5arrow6Status7InvalidIJRA24_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31: ; preds = %bb.j
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !14, !noalias !138
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #24
  br label %_ZN5arrow6Status7InvalidIJRA24_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %6, align 8, !tbaa !16, !noalias !138 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i28: ; preds = %bb.k
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !14, !noalias !138
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i29: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !138
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA24_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !138
  br label %bb.af

bb.l:                                             ; preds = %bb.h
  %i.bx = ptrtoint ptr %.val25 to i64
  %i.by = ptrtoint ptr %.val24 to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp eq i64 %i.bz, 4
  br i1 %i.ca, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.l
  %i.cb = load i32, ptr %.val24, align 1
  %i.cc = icmp ne i32 %i.cb, 1701603686
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  %10 = zext i1 %i.ce to i8
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.l
  %11 = phi i8 [ 0, %bb.l ], [ %10, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 248
  store i8 %11, ptr %i.cf, align 8, !tbaa !46
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %.056 = load ptr, ptr %i.cg, align 8, !tbaa !143 ; 2 uses
  %.not1957 = icmp eq ptr %.056, null
  br i1 %.not1957, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %.058 = phi ptr [ %.0, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %.056, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ] ; 3 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 224 ; 2 uses
  %.0.val = load ptr, ptr %.058, align 8, !tbaa !42 ; 3 uses
  %i.cj = getelementptr i8, ptr %.058, i64 8
  %.0.val23 = load ptr, ptr %i.cj, align 8
  %i.ck = icmp eq ptr %.0.val, null               ; 2 uses
  %i.cl = ptrtoint ptr %.0.val23 to i64
  %i.cm = ptrtoint ptr %.0.val to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.sroa.3.0.i33 = select i1 %i.ck, ptr @.str.2, ptr %.0.val ; 2 uses
  %.sroa.0.0.i34 = select i1 %i.ck, i64 0, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 232 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !127 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 240 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !144
  %.not.i.i = icmp eq ptr %i.cp, %i.cr
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i64 %.sroa.0.0.i34, ptr %i.cp, align 8, !tbaa !54
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.3.0.i33, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !55
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !127
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %.lr.ph
  %i.ct = load ptr, ptr %i.ci, align 8, !tbaa !126 ; 5 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 4 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775792
  br i1 %i.cx, label %bb.o, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #22
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.cy = ashr exact i64 %i.cw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 576460752303423487)
  %i.dc = select i1 %i.da, i64 576460752303423487, i64 %i.db ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dd = shl nuw nsw i64 %i.dc, 4
  %i.de = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #23 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw ; 2 uses
  store i64 %.sroa.0.0.i34, ptr %i.df, align 8, !tbaa !54
  %.sroa.5.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %.sroa.3.0.i33, ptr %.sroa.5.0..sroa_idx50, align 8, !tbaa !55
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.cp
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i ], [ %i.de, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i ], [ %i.ct, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !145, !alias.scope !146
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.cp
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !150

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.de, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #24
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.de, ptr %i.ci, align 8, !tbaa !126
  store ptr %i.di, ptr %i.co, align 8, !tbaa !127
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dj, ptr %i.cq, align 8, !tbaa !144
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.m, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %.0 = load ptr, ptr %i.dk, align 8, !tbaa !143  ; 2 uses
  %.not19 = icmp eq ptr %.0, null
  br i1 %.not19, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !151

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.dl = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bh, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ] ; 8 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 249 ; 2 uses
  store i8 0, ptr %i.dm, align 1, !tbaa !52
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 144
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !152
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %.val.i = load ptr, ptr %i.dq, align 8, !tbaa !42
  %.not = icmp eq ptr %.val.i, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 224
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 232
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !127
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !126
  %.not20 = icmp eq ptr %i.dt, %i.du
  br i1 %.not20, label %bb.s, label %.sink.split

.sink.split:                                      ; preds = %bb.r, %._crit_edge
  store i8 1, ptr %i.dm, align 1, !tbaa !52
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.q, %bb.r
  %.not89 = phi i1 [ true, %bb.q ], [ true, %bb.r ], [ false, %.sink.split ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 248
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !46, !range !47, !noundef !48
  %i.dx = trunc nuw i8 %i.dw to i1
  %brmerge.not = and i1 %.not89, %i.dx
  br i1 %brmerge.not, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !153
  call void @_ZN5arrow8internal12JoinToStringIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.5), !noalias !153
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dy = load ptr, ptr %5, align 8, !tbaa !16, !noalias !153 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZN5arrow6Status7InvalidIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40: ; preds = %bb.u
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !14, !noalias !153
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #24
  br label %_ZN5arrow6Status7InvalidIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit

bb.v:                                             ; preds = %bb.t
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %5, align 8, !tbaa !16, !noalias !153 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i37: ; preds = %bb.v
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !14, !noalias !153
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i38: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !153
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_DpOT_.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !153
  br label %bb.af

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %.val = load ptr, ptr %i.ej, align 8, !tbaa !42 ; 3 uses
  %i.ek = getelementptr i8, ptr %i.dl, i64 88
  %.val22 = load ptr, ptr %i.ek, align 8
  %i.el = icmp eq ptr %.val, null                 ; 2 uses
  %i.em = ptrtoint ptr %.val22 to i64
  %i.en = ptrtoint ptr %.val to i64
  %i.eo = sub i64 %i.em, %i.en
  %.sroa.3.0.i42 = select i1 %i.el, ptr @.str.2, ptr %.val ; 2 uses
  %.sroa.0.0.i43 = select i1 %i.el, i64 0, i64 %i.eo ; 3 uses
  store i64 %.sroa.0.0.i43, ptr %9, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.3.0.i42, ptr %i.ep, align 8
  %.not21 = icmp eq i64 %.sroa.0.0.i43, 0
  br i1 %.not21, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.eq = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.y, label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !158

bb.y:                                             ; preds = %bb.x
  %i.es = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #25
end_hunk_0
