Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_densorder?download=true
inline.NumInlined: 253
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z13gmx_densorderiPPc:bb.a
bb.g:                                             ; preds = %bb.f
  %i.bg = zext i1 %i.bf to i8
  store i8 %i.bg, ptr @_ZZ13gmx_densorderiPPcE6bGraph, align 1, !tbaa !86
  %i.bh = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.32, i32 noundef 7, ptr noundef nonnull %26)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.bi = zext i1 %i.bh to i8
  store i8 %i.bi, ptr @_ZZ13gmx_densorderiPPcE4bOut, align 1, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #17
  %i.bj = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 27, i32 noundef 7, ptr noundef nonnull %26)
          to label %bb.i unwind label %bb.am

bb.i:                                             ; preds = %bb.h
  store ptr %i.bj, ptr %i.q, align 8, !tbaa !15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.am

bb.j:                                             ; preds = %bb.i
  %i.bk = invoke noundef ptr @_Z8read_topRKNSt10filesystem7__cxx114pathEP7PbcType(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull %i.p)
          to label %bb.k unwind label %bb.an      ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.bm) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.l, %bb.k
  %i.bn = load ptr, ptr %27, align 8, !tbaa !20   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !21
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  %i.bs = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 822, i64 noundef 1, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit:         ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.bt = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 823, i64 noundef 1, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit:         ; preds = %_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit
  %i.bu = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 824, i64 noundef 1, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit
  %i.bv = load ptr, ptr @_ZZ13gmx_densorderiPPcE7axtitle, align 8, !tbaa !15
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = sext i8 %i.bw to i32
  %i.by = call i32 @toupper(i32 noundef %i.bx) #19
  %i.bz = add nsw i32 %i.by, -88
  store i32 %i.bz, ptr @_ZZ13gmx_densorderiPPcE4axis, align 4, !tbaa !76
  %i.ca = invoke noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef 23, i32 noundef 7, ptr noundef nonnull %26)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 2344 ; 3 uses
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef nonnull %i.cb, ptr noundef %i.ca, i32 noundef 1, ptr noundef %i.bu, ptr noundef %i.bt, ptr noundef %i.bs)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.cc = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 1, i32 noundef 7, ptr noundef nonnull %26)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.cd = load float, ptr @_ZZ13gmx_densorderiPPcE4binw, align 4, !tbaa !88 ; 3 uses
  %i.ce = load float, ptr @_ZZ13gmx_densorderiPPcE5binwz, align 4, !tbaa !88
  %i.cf = load i32, ptr @_ZZ13gmx_densorderiPPcE9nsttblock, align 4, !tbaa !76 ; 3 uses
  %i.cg = load i32, ptr %i.p, align 4, !tbaa !90
  %i.ch = load i32, ptr @_ZZ13gmx_densorderiPPcE4axis, align 4, !tbaa !76 ; 3 uses
  %i.ci = load i8, ptr @_ZZ13gmx_densorderiPPcE3b1d, align 1, !tbaa !86, !range !91, !noundef !92
  %i.cj = trunc nuw i8 %i.ci to i1                ; 2 uses
  %i.ck = load ptr, ptr %i.o, align 8, !tbaa !94  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.cc, ptr %i.i, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #17
  %.0140.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %.0140.sroa.gep154.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  switch i32 %i.ch, label %bb.r [
    i32 0, label %bb.u
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 1 dereferenceable(69) @.str.40, i8 noundef zeroext 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 181, ptr noundef nonnull @.str.49) #20
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc
  unreachable

bb.t:                                             ; preds = %.noexc
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.ai

bb.u:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0141.sroa.phi.i = phi ptr [ %i.k, %bb.q ], [ %.0140.sroa.gep154.i, %bb.p ], [ %.0140.sroa.gep.i, %bb.o ]
  %.0141.i = phi i64 [ 0, %bb.q ], [ 2, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %.0140.sroa.phi.i = phi ptr [ %.0140.sroa.gep.i, %bb.q ], [ %i.k, %bb.p ], [ %.0140.sroa.gep154.i, %bb.o ]
  %.0140.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ], [ 2, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef zeroext 2)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.u
  %i.cm = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.ck, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull %i.m, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %.noexc33
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.cp) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.w, %bb.v
  %i.cq = load ptr, ptr %23, align 8, !tbaa !20   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !21
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br i1 %i.cn, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 1 dereferenceable(69) @.str.40, i8 noundef zeroext 2)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.x
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef 186, ptr noundef nonnull @.str.50) #20
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %.noexc34
  unreachable

