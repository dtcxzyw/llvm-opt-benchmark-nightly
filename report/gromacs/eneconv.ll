Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/eneconv?download=true
inline.NumInlined: 247
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z11gmx_eneconviPPc:bb.a
  store i64 4, ptr %i.ab, align 16, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #24
  store i8 0, ptr %i.r, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr @.str.19, ptr %7, align 16, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.ad, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 2, ptr %i.ae, align 4, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @_ZZ11gmx_eneconviPPcE5begin, ptr %i.af, align 16, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @.str.20, ptr %i.ag, align 8, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr @.str.21, ptr %i.ah, align 16, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.ai, align 8, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 2, ptr %i.aj, align 4, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr @_ZZ11gmx_eneconviPPcE3end, ptr %i.ak, align 16, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr @.str.22, ptr %i.al, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr @.str.23, ptr %i.am, align 16, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i8 0, ptr %i.an, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 2, ptr %i.ao, align 4, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr @_ZZ11gmx_eneconviPPcE7delta_t, ptr %i.ap, align 16, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr @.str.24, ptr %i.aq, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr @.str.25, ptr %i.ar, align 16, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i8 0, ptr %i.as, align 8, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 108
  store i32 2, ptr %i.at, align 4, !tbaa !89
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 112
  store ptr @_ZZ11gmx_eneconviPPcE7toffset, ptr %i.au, align 16, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 120
  store ptr @.str.26, ptr %i.av, align 8, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr @.str.27, ptr %i.aw, align 16, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i8 0, ptr %i.ax, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 140
  store i32 5, ptr %i.ay, align 4, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 144
  store ptr @_ZZ11gmx_eneconviPPcE8bSetTime, ptr %i.az, align 16, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 152
  store ptr @.str.28, ptr %i.ba, align 8, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 160
  store ptr @.str.29, ptr %i.bb, align 16, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 168
  store i8 0, ptr %i.bc, align 8, !tbaa !88
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 172
  store i32 5, ptr %i.bd, align 4, !tbaa !89
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 176
  store ptr @_ZZ11gmx_eneconviPPcE5bSort, ptr %i.be, align 16, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 184
  store ptr @.str.30, ptr %i.bf, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 192
  store ptr @.str.31, ptr %i.bg, align 16, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 200
  store i8 0, ptr %i.bh, align 8, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 204
  store i32 5, ptr %i.bi, align 4, !tbaa !89
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 208
  store ptr %i.r, ptr %i.bj, align 16, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 216
  store ptr @.str.32, ptr %i.bk, align 8, !tbaa !90
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 224
  store ptr @.str.33, ptr %i.bl, align 16, !tbaa !87
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 232
  store i8 0, ptr %i.bm, align 8, !tbaa !88
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 236
  store i32 2, ptr %i.bn, align 4, !tbaa !89
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 240
  store ptr @_ZZ11gmx_eneconviPPcE8scalefac, ptr %i.bo, align 16, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 248
  store ptr @.str.34, ptr %i.bp, align 8, !tbaa !90
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 256
  store ptr @.str.35, ptr %i.bq, align 16, !tbaa !87
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 264
  store i8 0, ptr %i.br, align 8, !tbaa !88
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 268
  store i32 5, ptr %i.bs, align 4, !tbaa !89
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 272
  store ptr @_ZZ11gmx_eneconviPPcE6bError, ptr %i.bt, align 16, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 280
  store ptr @.str.36, ptr %i.bu, align 8, !tbaa !90
  %i.bv = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.h, ptr noundef %1, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %6, i32 noundef 9, ptr noundef nonnull %7, i32 noundef 15, ptr noundef nonnull %i.i, i32 noundef 1, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.bv, label %bb.d, label %bb.eq