bb.z:                                             ; preds = %.noexc33
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.ai

bb.aa:                                            ; preds = %.noexc34
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %bb.ai

bb.ab:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.cx = zext nneg i32 %i.ch to i64              ; 3 uses
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cx ; 4 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !88
  %i.db = fdiv float %i.da, %i.ce
  %i.dc = call noundef float @llvm.floor.f32(float %i.db)
  %i.dd = fptosi float %i.dc to i32               ; 4 uses
  %i.de = add nsw i32 %i.dd, 1                    ; 20 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.0140.sroa.phi.i, i64 %.0140.i ; 4 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !88
  %i.dh = fdiv float %i.dg, %i.cd
  %i.di = call noundef float @llvm.floor.f32(float %i.dh)
  %i.dj = fptosi float %i.di to i32               ; 2 uses
  %i.dk = add nsw i32 %i.dj, 1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.0141.sroa.phi.i, i64 %.0141.i ; 4 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !88
  %i.dn = fdiv float %i.dm, %i.cd
  %i.do = call noundef float @llvm.floor.f32(float %i.dn)
  %i.dp = fptosi float %i.do to i32               ; 2 uses
  %i.dq = add nsw i32 %i.dp, 1
  %i.dr = icmp sge i32 %i.dp, %i.dj               ; 2 uses
  %i.ds = select i1 %i.cj, i1 %i.dr, i1 false
  %.0236 = select i1 %i.ds, i32 1, i32 %i.dk      ; 25 uses
  %i.dt = xor i1 %i.dr, true
  %i.du = select i1 %i.cj, i1 %i.dt, i1 false
  %.0 = select i1 %i.du, i32 1, i32 %i.dq         ; 28 uses
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !96
  %i.dw = fpext float %i.cd to double
  %i.dx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.51, i32 noundef %.0, i32 noundef %.0236, i32 noundef %i.de, double noundef %i.dw, i32 noundef range(i32 -2147483648, 2147483560) %i.ch) #21 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.dz = load i32, ptr %i.cb, align 8, !tbaa !113
  %i.ea = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.dy, i32 noundef %i.cg, i32 noundef %i.dz)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc35:                                         ; preds = %bb.ab
  %i.eb = sitofp i32 %i.cf to float
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bk, i64 2352
  %i.ed = sitofp i32 %.0 to float
  %i.ee = insertelement <2 x i32> poison, i32 %.0236, i64 0
  %i.ef = insertelement <2 x i32> %i.ee, i32 %i.de, i64 1
  %i.eg = sitofp <2 x i32> %i.ef to <2 x float>
  %i.eh = sitofp i32 %i.de to float               ; 2 uses
  %i.ei = sext i32 %.0 to i64                     ; 3 uses
  %i.ej = icmp sgt i32 %.0, 0                     ; 3 uses
  %i.ek = sext i32 %.0236 to i64                  ; 2 uses
  %i.el = icmp sgt i32 %.0236, 0                  ; 3 uses
  %i.em = sext i32 %i.de to i64                   ; 5 uses
  %i.en = zext i32 %.0236 to i64                  ; 14 uses
  %i.eo = mul i32 %.0236, %.0                     ; 5 uses
  %i.ep = mul nsw i32 %i.eo, %i.de                ; 2 uses
  %i.eq = sitofp i32 %i.ep to double
  %i.er = fmul nnan double %i.eq, f0x3A6071F778ED6AAF
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc41, %.noexc35
  %.0234 = phi i32 [ 0, %.noexc35 ], [ %spec.select, %.noexc41 ] ; 3 uses
  %.0233 = phi ptr [ null, %.noexc35 ], [ %.1, %.noexc41 ] ; 2 uses
  %.0.i = phi ptr [ null, %.noexc35 ], [ %.1157.i, %.noexc41 ] ; 2 uses
  %.0139.i = phi i32 [ 0, %.noexc35 ], [ %i.ib, %.noexc41 ] ; 2 uses
  %i.es = load float, ptr %i.dl, align 4, !tbaa !88
  %i.et = fdiv float %i.es, %i.ed
  %i.eu = load float, ptr %i.df, align 4, !tbaa !88
  %i.ev = load float, ptr %i.cz, align 4, !tbaa !88
  %i.ew = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.ev, i64 1
  %i.ey = fdiv <2 x float> %i.ex, %i.eg
  %i.ez = load i32, ptr %i.cb, align 8, !tbaa !113
  %i.fa = load ptr, ptr %i.l, align 8, !tbaa !115
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.ea, i32 noundef %i.ez, ptr noundef nonnull %i.k, ptr noundef %i.fa)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc36:                                         ; preds = %bb.ac
  %i.fb = icmp eq ptr %.0.i, null
  br i1 %i.fb, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc36
  %i.fc = srem i32 %.0139.i, %i.cf
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.noexc36
  %i.fe = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.40, i32 noundef 229, i64 noundef range(i64 -2147483648, 2147483648) %i.ei, i64 noundef 8)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc37:                                         ; preds = %bb.ae
  br i1 %i.ej, label %.lr.ph165.i.preheader, label %._crit_edge166.i