bb.c:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.d:                                             ; preds = %bb.b
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.by = call i64 @fwrite(ptr nonnull @.str.37, i64 92, i64 1, ptr %i.bx) ; 0 uses
  store i32 0, ptr %i.n, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bz = invoke { ptr, ptr } @_Z7opt2fnsB5cxx11PKciPK8t_filenm(ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ca = extractvalue { ptr, ptr } %i.bz, 0      ; 3 uses
  %i.cb = extractvalue { ptr, ptr } %i.bz, 1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp ugt i64 %i.ce, 9223372036854775776
  br i1 %i.cf, label %.noexc.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #25
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i.i
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #26
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %bb.l

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i.i
  %i.ch = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i.i ], [ %i.cg, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 16 uses
  store ptr %i.ch, ptr %8, align 8, !tbaa !21, !alias.scope !91
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !22, !alias.scope !91
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIN3gmx12ArrayRefIterIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS7_ET0_T_SC_SB_(ptr %i.ca, ptr %i.cb, ptr noundef %i.ch)
          to label %bb.h unwind label %bb.f, !noalias !91 ; 3 uses

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i7.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i7.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.ce) #27, !noalias !91
  br label %.body

bb.h:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !23, !alias.scope !91
  %i.cm = icmp eq ptr %i.ch, %i.ck
  br i1 %i.cm, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA62_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(62) @.str.38, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 533, ptr noundef nonnull @.str.39) #25
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn174 = phi { ptr, i32 } [ %i.cp, %bb.n ], [ %i.co, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body203

bb.p:                                             ; preds = %bb.h
  %i.cq = ptrtoint ptr %i.ck to i64
  %i.cr = ptrtoint ptr %i.ch to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 4 uses
  %i.ct = ashr exact i64 %i.cs, 5                 ; 27 uses
  %i.cu = add nsw i64 %i.ct, 1                    ; 3 uses
  %i.cv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef 536, i64 noundef %i.cu, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp359.loopexit.split-lp ; 31 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit:          ; preds = %bb.p
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.38, i32 noundef 537, i64 noundef %i.cu, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit185 unwind label %.loopexit.split-lp359.loopexit.split-lp ; 18 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit185:       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.38, i32 noundef 538, i64 noundef %i.cu, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp359.loopexit.split-lp ; 9 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.da = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.38, i32 noundef 167, i64 noundef 1, i64 noundef 80)
          to label %.lr.ph.i unwind label %.loopexit.split-lp359.loopexit.split-lp ; 9 uses

.lr.ph.i:                                         ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 36 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.de = load ptr, ptr %i.ch, align 8, !tbaa !26
  store ptr %i.de, ptr %i.g, align 8, !tbaa !27
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext 2)
          to label %.noexc189 unwind label %.loopexit.split-lp359.loopexit.split-lp

.noexc189:                                        ; preds = %.lr.ph.i
  %i.df = invoke noundef ptr @_Z8open_enxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @.str.47)
          to label %bb.q unwind label %.loopexit.split-lp.i ; 4 uses

bb.q:                                             ; preds = %.noexc189
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.peel.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.peel.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.peel.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull %i.dg) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.peel.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.peel.i: ; preds = %bb.r, %bb.q
  %i.dh = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.dc
  br i1 %i.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.peel.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.peel.i
  %i.dj = load i64, ptr %i.dc, align 8, !tbaa !18
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.peel.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.peel.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.peel.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store ptr null, ptr %i.f, align 8, !tbaa !77
  invoke void @_Z9do_enxnmsP9ener_filePiPP11gmx_enxnm_t(ptr noundef %i.df, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f)
          to label %.noexc190 unwind label %.loopexit.split-lp359.loopexit.split-lp

.noexc190:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.peel.i
  %i.dl = load i32, ptr %i.d, align 4, !tbaa !10  ; 5 uses
  %i.dm = invoke noundef zeroext i1 @_Z6do_enxP9ener_fileP10t_enxframe(ptr noundef %i.df, ptr noundef %i.da)
          to label %.noexc191 unwind label %.loopexit.split-lp359.loopexit.split-lp ; 0 uses

.noexc191:                                        ; preds = %.noexc190
  %i.dn = load double, ptr %i.da, align 8, !tbaa !96
  %i.do = invoke noundef zeroext i1 @_Z6do_enxP9ener_fileP10t_enxframe(ptr noundef %i.df, ptr noundef nonnull %i.da)
          to label %.noexc192 unwind label %.loopexit.split-lp359.loopexit.split-lp ; 0 uses