.lr.ph165.i.preheader:                            ; preds = %.noexc37
  br i1 %i.el, label %.lr.ph165.i.us, label %.lr.ph165.i

.lr.ph165.i.us:                                   ; preds = %.lr.ph165.i.preheader, %._crit_edge.i.loopexit.us
  %indvars.iv196.i.us = phi i64 [ %indvars.iv.next197.i.us, %._crit_edge.i.loopexit.us ], [ 0, %.lr.ph165.i.preheader ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv196.i.us ; 2 uses
  %i.fg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.40, i32 noundef 232, i64 noundef range(i64 -2147483648, 2147483648) %i.ek, i64 noundef 8)
          to label %.noexc38.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

.noexc38.us:                                      ; preds = %.lr.ph165.i.us
  store ptr %i.fg, ptr %i.ff, align 8, !tbaa !117
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.noexc38.us, %.noexc39.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.noexc39.us ], [ 0, %.noexc38.us ] ; 2 uses
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !117
  %i.fi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.40, i32 noundef 235, i64 noundef range(i64 -2147483648, 2147483648) %i.em, i64 noundef 4)
          to label %.noexc39.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

.noexc39.us:                                      ; preds = %.lr.ph.i.us
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i.us
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !115
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next.i.us, %i.en
  br i1 %exitcond293.not, label %._crit_edge.i.loopexit.us, label %.lr.ph.i.us, !llvm.loop !29

._crit_edge.i.loopexit.us:                        ; preds = %.noexc39.us
  %indvars.iv.next197.i.us = add nuw nsw i64 %indvars.iv196.i.us, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next197.i.us, %i.ei
  br i1 %exitcond294.not, label %._crit_edge166.i, label %.lr.ph165.i.us, !llvm.loop !30

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us: ; preds = %.lr.ph165.i.us
  %lpad.loopexit256.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us: ; preds = %.lr.ph.i.us
  %lpad.loopexit253.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph165.i:                                      ; preds = %.lr.ph165.i.preheader, %.noexc38
  %indvars.iv196.i = phi i64 [ %indvars.iv.next197.i, %.noexc38 ], [ 0, %.lr.ph165.i.preheader ] ; 2 uses
  %i.fk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.40, i32 noundef 232, i64 noundef range(i64 -2147483648, 2147483648) %i.ek, i64 noundef 8)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split

.noexc38:                                         ; preds = %.lr.ph165.i
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv196.i
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !117
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next197.i, %i.ei
  br i1 %exitcond.not, label %._crit_edge166.i, label %.lr.ph165.i, !llvm.loop !30

._crit_edge166.i:                                 ; preds = %.noexc38, %._crit_edge.i.loopexit.us, %.noexc37
  %i.fm = add nuw nsw i32 %.0234, 1
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.40, i32 noundef 242, ptr noundef %.0233, i64 noundef range(i64 -2147483647, 2147483648) %i.fn, i64 noundef 8)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc40:                                         ; preds = %._crit_edge166.i
  %i.fp = zext nneg i32 %.0234 to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fp
  store ptr %i.fe, ptr %i.fq, align 8, !tbaa !119
  br label %bb.af

bb.af:                                            ; preds = %.noexc40, %bb.ad
  %.1 = phi ptr [ %i.fo, %.noexc40 ], [ %.0233, %bb.ad ] ; 7 uses
  %.1157.i = phi ptr [ %i.fe, %.noexc40 ], [ %.0.i, %bb.ad ] ; 2 uses
  %i.fr = load float, ptr %i.dl, align 4, !tbaa !88
  %i.fs = load float, ptr %i.df, align 4, !tbaa !88
  %i.ft = fmul float %i.fr, %i.fs
  %i.fu = load float, ptr %i.cz, align 4, !tbaa !88
  %i.fv = fmul float %i.ft, %i.fu
  %i.fw = fmul float %i.fv, %i.eb
  %i.fx = fpext float %i.fw to double
  %i.fy = fmul double %i.fx, f0x3A53CE9A36F23C11
  %i.fz = fdiv double %i.er, %i.fy
  %i.ga = fptrunc double %i.fz to float
  %i.gb = load i32, ptr %i.bu, align 4, !tbaa !76 ; 2 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  br i1 %i.gc, label %.lr.ph188.i, label %._crit_edge189.i