.noexc192:                                        ; preds = %.noexc191
  %i.dp = fptrunc double %i.dn to float           ; 2 uses
  %i.dq = load double, ptr %i.da, align 8, !tbaa !96
  %i.dr = fptrunc double %i.dq to float
  %i.ds = fsub float %i.dr, %i.dp
  store float %i.dp, ptr %i.cx, align 4, !tbaa !98
  invoke void @_Z9close_enxP9ener_file(ptr noundef %i.df)
          to label %.noexc193 unwind label %.loopexit.split-lp359.loopexit.split-lp

.noexc193:                                        ; preds = %.noexc192
  %.pre.i = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc.peel.i = call i32 @fputc(i32 10, ptr %.pre.i) ; 0 uses
  %i.dt = load i32, ptr %i.d, align 4, !tbaa !10
  %i.du = load ptr, ptr %i.f, align 8, !tbaa !77
  invoke void @_Z11free_enxnmsiP11gmx_enxnm_t(i32 noundef %i.dt, ptr noundef %i.du)
          to label %.noexc194 unwind label %.loopexit.split-lp359.loopexit.split-lp

.noexc194:                                        ; preds = %.noexc193
  %i.dv = icmp ugt i64 %i.cs, 32
  br i1 %i.dv, label %.peel.next.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc202, %.noexc194
  %.0330 = phi i32 [ %i.dl, %.noexc194 ], [ %i.ef, %.noexc202 ]
  %.0.lcssa.i = phi i32 [ %i.dl, %.noexc194 ], [ %.sroa.speculated.i, %.noexc202 ]
  invoke void @_Z13free_enxframeP10t_enxframe(ptr noundef nonnull %i.da)
          to label %.noexc195 unwind label %.loopexit.split-lp359.loopexit.split-lp

.noexc195:                                        ; preds = %._crit_edge.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.38, i32 noundef 225, ptr noundef nonnull %i.da)
          to label %bb.ac unwind label %.loopexit.split-lp359.loopexit.split-lp

.peel.next.i:                                     ; preds = %.noexc194, %.noexc202
  %.1331 = phi i32 [ %i.ef, %.noexc202 ], [ %i.dl, %.noexc194 ]
  %.03461.i = phi i64 [ %i.fc, %.noexc202 ], [ 1, %.noexc194 ] ; 3 uses
  %.03560.i = phi i32 [ %.1.i, %.noexc202 ], [ %i.dl, %.noexc194 ] ; 3 uses
  %.059.i = phi i32 [ %.sroa.speculated.i, %.noexc202 ], [ %i.dl, %.noexc194 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.dw = getelementptr [32 x i8], ptr %i.ch, i64 %.03461.i ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !26
  store ptr %i.dx, ptr %i.g, align 8, !tbaa !27
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext 2)
          to label %.noexc197 unwind label %.loopexit.split-lp359.loopexit

.noexc197:                                        ; preds = %.peel.next.i
  %i.dy = invoke noundef ptr @_Z8open_enxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @.str.47)
          to label %bb.s unwind label %.loopexit.i ; 3 uses

bb.s:                                             ; preds = %.noexc197
  %i.dz = load ptr, ptr %i.db, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i187 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i187, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull %i.dz) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ea = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dc
  br i1 %i.eb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.ec = load i64, ptr %i.dc, align 8, !tbaa !18
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

.loopexit.i:                                      ; preds = %.noexc197
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %.noexc189
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store ptr null, ptr %i.f, align 8, !tbaa !77
  invoke void @_Z9do_enxnmsP9ener_filePiPP11gmx_enxnm_t(ptr noundef %i.dy, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f)
          to label %.noexc198 unwind label %.loopexit.split-lp359.loopexit

.noexc198:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ee = load i32, ptr %i.dd, align 4, !tbaa !10 ; 3 uses
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.ee, i32 %.059.i) ; 3 uses
  %i.ef = call i32 @llvm.smax.i32(i32 %.1331, i32 %i.ee) ; 2 uses
  %i.eg = load i32, ptr %i.d, align 4, !tbaa !10
  %.not.i = icmp eq i32 %i.eg, %.03560.i
  br i1 %.not.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %.noexc198
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.ei = getelementptr i8, ptr %i.dw, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !26
  %i.ek = load ptr, ptr %i.dw, align 8, !tbaa !26
  %i.el = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.65, ptr noundef %i.ej, i32 noundef %.03560.i, ptr noundef %i.ek, i32 noundef %i.ee) #28 ; 0 uses
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.en = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.66, i32 noundef %.sroa.speculated.i) #28 ; 0 uses
  %i.eo = load ptr, ptr @stdin, align 8, !tbaa !20
  %i.ep = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 4095, ptr noundef %i.eo)
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.loopexit64.i, label %bb.y

.loopexit64.i:                                    ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA62_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(62) @.str.38, i8 noundef zeroext 2)
          to label %.noexc199 unwind label %.loopexit.split-lp359.loopexit.split-lp

.noexc199:                                        ; preds = %.loopexit64.i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 207, ptr noundef nonnull @.str.67) #25
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc199
  unreachable

bb.x:                                             ; preds = %.noexc199
  %i.er = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_Z11gmx_eneconviPPc:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ct, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  %wide.load = load <8 x float>, ptr %i.fk, align 4, !tbaa !98
  %wide.load835 = load <8 x float>, ptr %i.fl, align 4, !tbaa !98
  %wide.load836 = load <8 x float>, ptr %i.fm, align 4, !tbaa !98
  %wide.load837 = load <8 x float>, ptr %i.fn, align 4, !tbaa !98
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 96
  store <8 x float> %wide.load, ptr %i.fo, align 4, !tbaa !98
  store <8 x float> %wide.load835, ptr %i.fp, align 4, !tbaa !98
  store <8 x float> %wide.load836, ptr %i.fq, align 4, !tbaa !98
  store <8 x float> %wide.load837, ptr %i.fr, align 4, !tbaa !98
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %.loopexit.i205, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ft = and i64 %i.cs, 896
  %min.epilog.iters.check = icmp eq i64 %i.ft, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i210.preheader, label %vec.epilog.ph, !prof !103

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec838 = and i64 %i.ct, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index839 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next841, %vec.epilog.vector.body ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index839
  %wide.load840 = load <4 x float>, ptr %i.fu, align 4, !tbaa !98
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index839
  store <4 x float> %wide.load840, ptr %i.fv, align 4, !tbaa !98
  %index.next841 = add nuw i64 %index839, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next841, %n.vec838
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n842 = icmp eq i64 %i.ct, %n.vec838
  br i1 %cmp.n842, label %.loopexit.i205, label %.lr.ph.i210.preheader

.lr.ph.i210.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05078.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec838, %vec.epilog.middle.block ] ; 4 uses
  %i.fx = sub nsw i64 %i.ct, %.05078.i.ph
  %xtraiter = and i64 %i.fx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i210.prol.loopexit, label %.lr.ph.i210.prol

.lr.ph.i210.prol:                                 ; preds = %.lr.ph.i210.preheader, %.lr.ph.i210.prol
  %.05078.i.prol = phi i64 [ %i.gb, %.lr.ph.i210.prol ], [ %.05078.i.ph, %.lr.ph.i210.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i210.prol ], [ 0, %.lr.ph.i210.preheader ]
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.05078.i.prol
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !98
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.05078.i.prol
  store float %i.fz, ptr %i.ga, align 4, !tbaa !98
  %i.gb = add nuw nsw i64 %.05078.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i210.prol.loopexit, label %.lr.ph.i210.prol, !llvm.loop !42

.lr.ph.i210.prol.loopexit:                        ; preds = %.lr.ph.i210.prol, %.lr.ph.i210.preheader
  %.05078.i.unr = phi i64 [ %.05078.i.ph, %.lr.ph.i210.preheader ], [ %i.gb, %.lr.ph.i210.prol ]
  %i.gc = sub nsw i64 %.05078.i.ph, %i.ct
  %i.gd = icmp ugt i64 %i.gc, -8
  br i1 %i.gd, label %.loopexit.i205, label %.lr.ph.i210

bb.ad:                                            ; preds = %bb.ac
  %i.ge = icmp eq i64 %i.cs, 32
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !20 ; 2 uses
  br i1 %i.ge, label %.thread.i, label %bb.ae