.lr.ph188.i:                                      ; preds = %bb.af
  %i.gd = load ptr, ptr %i.bt, align 8, !tbaa !120
  %i.ge = load ptr, ptr %i.ec, align 8, !tbaa !121
  %wide.trip.count.i = zext nneg i32 %i.gb to i64
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge184.i, %.lr.ph188.i
  %indvars.iv199.i = phi i64 [ 0, %.lr.ph188.i ], [ %indvars.iv.next200.i, %._crit_edge184.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv199.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !76
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.gh ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.0141.i
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !88 ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.0140.i
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !88 ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.cx
  %i.go = load float, ptr %i.gn, align 4, !tbaa !88 ; 3 uses
  %i.gp = fcmp olt float %i.gk, 0.000000e+00
  %.pre205.i = load float, ptr %i.dl, align 4, !tbaa !88 ; 4 uses
  br i1 %i.gp, label %.lr.ph169.i, label %.preheader161.i

.preheader161.i:                                  ; preds = %.lr.ph169.i, %bb.ag
  %.0137.lcssa.i = phi float [ %i.gk, %bb.ag ], [ %i.gr, %.lr.ph169.i ] ; 3 uses
  %i.gq = fcmp ogt float %.0137.lcssa.i, %.pre205.i
  br i1 %i.gq, label %.lr.ph171.i, label %.preheader160.i

.lr.ph169.i:                                      ; preds = %bb.ag, %.lr.ph169.i
  %.0137167.i = phi float [ %i.gr, %.lr.ph169.i ], [ %i.gk, %bb.ag ]
  %i.gr = fadd float %.pre205.i, %.0137167.i      ; 3 uses
  %i.gs = fcmp olt float %i.gr, 0.000000e+00
  br i1 %i.gs, label %.lr.ph169.i, label %.preheader161.i, !llvm.loop !31

.preheader160.i:                                  ; preds = %.lr.ph171.i, %.preheader161.i
  %.1138.lcssa.i = phi float [ %.0137.lcssa.i, %.preheader161.i ], [ %i.gu, %.lr.ph171.i ]
  %i.gt = fcmp olt float %i.gm, 0.000000e+00
  %.pre206.i = load float, ptr %i.df, align 4, !tbaa !88 ; 4 uses
  br i1 %i.gt, label %.lr.ph174.i, label %.preheader159.i

.lr.ph171.i:                                      ; preds = %.preheader161.i, %.lr.ph171.i
  %.1138170.i = phi float [ %i.gu, %.lr.ph171.i ], [ %.0137.lcssa.i, %.preheader161.i ]
  %i.gu = fsub float %.1138170.i, %.pre205.i      ; 3 uses
  %i.gv = fcmp ogt float %i.gu, %.pre205.i
  br i1 %i.gv, label %.lr.ph171.i, label %.preheader160.i, !llvm.loop !32

.preheader159.i:                                  ; preds = %.lr.ph174.i, %.preheader160.i
  %.0135.lcssa.i = phi float [ %i.gm, %.preheader160.i ], [ %i.gx, %.lr.ph174.i ] ; 3 uses
  %i.gw = fcmp ogt float %.0135.lcssa.i, %.pre206.i
  br i1 %i.gw, label %.lr.ph177.i, label %.preheader158.i

.lr.ph174.i:                                      ; preds = %.preheader160.i, %.lr.ph174.i
  %.0135173.i = phi float [ %i.gx, %.lr.ph174.i ], [ %i.gm, %.preheader160.i ]
  %i.gx = fadd float %.pre206.i, %.0135173.i      ; 3 uses
  %i.gy = fcmp olt float %i.gx, 0.000000e+00
  br i1 %i.gy, label %.lr.ph174.i, label %.preheader159.i, !llvm.loop !33

.preheader158.i:                                  ; preds = %.lr.ph177.i, %.preheader159.i
  %.1136.lcssa.i = phi float [ %.0135.lcssa.i, %.preheader159.i ], [ %i.ha, %.lr.ph177.i ]
  %i.gz = fcmp olt float %i.go, 0.000000e+00
  %.pre207.i = load float, ptr %i.cz, align 4, !tbaa !88 ; 4 uses
  br i1 %i.gz, label %.lr.ph180.i, label %.preheader.i

.lr.ph177.i:                                      ; preds = %.preheader159.i, %.lr.ph177.i
  %.1136176.i = phi float [ %i.ha, %.lr.ph177.i ], [ %.0135.lcssa.i, %.preheader159.i ]
  %i.ha = fsub float %.1136176.i, %.pre206.i      ; 3 uses
  %i.hb = fcmp ogt float %i.ha, %.pre206.i
  br i1 %i.hb, label %.lr.ph177.i, label %.preheader158.i, !llvm.loop !34

.preheader.i:                                     ; preds = %.lr.ph180.i, %.preheader158.i
  %.0134.lcssa.i = phi float [ %i.go, %.preheader158.i ], [ %i.hd, %.lr.ph180.i ] ; 3 uses
  %i.hc = fcmp ogt float %.0134.lcssa.i, %.pre207.i
  br i1 %i.hc, label %.lr.ph183.i, label %._crit_edge184.i

.lr.ph180.i:                                      ; preds = %.preheader158.i, %.lr.ph180.i
  %.0134179.i = phi float [ %i.hd, %.lr.ph180.i ], [ %i.go, %.preheader158.i ]
  %i.hd = fadd float %.pre207.i, %.0134179.i      ; 3 uses
  %i.he = fcmp olt float %i.hd, 0.000000e+00
  br i1 %i.he, label %.lr.ph180.i, label %.preheader.i, !llvm.loop !35

.lr.ph183.i:                                      ; preds = %.preheader.i, %.lr.ph183.i
  %.1182.i = phi float [ %i.hf, %.lr.ph183.i ], [ %.0134.lcssa.i, %.preheader.i ]
  %i.hf = fsub float %.1182.i, %.pre207.i         ; 3 uses
  %i.hg = fcmp ogt float %i.hf, %.pre207.i
  br i1 %i.hg, label %.lr.ph183.i, label %._crit_edge184.i, !llvm.loop !36

._crit_edge184.i:                                 ; preds = %.lr.ph183.i, %.preheader.i
  %.1.lcssa.i = phi float [ %.0134.lcssa.i, %.preheader.i ], [ %i.hf, %.lr.ph183.i ]
  %i.hh = fdiv float %.1138.lcssa.i, %i.et
  %i.hi = fptosi float %i.hh to i32
  %i.hj = srem i32 %i.hi, %.0
  %i.hk = insertelement <2 x float> poison, float %.1136.lcssa.i, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %.1.lcssa.i, i64 1
  %i.hm = fdiv <2 x float> %i.hl, %i.ey           ; 2 uses
  %32 = extractelement <2 x float> %i.hm, i64 0
  %33 = fptosi float %32 to i32
  %34 = srem i32 %33, %.0236
  %35 = extractelement <2 x float> %i.hm, i64 1
  %36 = fptosi float %35 to i32
  %37 = srem i32 %36, %i.de
  %i.hn = getelementptr inbounds [36 x i8], ptr %i.ge, i64 %i.gh
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !125
  %i.hp = sext i32 %i.hj to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %.1157.i, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !117
  %i.hs = sext i32 %34 to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !115
  %i.hv = sext i32 %37 to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !88
  %i.hy = call float @llvm.fmuladd.f32(float %i.ho, float %i.ga, float %i.hx)
  store float %i.hy, ptr %i.hw, align 4, !tbaa !88
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next200.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge189.i, label %bb.ag, !llvm.loop !37

._crit_edge189.i:                                 ; preds = %._crit_edge184.i, %bb.af
  %i.hz = load ptr, ptr %i.j, align 8, !tbaa !127
  %i.ia = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.ck, ptr noundef %i.hz, ptr noundef nonnull %i.m, ptr noundef %.pre, ptr noundef nonnull %i.k)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %._crit_edge189.i
  %i.ib = add nuw nsw i32 %.0139.i, 1             ; 2 uses
  %i.ic = srem i32 %i.ib, %i.cf
  %i.id = icmp eq i32 %i.ic, 0
  %i.ie = zext i1 %i.id to i32
  %spec.select = add nuw nsw i32 %.0234, %i.ie    ; 14 uses
  br i1 %i.ia, label %bb.ac, label %bb.ah, !llvm.loop !38