.thread.i:                                        ; preds = %bb.ad
  %i.gg = call i64 @fwrite(ptr nonnull @.str.69, i64 29, i64 1, ptr %i.gf) #29 ; 0 uses
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.gi = call i64 @fwrite(ptr nonnull @.str.71, i64 115, i64 1, ptr %i.gh) #29 ; 0 uses
  br label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %bb.ae, %.thread.i
  br label %.lr.ph84.i

bb.ae:                                            ; preds = %bb.ad
  %i.gj = call i64 @fwrite(ptr nonnull @.str.70, i64 463, i64 1, ptr %i.gf) #29 ; 0 uses
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.gl = call i64 @fwrite(ptr nonnull @.str.71, i64 115, i64 1, ptr %i.gk) #29 ; 0 uses
  %i.gm = icmp sgt i64 %i.ct, 0
  br i1 %i.gm, label %.lr.ph84.i.preheader, label %._crit_edge85.i

._crit_edge85.i:                                  ; preds = %bb.an, %bb.ae
  %.051.lcssa.i = phi i1 [ %i.fh, %bb.ae ], [ %.2.ph.i, %bb.an ] ; 2 uses
  %i.gn = load i32, ptr %i.cz, align 4, !tbaa !10
  %.not.i211 = icmp eq i32 %i.gn, 0
  br i1 %.not.i211, label %.loopexit.i205, label %.split.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %bb.an
  %.05182.i = phi i1 [ %.2.ph.i, %bb.an ], [ %i.fh, %.lr.ph84.i.preheader ]
  %.05481.i = phi i64 [ %i.hr, %bb.an ], [ 0, %.lr.ph84.i.preheader ] ; 7 uses
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %.05481.i
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !26
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.05481.i
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !98
  %i.gt = fpext float %i.gs to double
  %i.gu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.go, ptr noundef nonnull @.str.72, ptr noundef %i.gq, double noundef %i.gt) #28 ; 0 uses
  %i.gv = load ptr, ptr @stdin, align 8, !tbaa !20
  %i.gw = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4095, ptr noundef %i.gv)
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %._crit_edge.i212, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.lr.ph84.i
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.05481.i ; 3 uses
  br label %bb.ah

._crit_edge.i212:                                 ; preds = %.lr.ph84.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA62_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(62) @.str.38, i8 noundef zeroext 2)
          to label %.noexc213 unwind label %.loopexit.split-lp359.loopexit.split-lp

.noexc213:                                        ; preds = %._crit_edge.i212
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 273, ptr noundef nonnull @.str.67) #25
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.noexc213
  unreachable

bb.ag:                                            ; preds = %.noexc213
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.body203