bb.ah:                                            ; preds = %.noexc41
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.ea)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.ah
  %i.if = load ptr, ptr %i.j, align 8, !tbaa !127
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.if)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.aa, %bb.z, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.cl, %bb.t ], [ %i.cw, %bb.aa ], [ %i.cv, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  br label %.body

bb.aj:                                            ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ig = load i32, ptr @_ZZ13gmx_densorderiPPcE7ftorder, align 4, !tbaa !76 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %bb.ak, label %_ZL13filterdensmapPPPPfiiiii.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ii = shl nuw nsw i32 %i.ig, 1
  %i.ij = or disjoint i32 %i.ii, 1                ; 3 uses
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.40, i32 noundef 353, i64 noundef range(i64 -2147483648, 2147483648) %i.ik, i64 noundef 4)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc50:                                         ; preds = %bb.ak
  %i.im = uitofp nneg i32 %i.ig to double
  %i.in = fmul nnan double %i.im, 5.000000e-01
  %i.io = fptrunc double %i.in to float           ; 2 uses
  %i.ip = fmul float %i.io, %i.io
  invoke void @_Z11gausskernelPfif(ptr noundef %i.il, i32 noundef range(i32 3, -2147483648) %i.ij, float noundef %i.ip)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %.noexc50
  %.not239 = icmp eq i32 %spec.select, 0
  br i1 %.not239, label %_ZL13filterdensmapPPPPfiiiii.exit, label %.preheader24.lr.ph.i

.preheader24.lr.ph.i:                             ; preds = %.noexc51
  %i.iq = icmp slt i32 %.0, 1
  %i.ir = icmp slt i32 %.0236, 1
  %brmerge.i = or i1 %i.iq, %i.ir
  br i1 %brmerge.i, label %_ZL13filterdensmapPPPPfiiiii.exit, label %.preheader24.preheader.i

.preheader24.preheader.i:                         ; preds = %.preheader24.lr.ph.i
  %wide.trip.count41.i = zext nneg i32 %spec.select to i64
  %wide.trip.count36.i = zext nneg i32 %.0 to i64
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %._crit_edge27.i, %.preheader24.preheader.i
  %indvars.iv38.i = phi i64 [ 0, %.preheader24.preheader.i ], [ %indvars.iv.next39.i, %._crit_edge27.i ] ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv38.i
  br label %.preheader.i45