bb.ah:                                            ; preds = %bb.am, %.lr.ph79.i
  %i.ha = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #31
  %i.hb = getelementptr i8, ptr %i.b, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 -1
  store i8 0, ptr %i.hc, align 1, !tbaa !18
  %i.hd = load i8, ptr %i.b, align 16, !tbaa !18
  %i.he = and i8 %i.hd, -33
  switch i8 %i.he, label %bb.ak [
    i8 67, label %bb.ai
    i8 76, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.05481.i
  store i32 1, ptr %i.hf, align 4, !tbaa !10
  store float f0x7B4097CE, ptr %i.gy, align 4, !tbaa !98
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.05481.i
  store i32 2, ptr %i.hg, align 4, !tbaa !10
  store float f0x7B4097CE, ptr %i.gy, align 4, !tbaa !98
  br label %bb.an

bb.ak:                                            ; preds = %bb.ah
  %i.hh = call double @strtod(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #24
  %i.hi = fptrunc double %i.hh to float
  store float %i.hi, ptr %i.gy, align 4, !tbaa !98
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.hk = icmp eq ptr %i.hj, %i.b
  br i1 %i.hk, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.05481.i
  store i32 0, ptr %i.hl, align 4, !tbaa !10
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hm = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.hn = call i64 @fwrite(ptr nonnull @.str.73, i64 16, i64 1, ptr %i.hm) #29 ; 0 uses
  %i.ho = load ptr, ptr @stdin, align 8, !tbaa !20
  %i.hp = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 4095, ptr noundef %i.ho)
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %._crit_edge.i212, label %bb.ah

bb.an:                                            ; preds = %bb.al, %bb.aj, %bb.ai
  %.2.ph.i = phi i1 [ %.05182.i, %bb.al ], [ false, %bb.aj ], [ false, %bb.ai ] ; 2 uses
  %i.hr = add nuw nsw i64 %.05481.i, 1            ; 2 uses
  %exitcond91.not.i = icmp eq i64 %i.hr, %i.ct
  br i1 %exitcond91.not.i, label %._crit_edge85.i, label %.lr.ph84.i, !llvm.loop !43

.split.i:                                         ; preds = %._crit_edge85.i
  store i32 0, ptr %i.cz, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.cv, align 4, !tbaa !98
  %.old = icmp ugt i64 %i.ct, 1
  %or.cond345 = and i1 %.051.lcssa.i, %.old
  br i1 %or.cond345, label %bb.ao, label %.loopexit._crit_edge.i

.lr.ph.i210:                                      ; preds = %.lr.ph.i210.prol.loopexit, %.lr.ph.i210
  %.05078.i = phi i64 [ %i.ix, %.lr.ph.i210 ], [ %.05078.i.unr, %.lr.ph.i210.prol.loopexit ] ; 10 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.05078.i
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !98
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.05078.i
  store float %i.ht, ptr %i.hu, align 4, !tbaa !98
  %i.hv = add nuw nsw i64 %.05078.i, 1            ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !98
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.hv
  store float %i.hx, ptr %i.hy, align 4, !tbaa !98
  %i.hz = add nuw nsw i64 %.05078.i, 2            ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !98
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.hz
  store float %i.ib, ptr %i.ic, align 4, !tbaa !98
  %i.id = add nuw nsw i64 %.05078.i, 3            ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !98
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.id
  store float %i.if, ptr %i.ig, align 4, !tbaa !98
  %i.ih = add nuw nsw i64 %.05078.i, 4            ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !98
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ih
  store float %i.ij, ptr %i.ik, align 4, !tbaa !98
  %i.il = add nuw nsw i64 %.05078.i, 5            ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !98
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.il
  store float %i.in, ptr %i.io, align 4, !tbaa !98
  %i.ip = add nuw nsw i64 %.05078.i, 6            ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !98
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ip
  store float %i.ir, ptr %i.is, align 4, !tbaa !98
  %i.it = add nuw nsw i64 %.05078.i, 7            ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !98
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.it
  store float %i.iv, ptr %i.iw, align 4, !tbaa !98
  %i.ix = add nuw nsw i64 %.05078.i, 8            ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.ix, %i.ct
  br i1 %exitcond.not.i.7, label %.loopexit.i205, label %.lr.ph.i210, !llvm.loop !44

.loopexit.i205:                                   ; preds = %.lr.ph.i210.prol.loopexit, %.lr.ph.i210, %middle.block, %vec.epilog.middle.block, %._crit_edge85.i, %.preheader.i
  %.3.i = phi i1 [ %i.fh, %.preheader.i ], [ %.051.lcssa.i, %._crit_edge85.i ], [ %i.fh, %middle.block ], [ %i.fh, %vec.epilog.middle.block ], [ %i.fh, %.lr.ph.i210 ], [ %i.fh, %.lr.ph.i210.prol.loopexit ]
  %i.iy = icmp ugt i64 %i.ct, 1
  %or.cond344 = and i1 %.3.i, %i.iy
  br i1 %or.cond344, label %bb.ao, label %.loopexit._crit_edge.i

bb.ao:                                            ; preds = %.split.i, %.loopexit.i205
  %i.iz = icmp sgt i64 %i.ct, 0
  br i1 %i.iz, label %.lr.ph43.i.i, label %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i

_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i: ; preds = %bb.ao
  %i.ja = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.jb = call i64 @fwrite(ptr nonnull @.str.75, i64 124, i64 1, ptr %i.ja) #29 ; 0 uses
  br label %.loopexit357

.lr.ph43.i.i:                                     ; preds = %bb.ao
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.je = add nsw i64 %i.ct, -2
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.thread.i.i, %.lr.ph43.i.i
  %.041.i.i = phi i64 [ 0, %.lr.ph43.i.i ], [ %i.jg, %._crit_edge.thread.i.i ] ; 8 uses
  %i.jf = sub i64 %i.je, %.041.i.i
  %i.jg = add nuw nsw i64 %.041.i.i, 1            ; 5 uses
  %i.jh = icmp slt i64 %i.jg, %i.ct
  br i1 %i.jh, label %.lr.ph.preheader.i.i, label %._crit_edge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ap
  %i.ji = xor i64 %.041.i.i, -1
  %i.jj = add nsw i64 %i.ct, %i.ji
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.041.i.i ; 2 uses
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !98 ; 3 uses
  %xtraiter1042 = and i64 %i.jj, 7                ; 2 uses
  %lcmp.mod1043.not = icmp eq i64 %xtraiter1042, 0
  br i1 %lcmp.mod1043.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.jk = phi float [ %i.jp, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02740.i.i.prol = phi i64 [ %i.jo, %.lr.ph.i.i.prol ], [ %i.jg, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02839.i.i.prol = phi i64 [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %.041.i.i, %.lr.ph.preheader.i.i ]
  %prol.iter1044 = phi i64 [ %prol.iter1044.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.02740.i.i.prol
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !98 ; 2 uses
  %i.jn = fcmp olt float %i.jm, %i.jk             ; 2 uses
  %spec.select.i.i.prol = select i1 %i.jn, i64 %.02740.i.i.prol, i64 %.02839.i.i.prol ; 3 uses
  %i.jo = add nuw nsw i64 %.02740.i.i.prol, 1     ; 2 uses
  %i.jp = select i1 %i.jn, float %i.jm, float %i.jk ; 2 uses
  %prol.iter1044.next = add i64 %prol.iter1044, 1 ; 2 uses
  %prol.iter1044.cmp.not = icmp eq i64 %prol.iter1044.next, %xtraiter1042
  br i1 %prol.iter1044.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !45

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi float [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.jp, %.lr.ph.i.i.prol ]
  %.02740.i.i.unr = phi i64 [ %i.jg, %.lr.ph.preheader.i.i ], [ %i.jo, %.lr.ph.i.i.prol ]
  %.02839.i.i.unr = phi i64 [ %.041.i.i, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.jq = icmp ult i64 %i.jf, 7
  br i1 %i.jq, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %spec.select.i.i.lcssa = phi i64 [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i = icmp eq i64 %spec.select.i.i.lcssa, %.041.i.i
  br i1 %.not.i.i, label %._crit_edge.thread.i.i, label %bb.aq

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.jr = phi float [ %i.lf, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02740.i.i = phi i64 [ %i.le, %.lr.ph.i.i ], [ %.02740.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %.02839.i.i = phi i64 [ %spec.select.i.i.7, %.lr.ph.i.i ], [ %.02839.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.02740.i.i
  %i.jt = load float, ptr %i.js, align 4, !tbaa !98 ; 2 uses
  %i.ju = fcmp olt float %i.jt, %i.jr             ; 2 uses
  %spec.select.i.i = select i1 %i.ju, i64 %.02740.i.i, i64 %.02839.i.i
  %i.jv = add nuw nsw i64 %.02740.i.i, 1          ; 2 uses
  %i.jw = select i1 %i.ju, float %i.jt, float %i.jr ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.jv
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !98 ; 2 uses
  %i.jz = fcmp olt float %i.jy, %i.jw             ; 2 uses
  %spec.select.i.i.1 = select i1 %i.jz, i64 %i.jv, i64 %spec.select.i.i
  %i.ka = add nuw nsw i64 %.02740.i.i, 2          ; 2 uses
  %i.kb = select i1 %i.jz, float %i.jy, float %i.jw ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ka
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !98 ; 2 uses
  %i.ke = fcmp olt float %i.kd, %i.kb             ; 2 uses
  %spec.select.i.i.2 = select i1 %i.ke, i64 %i.ka, i64 %spec.select.i.i.1
  %i.kf = add nuw nsw i64 %.02740.i.i, 3          ; 2 uses
  %i.kg = select i1 %i.ke, float %i.kd, float %i.kb ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.kf
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !98 ; 2 uses
  %i.kj = fcmp olt float %i.ki, %i.kg             ; 2 uses
  %spec.select.i.i.3 = select i1 %i.kj, i64 %i.kf, i64 %spec.select.i.i.2
  %i.kk = add nuw nsw i64 %.02740.i.i, 4          ; 2 uses
  %i.kl = select i1 %i.kj, float %i.ki, float %i.kg ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.kk
  %i.kn = load float, ptr %i.km, align 4, !tbaa !98 ; 2 uses
  %i.ko = fcmp olt float %i.kn, %i.kl             ; 2 uses
  %spec.select.i.i.4 = select i1 %i.ko, i64 %i.kk, i64 %spec.select.i.i.3
  %i.kp = add nuw nsw i64 %.02740.i.i, 5          ; 2 uses
  %i.kq = select i1 %i.ko, float %i.kn, float %i.kl ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.kp
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !98 ; 2 uses
  %i.kt = fcmp olt float %i.ks, %i.kq             ; 2 uses
  %spec.select.i.i.5 = select i1 %i.kt, i64 %i.kp, i64 %spec.select.i.i.4
  %i.ku = add nuw nsw i64 %.02740.i.i, 6          ; 2 uses
  %i.kv = select i1 %i.kt, float %i.ks, float %i.kq ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ku
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !98 ; 2 uses
  %i.ky = fcmp olt float %i.kx, %i.kv             ; 2 uses
  %spec.select.i.i.6 = select i1 %i.ky, i64 %i.ku, i64 %spec.select.i.i.5
  %i.kz = add nuw nsw i64 %.02740.i.i, 7          ; 2 uses
  %i.la = select i1 %i.ky, float %i.kx, float %i.kv ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.kz
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !98 ; 2 uses
  %i.ld = fcmp olt float %i.lc, %i.la             ; 2 uses
  %spec.select.i.i.7 = select i1 %i.ld, i64 %i.kz, i64 %spec.select.i.i.6 ; 2 uses
  %i.le = add nuw nsw i64 %.02740.i.i, 8          ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.le, %i.ct
  %i.lf = select i1 %i.ld, float %i.lc, float %i.la
  br i1 %exitcond.not.i.i.7, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !46

bb.aq:                                            ; preds = %._crit_edge.i.i
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %spec.select.i.i.lcssa ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !98
  store float %i.lh, ptr %.phi.trans.insert.i.i, align 4, !tbaa !98
  store float %.pre.i.i, ptr %i.lg, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.li = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %.041.i.i ; 3 uses
  store ptr %i.jc, ptr %2, align 8, !tbaa !34
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !26 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ll, ptr %i.a, align 8, !tbaa !36
  %i.lm = icmp ugt i64 %i.ll, 15
  br i1 %i.lm, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aq
  %i.ln = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc216 unwind label %.loopexit358 ; 2 uses

.noexc216:                                        ; preds = %.noexc.i.i.i
  store ptr %i.ln, ptr %2, align 8, !tbaa !26
  %i.lo = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.lo, ptr %i.jc, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc216, %bb.aq
  %i.lp = phi ptr [ %i.ln, %.noexc216 ], [ %i.jc, %bb.aq ] ; 2 uses
  switch i64 %i.ll, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i
  %i.lq = load i8, ptr %i.lj, align 1, !tbaa !18
  store i8 %i.lq, ptr %i.lp, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.as:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lp, ptr align 1 %i.lj, i64 %i.ll, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i.i
  %i.lr = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  store i64 %i.lr, ptr %i.jd, align 8, !tbaa !35
  %i.ls = load ptr, ptr %2, align 8, !tbaa !26
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lr
  store i8 0, ptr %i.lt, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.lu = getelementptr inbounds [32 x i8], ptr %i.ch, i64 %spec.select.i.i.lcssa ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.li, ptr noundef nonnull align 8 dereferenceable(32) %i.lu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i.i unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lu, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30.i.i unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i.i
  %i.lv = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.jc
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30.i.i
  %i.lx = load i64, ptr %i.jc, align 8, !tbaa !18
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %._crit_edge.thread.i.i

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.lz = landingpad { ptr, i32 }
          cleanup
  %i.ma = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.jc
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i: ; preds = %bb.at
  %i.mc = load i64, ptr %i.jc, align 8, !tbaa !18
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #27
end_hunk_1