.preheader.i45:                                   ; preds = %._crit_edge.i49, %.preheader24.i
  %indvars.iv33.i = phi i64 [ 0, %.preheader24.i ], [ %indvars.iv.next34.i, %._crit_edge.i49 ] ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.noexc52, %.preheader.i45
  %indvars.iv.i46 = phi i64 [ 0, %.preheader.i45 ], [ %indvars.iv.next.i47, %.noexc52 ] ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !119
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv33.i
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !117
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.i46
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !115
  %i.iy = invoke noundef zeroext i1 @_Z20periodic_convolutioniPfiPKf(i32 noundef %i.de, ptr noundef %i.ix, i32 noundef range(i32 3, -2147483648) %i.ij, ptr noundef %i.il)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc52:                                         ; preds = %bb.al
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %i.en
  br i1 %exitcond.not.i48, label %._crit_edge.i49, label %bb.al, !llvm.loop !39

._crit_edge.i49:                                  ; preds = %.noexc52
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, %wide.trip.count36.i
  br i1 %exitcond37.not.i, label %._crit_edge27.i, label %.preheader.i45, !llvm.loop !40

._crit_edge27.i:                                  ; preds = %._crit_edge.i49
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next39.i, %wide.trip.count41.i
  br i1 %exitcond42.not.i, label %_ZL13filterdensmapPPPPfiiiii.exit, label %.preheader24.i, !llvm.loop !41

bb.am:                                            ; preds = %bb.i, %bb.h
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.j
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %27) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.ja, %bb.an ], [ %i.iz, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br label %.body

_ZL13filterdensmapPPPPfiiiii.exit:                ; preds = %._crit_edge27.i, %.preheader24.lr.ph.i, %.noexc51, %bb.aj
  %i.jb = load i8, ptr @_ZZ13gmx_densorderiPPcE4bOut, align 1, !tbaa !86, !range !91, !noundef !92
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %_ZL13filterdensmapPPPPfiiiii.exit
  %i.jd = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.32, i32 noundef 7, ptr noundef nonnull %26)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.jd, ptr %i.g, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  store i32 %spec.select, ptr %i.h, align 16, !tbaa !76
  %i.je = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %.0, ptr %i.je, align 4, !tbaa !76
  %i.jf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %.0236, ptr %i.jf, align 8, !tbaa !76
  %i.jg = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.de, ptr %i.jg, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext 2)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.aq
  %i.jh = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull @.str.57)
          to label %bb.ar unwind label %bb.au     ; 3 uses

bb.ar:                                            ; preds = %.noexc63
  %i.ji = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i53, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i54, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull %i.jj) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i54

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i54: ; preds = %bb.as, %bb.ar
  %i.jk = load ptr, ptr %21, align 8, !tbaa !20   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i54
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !21
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i56

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i56:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.jp = call i64 @fwrite(ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 4, ptr noundef %i.jh) ; 0 uses
  %.not240 = icmp eq i32 %spec.select, 0
  br i1 %.not240, label %._crit_edge60.i, label %.preheader43.lr.ph.i

.preheader43.lr.ph.i:                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i56
  %i.jq = icmp slt i32 %.0, 1
  %i.jr = icmp slt i32 %i.dd, 0
  %i.js = icmp slt i32 %.0236, 1
  %or.cond.not106.i = or i1 %i.jq, %i.js
  %brmerge.i57 = or i1 %i.jr, %or.cond.not106.i
  br i1 %brmerge.i57, label %._crit_edge60.i, label %.preheader43.us.us.us.preheader.i

.preheader43.us.us.us.preheader.i:                ; preds = %.preheader43.lr.ph.i
  %wide.trip.count88.i = zext nneg i32 %spec.select to i64
  %wide.trip.count83.i = zext nneg i32 %.0 to i64
  %wide.trip.count.i58 = zext nneg i32 %i.de to i64
  br label %.preheader43.us.us.us.i

.preheader43.us.us.us.i:                          ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.preheader43.us.us.us.preheader.i
end_hunk_0
