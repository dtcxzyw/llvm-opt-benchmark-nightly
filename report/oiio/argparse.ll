inline.NumInlined: 4280
inline.NumDeleted: 1275
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN11OpenImageIO4v3_18ArgParse4Impl10parse_argsEiPPKc:bb.a
  %i.aa = call ptr @_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE14_M_emplace_auxIJPS3_EEEN9__gnu_cxx17__normal_iteratorIPS6_S8_EENSC_IPKS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !143 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !13
  %i.ag = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef 0, i64 noundef %i.af, ptr noundef nonnull @.str.21, i64 noundef 22) ; 0 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !143 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 312 ; 2 uses
  %i.ak = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.am, align 8
  store i64 %i.ak, ptr %12, align 16, !tbaa !147
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %12, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 16, i1 false), !tbaa.struct !148
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.aj, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 328 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 336
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !96
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !96 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.an, align 8, !tbaa !96
  store <2 x ptr> %i.ap, ptr %i.al, align 16, !tbaa !96
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_0E9_M_invokeERKSt9_Any_dataS4_OS9_", ptr %i.ao, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit" unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #40
  unreachable

"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit": ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !143
  %i.aw = call noundef i32 @_ZN11OpenImageIO4v3_19ArgOption10initializeEv(ptr noundef nonnull align 8 dereferenceable(360) %i.av) ; 0 uses
  br label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit

bb.i:                                             ; preds = %.loopexit221
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 360) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  br label %bb.ch

_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit: ; preds = %bb.e, %.lr.ph.i, %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !149, !range !94, !noundef !95
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.j, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !142 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !142 ; 2 uses
  %.not4344.i130 = icmp eq ptr %i.bc, %i.be
  br i1 %.not4344.i130, label %.loopexit220, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.j, %.thread.i134
  %.sroa.031.045.i132 = phi ptr [ %i.bo, %.thread.i134 ], [ %i.bc, %bb.j ] ; 2 uses
  %i.bf = load ptr, ptr %.sroa.031.045.i132, align 8, !tbaa !143
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22 ; 4 uses
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.22, ptr noundef nonnull dereferenceable(1) %i.bh) #42
  %.not.i133 = icmp eq i32 %i.bi, 0
  br i1 %.not.i133, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i131
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bk = icmp eq i8 %i.bj, 45
  br i1 %i.bk, label %bb.l, label %.thread.i134

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %.not27.i136 = icmp eq i8 %i.bm, 45
  br i1 %.not27.i136, label %.thread.i134, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(6) getelementptr inbounds nuw (i8, ptr @.str.22, i64 1), ptr noundef nonnull dereferenceable(1) %i.bh) #42
  %.not28.i137 = icmp eq i32 %i.bn, 0
  br i1 %.not28.i137, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138, label %.thread.i134

.thread.i134:                                     ; preds = %bb.m, %bb.l, %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.031.045.i132, i64 8 ; 2 uses
  %.not43.i135 = icmp eq ptr %i.bo, %i.be
  br i1 %.not43.i135, label %.loopexit220, label %.lr.ph.i131

.loopexit220:                                     ; preds = %.thread.i134, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  %i.bp = call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #43 ; 3 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !144, !nonnull !95, !align !145
  invoke void @_ZN11OpenImageIO4v3_19ArgOptionC2ERNS0_8ArgParseEPKc(ptr noundef nonnull align 8 dereferenceable(360) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull @.str.22)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %.loopexit220
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !143
  %i.br = call ptr @_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ArgOptionESt14default_deleteIS3_EESaIS6_EE14_M_emplace_auxIJPS3_EEEN9__gnu_cxx17__normal_iteratorIPS6_S8_EENSC_IPKS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  %i.bs = load ptr, ptr %i.bb, align 8, !tbaa !146
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !143 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 200
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 208
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef 0, i64 noundef %i.bw, ptr noundef nonnull @.str.23, i64 noundef 18) ; 0 uses
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !146
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !143 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 312 ; 2 uses
  %i.cb = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.cd, align 8
  store i64 %i.cb, ptr %11, align 16, !tbaa !147
  %.sroa.0.i.i.i139.sroa.0.0.copyload = load <2 x i64>, ptr %11, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 16, i1 false), !tbaa.struct !148
  store <2 x i64> %.sroa.0.i.i.i139.sroa.0.0.copyload, ptr %i.ca, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 328 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 336
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !96
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !96 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_1E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.ce, align 8, !tbaa !96
  store <2 x ptr> %i.cg, ptr %i.cc, align 16, !tbaa !96
  store ptr @"_ZNSt17_Function_handlerIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEZNS2_4Impl10parse_argsEiPS7_E3$_1E9_M_invokeERKSt9_Any_dataS4_OS9_", ptr %i.cf, align 8, !tbaa !96
  %.not.i.i140 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i140, label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = invoke noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit" unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #40
  unreachable

"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit": ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !146
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !143
  %i.cn = call noundef i32 @_ZN11OpenImageIO4v3_19ArgOption10initializeEv(ptr noundef nonnull align 8 dereferenceable(360) %i.cm) ; 0 uses
  br label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138

bb.q:                                             ; preds = %.loopexit220
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 360) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  br label %bb.ch

_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138: ; preds = %bb.m, %.lr.ph.i131, %"_ZNSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEaSIZNS2_4Impl10parse_argsEiPS7_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSH_.exit", %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit
  %i.cp = load i32, ptr %i.f, align 8, !tbaa !113
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %.lr.ph291, label %.thread

.lr.ph291:                                        ; preds = %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph291, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186
  %.091290 = phi i32 [ 1, %.lr.ph291 ], [ %i.kt, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186 ] ; 15 uses
  %.097289 = phi i1 [ false, %.lr.ph291 ], [ %.198, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186 ] ; 5 uses
  store i32 %.091290, ptr %i.cr, align 8, !tbaa !150
  store i32 -1, ptr %i.cs, align 4, !tbaa !131
  %i.di = load i8, ptr %i.ct, align 4, !tbaa !130, !range !94, !noundef !95
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.dl = sext i32 %.091290 to i64                ; 7 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl ; 7 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !27 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = icmp eq i8 %i.do, 45
  br i1 %i.dp, label %bb.t, label %bb.bx

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16  ; 2 uses
  %i.ds = sext i8 %i.dr to i32
  %i.dt = call i32 @isalpha(i32 noundef %i.ds) #42
  %.not107 = icmp ne i32 %i.dt, 0
  %i.du = icmp eq i8 %i.dr, 45
  %or.cond124 = or i1 %i.du, %.not107
  br i1 %or.cond124, label %16, label %bb.bx

16:                                               ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %17 = load ptr, ptr %i.dm, align 8, !tbaa !27   ; 4 uses
  store ptr %i.cy, ptr %13, align 8, !tbaa !10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %bb.u

19:                                               ; preds = %16
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.34) #41
          to label %.noexc unwind label %.loopexit.a

.noexc:                                           ; preds = %19
  unreachable

bb.u:                                             ; preds = %16
  %i.dv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.dv, ptr %i.a, align 8, !tbaa !28
  %i.dw = icmp ugt i64 %i.dv, 15
  br i1 %i.dw, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.u
  %i.dx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc141 unwind label %.loopexit ; 2 uses

.noexc141:                                        ; preds = %.noexc.i
  store ptr %i.dx, ptr %13, align 8, !tbaa !22
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.dy, ptr %i.cy, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc141, %bb.u
  %i.dz = phi ptr [ %i.dx, %.noexc141 ], [ %i.cy, %bb.u ] ; 2 uses
  switch i64 %i.dv, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.ea = load i8, ptr %17, align 1, !tbaa !16
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !16
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr nonnull align 1 %17, i64 %i.dv, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  store i64 %i.eb, ptr %i.cz, align 8, !tbaa !13
  %i.ec = load ptr, ptr %13, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb
  store i8 0, ptr %i.ed, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.ee = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 58, i64 noundef 0) #38 ; 5 uses
  %.not109 = icmp eq i64 %i.ee, -1
  br i1 %.not109, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = load i64, ptr %i.cz, align 8, !tbaa !13 ; 2 uses
  %i.eg = icmp ugt i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.z:                                             ; preds = %bb.y
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.84, i64 noundef %i.ee, i64 noundef %i.ef) #41
          to label %.noexc142 unwind label %bb.aa

.noexc142:                                        ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.y
  store i64 %i.ee, ptr %i.cz, align 8, !tbaa !13
  %i.eh = load ptr, ptr %13, align 8, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ee
  store i8 0, ptr %i.ei, align 1, !tbaa !16
  br label %bb.ab

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

.loopexit.a:                                      ; preds = %19
  %lpad.loopexit.a = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

bb.aa:                                            ; preds = %bb.z
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.x
  %i.ek = load ptr, ptr %13, align 8, !tbaa !22   ; 5 uses
  %i.el = load ptr, ptr %i.da, align 8, !tbaa !142 ; 2 uses
  %i.em = load ptr, ptr %i.db, align 8, !tbaa !142 ; 2 uses
  %.not4344.i143 = icmp eq ptr %i.el, %i.em
  br i1 %.not4344.i143, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit151, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.thread.i147, %.lr.ph.i144
  %.sroa.031.045.i145 = phi ptr [ %i.el, %.lr.ph.i144 ], [ %i.ff, %.thread.i147 ] ; 2 uses
  %i.eo = load ptr, ptr %.sroa.031.045.i145, align 8, !tbaa !143 ; 25 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !22 ; 5 uses
  %i.er = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ek, ptr noundef nonnull dereferenceable(1) %i.eq) #42
  %.not.i146 = icmp eq i32 %i.er, 0
  br i1 %.not.i146, label %bb.ar, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = load i8, ptr %i.ek, align 1, !tbaa !16
  %i.et = icmp eq i8 %i.es, 45
  br i1 %i.et, label %bb.ae, label %.thread.i147

bb.ae:                                            ; preds = %bb.ad
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ev = icmp eq i8 %i.eu, 45
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !16
  %i.ex = icmp eq i8 %i.ew, 45                    ; 2 uses
  br i1 %i.ev, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ex, label %bb.ag, label %.thread.i147

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !16
  %.not27.i149 = icmp eq i8 %i.ez, 45
  br i1 %.not27.i149, label %.thread.i147, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.en, ptr noundef nonnull dereferenceable(1) %i.eq) #42
  %.not28.i150 = icmp eq i32 %i.fa, 0
  br i1 %.not28.i150, label %bb.ar, label %.thread.i147

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.ex, label %bb.aj, label %.thread.i147

bb.aj:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !16
  %i.fd = icmp eq i8 %i.fc, 45
  br i1 %i.fd, label %bb.ak, label %.thread.i147

bb.ak:                                            ; preds = %bb.aj
  %i.fe = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ek, ptr noundef nonnull dereferenceable(1) %i.fb) #42
  %.not30.i = icmp eq i32 %i.fe, 0
  br i1 %.not30.i, label %bb.ar, label %.thread.i147

.thread.i147:                                     ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.031.045.i145, i64 8 ; 2 uses
  %.not43.i148 = icmp eq ptr %i.ff, %i.em
  br i1 %.not43.i148, label %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit151, label %bb.ac

_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit151: ; preds = %bb.ab, %.thread.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  store ptr %i.ek, ptr %15, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fh = load i64, ptr %i.cz, align 8, !tbaa !13
  store i64 %i.fh, ptr %i.fg, align 8, !tbaa !19
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl13closest_matchB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull dead_on_return %15, i64 noundef 2)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit151
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !13
  %.not111 = icmp eq i64 %i.fj, 0
  %i.fk = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.dl ; 2 uses
  br i1 %.not111, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvS5_DpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.critedge128 unwind label %bb.ap

bb.an:                                            ; preds = %bb.ay, %bb.ax, %bb.au
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit151
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ap:                                            ; preds = %bb.aq, %bb.am
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ap
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !16
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aq:                                            ; preds = %bb.al
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJPKcEEEvS5_DpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %.critedge128 unwind label %bb.ap

.critedge128:                                     ; preds = %bb.aq, %bb.am
  %i.fu = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %.critedge128
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !16
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %.critedge128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %i.fz = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.cy
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.gb = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fn, %bb.ao ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fo, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.bw

bb.ar:                                            ; preds = %bb.ah, %bb.ac, %bb.ak
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eo, i64 352 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !151
  %i.gg = add nsw i32 %i.gf, 1
  store i32 %i.gg, ptr %i.ge, align 8, !tbaa !151
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eo, i64 232 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !75
  %i.gj = and i32 %i.gi, -2
  %switch = icmp eq i32 %i.gj, 2
  br i1 %switch, label %bb.as, label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.gk = load i8, ptr %i.h, align 1, !tbaa !141, !range !94, !noundef !95
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eo, i64 358
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !152, !range !94, !noundef !95
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.au, label %bb.bv

bb.au:                                            ; preds = %bb.at, %bb.as
  invoke void @_ZN11OpenImageIO4v3_19ArgOption13set_parameterEiPKc(ptr noundef nonnull align 8 dereferenceable(360) %i.eo, i32 noundef 0, ptr noundef null)
          to label %bb.av unwind label %bb.an

bb.av:                                            ; preds = %bb.au
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eo, i64 356
  %i.gq = load i8, ptr %i.gp, align 4, !tbaa !92, !range !94, !noundef !95
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.aw, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit

bb.aw:                                            ; preds = %bb.av
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eo, i64 344
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !153 ; 2 uses
  %.not.i158 = icmp eq ptr %i.gt, null
  br i1 %.not.i158, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gu = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.dl
  %i.gw = invoke noundef i32 %i.gt(i32 noundef 1, ptr noundef %i.gv)
          to label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit unwind label %bb.an, !inline_history !154 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18ArgParse4Impl10parse_argsEiPPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  br label %bb.bv

bb.bb:                                            ; preds = %bb.az
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  br label %bb.bw

bb.bc:                                            ; preds = %bb.ar
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eo, i64 236
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !90 ; 5 uses
  %.not116.not287 = icmp slt i32 %i.ho, 1
  br i1 %.not116.not287, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc
  %i.hp = add i32 %.091290, 1
  %i.hq = sext i32 %i.hp to i64
  %wide.trip.count = zext nneg i32 %i.ho to i64
  br label %bb.be

bb.bd:                                            ; preds = %bb.bp, %bb.bo
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.be:                                            ; preds = %.lr.ph, %bb.bj
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bj ] ; 4 uses
  %i.hs = add nsw i64 %indvars.iv, %i.hq          ; 2 uses
  %i.ht = load i32, ptr %i.f, align 8, !tbaa !113
  %i.hu = sext i32 %i.ht to i64
  %.not113 = icmp slt i64 %i.hs, %i.hu
  br i1 %.not113, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hv = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #38
  %i.hw = add nuw nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.e, align 4, !tbaa !3
  invoke void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.gd)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  br label %bb.bv

bb.bh:                                            ; preds = %bb.bf
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  br label %bb.bw

bb.bi:                                            ; preds = %bb.be
  %i.hy = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.hs
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !27
  %i.ib = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN11OpenImageIO4v3_19ArgOption13set_parameterEiPKc(ptr noundef nonnull align 8 dereferenceable(360) %i.eo, i32 noundef %i.ib, ptr noundef %i.ia)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.be, !llvm.loop !157

bb.bk:                                            ; preds = %bb.bi
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.critedge:                                        ; preds = %bb.bj, %bb.bc
  %i.id = load i8, ptr %i.h, align 1, !tbaa !141, !range !94, !noundef !95
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.critedge
  %i.if = getelementptr inbounds nuw i8, ptr %i.eo, i64 358
  %i.ig = load i8, ptr %i.if, align 2, !tbaa !152, !range !94, !noundef !95
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %bb.bl, %.critedge
  %i.ii = getelementptr inbounds nuw i8, ptr %i.eo, i64 356
  %i.ij = load i8, ptr %i.ii, align 4, !tbaa !92, !range !94, !noundef !95
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.bn, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit167

bb.bn:                                            ; preds = %bb.bm
  %i.il = getelementptr inbounds nuw i8, ptr %i.eo, i64 344
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !153 ; 2 uses
  %.not.i165 = icmp eq ptr %i.im, null
  br i1 %.not.i165, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit167, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.in = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.io = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.dl
  %i.ip = add nsw i32 %i.ho, 1
  %i.iq = invoke noundef i32 %i.im(i32 noundef %i.ip, ptr noundef %i.io)
          to label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit167 unwind label %bb.bd, !inline_history !154 ; 0 uses

_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit167: ; preds = %bb.bn, %bb.bo, %bb.bm
  %i.ir = getelementptr inbounds nuw i8, ptr %i.eo, i64 328
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !42
  %.not.i.i168.not = icmp eq ptr %i.is, null
  br i1 %.not.i.i168.not, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit167
  %i.it = getelementptr inbounds nuw i8, ptr %i.eo, i64 312
  %i.iu = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.dl
  %i.iw = add nsw i32 %i.ho, 1
  %i.ix = sext i32 %i.iw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.iv, ptr %7, align 8
  store i64 %i.ix, ptr %i.dc, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.eo, i64 336
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !155
  invoke void %i.iz(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit172 unwind label %bb.bd, !inline_history !156

_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit172: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.bu

bb.bq:                                            ; preds = %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit167
  %i.ja = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.jb = getelementptr [8 x i8], ptr %i.ja, i64 %i.dl
  %i.jc = getelementptr i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !27 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.eo, i64 136
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !22
  %i.jg = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !13
  %.not.i.i173 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i173, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread.i, label %bb.br

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread.i: ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.ji = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jd) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.jd, ptr %5, align 8, !tbaa !17
  store i64 %i.ji, ptr %i.de, align 8, !tbaa !19
  %i.jj = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %5)
          to label %_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i unwind label %bb.bt

_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i: ; preds = %bb.br, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread.i
  %i.jk = phi ptr [ null, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.thread.i ], [ %i.jj, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.jf, ptr %6, align 8, !tbaa !17
  store i64 %i.jh, ptr %i.df, align 8, !tbaa !19
  invoke void @_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_7ustringE(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull dead_on_return %6, ptr %i.jk)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.bu

bb.bt:                                            ; preds = %_ZN11OpenImageIO4v3_114ParamValueList9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit.i, %bb.br
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bu:                                            ; preds = %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit172, %bb.bs, %bb.bl
  %i.jm = add nsw i32 %i.ho, %.091290
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bg, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit, %bb.ba, %bb.at
  %.394 = phi i32 [ %.091290, %bb.at ], [ %.091290, %bb.ba ], [ %.091290, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit ], [ %i.jm, %bb.bu ], [ %.091290, %bb.bg ]
  %.289 = phi i1 [ true, %bb.at ], [ true, %bb.ba ], [ true, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit ], [ true, %bb.bu ], [ false, %bb.bg ]
  %i.jn = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.cy
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.bv
  %i.jp = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br i1 %.289, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186, label %.thread

bb.bw:                                            ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bb, %bb.bh, %bb.bk, %bb.bt, %bb.bd, %bb.aa
  %.pn119.pn = phi { ptr, i32 } [ %i.ej, %bb.aa ], [ %i.fm, %bb.an ], [ %i.hm, %bb.bb ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hr, %bb.bd ], [ %i.jl, %bb.bt ], [ %i.hx, %bb.bh ], [ %i.ic, %bb.bk ] ; 2 uses
  %i.jr = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.cy
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.bw
  %i.jt = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.bw, %.loopexit, %.loopexit.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  %.pn119.pn.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179 ], [ %lpad.loopexit.a, %.loopexit.a ], [ %lpad.loopexit, %.loopexit ], [ %.pn119.pn, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %bb.ch

bb.bx:                                            ; preds = %bb.t, %bb.s
  %i.jv = load i8, ptr %i.h, align 1, !tbaa !141, !range !94, !noundef !95
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.by, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186

bb.by:                                            ; preds = %bb.bx
  %i.jx = load ptr, ptr %i.cu, align 8, !tbaa !158 ; 6 uses
  %i.jy = icmp eq ptr %i.jx, null
  %or.cond = select i1 %i.jy, i1 true, i1 %.097289
  br i1 %or.cond, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 328
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !42
  %.not.i.i182.not = icmp eq ptr %i.ka, null
  br i1 %.not.i.i182.not, label %bb.ca, label %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184

_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184: ; preds = %bb.bz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.dm, ptr %4, align 8
  store i64 1, ptr %i.cv, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 336
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !155
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(32) %i.kb, ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !156
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186

bb.ca:                                            ; preds = %bb.bz
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 344
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !153 ; 2 uses
  %.not.i185 = icmp eq ptr %i.kf, null
  br i1 %.not.i185, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kg = call noundef i32 %i.kf(i32 noundef 1, ptr noundef nonnull %i.dm), !inline_history !154 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186

bb.cc:                                            ; preds = %bb.by
  %i.kh = load ptr, ptr %i.cw, align 8, !tbaa !159 ; 6 uses
  %.not108 = icmp eq ptr %i.kh, null
  br i1 %.not108, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 328
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !42
  %.not.i.i187.not = icmp eq ptr %i.kj, null
  br i1 %.not.i.i187.not, label %bb.ce, label %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit189

_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit189: ; preds = %bb.cd
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.dm, ptr %3, align 8
  store i64 1, ptr %i.cx, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 336
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !155
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(32) %i.kk, ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !156
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186

bb.ce:                                            ; preds = %bb.cd
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 344
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !153 ; 2 uses
  %.not.i190 = icmp eq ptr %i.ko, null
  br i1 %.not.i190, label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kp = call noundef i32 %i.ko(i32 noundef 1, ptr noundef nonnull %i.dm), !inline_history !154 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186

bb.cg:                                            ; preds = %bb.cc
  call void @_ZNK11OpenImageIO4v3_18ArgParse4Impl8errorfmtIJPKcEEEvS5_DpRKT_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
  br label %.thread

_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186: ; preds = %bb.cf, %bb.ce, %bb.cb, %bb.ca, %bb.bx, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit189, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %.198 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %.097289, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit189 ], [ false, %bb.cb ], [ false, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184 ], [ %.097289, %bb.bx ], [ false, %bb.ca ], [ %.097289, %bb.ce ], [ %.097289, %bb.cf ]
  %.495 = phi i32 [ %.394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %.091290, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit189 ], [ %.091290, %bb.cb ], [ %.091290, %_ZNKSt8functionIFvRN11OpenImageIO4v3_18ArgParse3ArgENS1_4spanIKPKcLm18446744073709551615EEEEEclES4_S9_.exit184 ], [ %.091290, %bb.bx ], [ %.091290, %bb.ca ], [ %.091290, %bb.ce ], [ %.091290, %bb.cf ]
  %i.kq = load i32, ptr %i.cs, align 4, !tbaa !131 ; 2 uses
  %i.kr = icmp slt i32 %i.kq, 0
  %i.ks = add nsw i32 %.495, 1
  %i.kt = select i1 %i.kr, i32 %i.ks, i32 %i.kq   ; 2 uses
  %i.ku = load i32, ptr %i.f, align 8, !tbaa !113
  %i.kv = icmp slt i32 %i.kt, %i.ku
  br i1 %i.kv, label %bb.r, label %.thread, !llvm.loop !160

.thread:                                          ; preds = %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.cg
  %i.kw = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ -1, %bb.cg ], [ 0, %_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit138 ], [ 0, %bb.r ], [ 0, %_ZNK11OpenImageIO4v3_19ArgOption15invoke_callbackEiPPKc.exit186 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ]
  ret i32 %i.kw

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %bb.q, %bb.i
  %.pn119.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %i.co, %bb.q ], [ %i.ax, %bb.i ]
  resume { ptr, i32 } %.pn119.pn.pn.pn
}

declare void @_ZN11OpenImageIO4v3_17Sysutil4TermC1ERKSo(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ArgParse9prog_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !10
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.g, ptr %i.a, align 8, !tbaa !28
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !22
  %i.j = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.j, ptr %i.d, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !16
  store i8 %i.l, ptr %i.k, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !13
  %i.o = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ArgParse8geterrorB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !10
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.g, ptr %i.a, align 8, !tbaa !28
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !22
  %i.j = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.j, ptr %i.d, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !16
  store i8 %i.l, ptr %i.k, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !13
  %i.o = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br i1 %2, label %bb.d, label %bb.e

end_hunk_1
begin_hunk_2_@_ZNK11OpenImageIO4v3_18ArgParse10print_helpEv:bb.a
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  store ptr %i.g, ptr %4, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  store i64 %i.j, ptr %i.h, align 8, !tbaa !19
  call fastcc void @_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef dead_on_return %4, i32 noundef 1)
  %i.k = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.30, i64 noundef 7) ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  store ptr %i.q, ptr %5, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  store i64 %i.t, ptr %i.r, align 8, !tbaa !19
  call fastcc void @_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef dead_on_return %5, i32 noundef 1)
  %.pre = load ptr, ptr %0, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = phi ptr [ %.pre, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  store ptr %i.w, ptr %6, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13
  store i64 %i.z, ptr %i.x, align 8, !tbaa !19
  call fastcc void @_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef dead_on_return %6, i32 noundef 1)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt25__throw_bad_function_callv() #41
  unreachable

_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 296
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !132
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !161
  %i.ag = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 256
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !142 ; 2 uses
  %.not122145 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not122145, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit
  %.0.lcssa = phi i64 [ 0, %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit ], [ %.1, %.lr.ph ] ; 2 uses
  %i.al = tail call noundef i32 @_ZN11OpenImageIO4v3_17Sysutil16terminal_columnsEv()
  %i.am = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !142 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !142 ; 2 uses
  %.not123148 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not123148, label %._crit_edge152, label %.lr.ph151

.lr.ph151:                                        ; preds = %._crit_edge
  %i.ar = add i64 %.0.lcssa, 2                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = add nsw i32 %i.al, -2                   ; 2 uses
  %i.be = trunc i64 %.0.lcssa to i32
  %i.bf = add nsw i32 %i.be, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.k

.lr.ph:                                           ; preds = %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit, %.lr.ph
  %.0147 = phi i64 [ %.1, %.lr.ph ], [ 0, %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit ] ; 2 uses
  %.sroa.0114.0146 = phi ptr [ %i.bt, %.lr.ph ], [ %i.ai, %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit ] ; 2 uses
  %i.bp = load ptr, ptr %.sroa.0114.0146, align 8, !tbaa !143
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 35
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.0147, i64 %i.br)
  %.1 = select i1 %i.bs, i64 %.sroa.speculated, i64 %.0147 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0114.0146, i64 8 ; 2 uses
  %.not122 = icmp eq ptr %i.bt, %i.ak
  br i1 %.not122, label %._crit_edge, label %.lr.ph

._crit_edge152.loopexit:                          ; preds = %bb.au
  %.pre153 = load ptr, ptr %0, align 8, !tbaa !108
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit, %._crit_edge
  %i.bu = phi ptr [ %.pre153, %._crit_edge152.loopexit ], [ %i.am, %._crit_edge ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 320
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42
  %.not.i.i39 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i39, label %bb.e, label %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit40

bb.e:                                             ; preds = %._crit_edge152
  call void @_ZSt25__throw_bad_function_callv() #41
  unreachable

_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit40: ; preds = %._crit_edge152
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 304
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 328
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !132
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !161
  %i.ca = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 168
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 176
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !13 ; 3 uses
  %.not.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit40
  %i.cf = load ptr, ptr @_ZSt4cout, align 8, !tbaa !52
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !66
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.g, label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cc, i64 noundef %i.ce) ; 0 uses
  br label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i

_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.g, %bb.f
  %i.cn = getelementptr i8, ptr %i.cc, i64 %i.ce
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %.not3.i = icmp eq i8 %i.cp, 10
  br i1 %.not3.i, label %_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !16
  %i.cq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !52
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !162
  %.not.i.i41 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit

_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit: ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %_ZNKSt8functionIFvRKN11OpenImageIO4v3_18ArgParseERSoEEclES4_S5_.exit40
  ret void

bb.k:                                             ; preds = %.lr.ph151, %bb.au
  %.sroa.0109.0149 = phi ptr [ %i.ao, %.lr.ph151 ], [ %i.jf, %bb.au ] ; 7 uses
  %i.cy = load ptr, ptr %.sroa.0109.0149, align 8, !tbaa !143 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 357
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !163, !range !94, !noundef !95
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.au, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !13 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !13
  %i.dg = icmp eq i64 %i.df, 11
  br i1 %i.dg, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread

_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit: ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !22 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 1
  %i.dk = xor i64 %i.dj, 6071224213145211708
  %i.dl = getelementptr i8, ptr %i.di, i64 3
  %i.dm = load i64, ptr %i.dl, align 1
  %i.dn = xor i64 %i.dm, 4490739001733562704
  %i.do = or i64 %i.dk, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.m, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %20 = load ptr, ptr %.sroa.0109.0149, align 8, !tbaa !143 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 200
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !22
  store ptr %i.dt, ptr %8, align 8, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 208
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !13
  store i64 %i.dv, ptr %i.bk, align 8, !tbaa !19
  store ptr @.str, ptr %9, align 8, !tbaa !17
  store i64 1, ptr %i.bl, align 8, !tbaa !19
  store ptr @.str.8, ptr %10, align 8, !tbaa !17
  store i64 0, ptr %i.bm, align 8, !tbaa !19
  call void @_ZN11OpenImageIO4v3_17Strutil8wordwrapB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEiiS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull dead_on_return %8, i32 noundef %i.bd, i32 noundef 0, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  %i.dw = load ptr, ptr %7, align 8, !tbaa !22
  %i.dx = load i64, ptr %i.bn, align 8, !tbaa !13
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.dw, i64 noundef %i.dx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !52
  %i.ea = getelementptr i8, ptr %i.dz, i64 -24
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !162
  %.not.i42 = icmp eq i64 %i.ee, 0
  br i1 %.not.i42, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i8 noundef signext 10)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eh = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.bo
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ej = load i64, ptr %i.bo, align 8, !tbaa !16
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.au

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.bo
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.q
  %i.eo = load i64, ptr %i.bo, align 8, !tbaa !16
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.at

_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread: ; preds = %bb.l, %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.31, i64 noundef 4) ; 0 uses
  %i.er = load ptr, ptr %.sroa.0109.0149, align 8, !tbaa !143 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !13
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.et, i64 noundef %i.ev) ; 0 uses
  %i.ex = icmp ult i64 %i.dd, 35
  br i1 %i.ex, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.ey = sub i64 %i.ar, %i.dd
  store ptr %i.au, ptr %11, align 8, !tbaa !10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ey, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.r
  %i.ez = load ptr, ptr %11, align 8, !tbaa !22
  %i.fa = load i64, ptr %i.av, align 8, !tbaa !13
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ez, i64 noundef %i.fa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit49 unwind label %bb.t ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.fc = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.au
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit49
  %i.fe = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.au
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.t
  %i.fk = load i64, ptr %i.au, align 8, !tbaa !16
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.s
  %.pn28 = phi { ptr, i32 } [ %i.fg, %bb.s ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.fh, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.at

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  store ptr %i.as, ptr %12, align 8, !tbaa !10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ar, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit57 unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit57: ; preds = %bb.u
  %i.fn = load ptr, ptr %12, align 8, !tbaa !22
  %i.fo = load i64, ptr %i.at, align 8, !tbaa !13
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.fn, i64 noundef %i.fo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit59 unwind label %bb.w ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit57
  %i.fq = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.as
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit59
  %i.fs = load i64, ptr %i.as, align 8, !tbaa !16
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit57
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.as
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.w
  %i.fy = load i64, ptr %i.as, align 8, !tbaa !16
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.v
  %.pn = phi { ptr, i32 } [ %i.fu, %bb.v ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.fv, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.at

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.ga = load ptr, ptr %.sroa.0109.0149, align 8, !tbaa !143 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 200
  store ptr %i.aw, ptr %13, align 8, !tbaa !10
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !22 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 208
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 %i.ge, ptr %i.b, align 8, !tbaa !28
  %i.gf = icmp ugt i64 %i.ge, 15
  br i1 %i.gf, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.x
  %i.gg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.gg, ptr %13, align 8, !tbaa !22
  %i.gh = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.gh, ptr %i.aw, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.x
  %i.gi = phi ptr [ %i.gg, %.noexc.i ], [ %i.aw, %bb.x ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_18ArgParse4Impl5foundEPKc:bb.a
_ZN11OpenImageIO4v3_18ArgParse4Impl11find_optionEPKc.exit: ; preds = %.thread.i, %bb.a, %bb.k
  %i.z = phi i32 [ %i.y, %bb.k ], [ 0, %bb.a ], [ 0, %.thread.i ]
  ret i32 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ArgParse9has_errorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp ne i64 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr nofree noundef nonnull readonly captures(none) dead_on_return %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZSt4cout, align 8, !tbaa !52
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !66
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.l, i64 noundef %i.d) ; 0 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !19
  br label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.d, %bb.b ], [ %.pre, %bb.c ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !17
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %.not3 = icmp eq i8 %i.r, 10
  br i1 %.not3, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !16
  %i.s = load ptr, ptr @_ZSt4cout, align 8, !tbaa !52
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !162
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.f:                                             ; preds = %bb.d
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !16
  %i.aa = load ptr, ptr @_ZSt4cout, align 8, !tbaa !52
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !162
  %.not.i4 = icmp eq i64 %i.af, 0
  br i1 %.not.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6

bb.i:                                             ; preds = %.lr.ph.preheader
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6, %bb.g, %bb.a
  ret void
}

declare noundef i32 @_ZN11OpenImageIO4v3_17Sysutil16terminal_columnsEv() local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_17Strutil8wordwrapB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEiiS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef dead_on_return, i32 noundef, i32 noundef, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ParamValueList8containsENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ArgParse10briefusageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  store ptr %i.f, ptr %1, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  store i64 %i.i, ptr %i.g, align 8, !tbaa !19
  call fastcc void @_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef dead_on_return %1, i32 noundef 1)
  %i.j = load ptr, ptr %0, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.30, i64 noundef 7) ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  store ptr %i.p, ptr %2, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  store i64 %i.s, ptr %i.q, align 8, !tbaa !19
  call fastcc void @_ZN11OpenImageIO4v3_1L7printlnERSoNS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef dead_on_return %2, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef i32 @_ZN11OpenImageIO4v3_17Sysutil16terminal_columnsEv() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i64 0, ptr %i.v, align 8, !tbaa !13
  store i8 0, ptr %i.u, align 8, !tbaa !16
  %i.w = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !142  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 256
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !142 ; 2 uses
  %.not7792 = icmp eq ptr %i.y, %i.aa
  br i1 %.not7792, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = add nsw i32 %i.t, -2                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.z
  %.pre = load i64, ptr %i.v, align 8, !tbaa !13
  %i.ao = icmp eq i64 %.pre, 0
  br i1 %i.ao, label %._crit_edge.thread, label %bb.aa

bb.d:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.074.093 = phi ptr [ %i.y, %.lr.ph ], [ %i.ek, %bb.z ] ; 4 uses
  %i.ap = load ptr, ptr %.sroa.074.093, align 8, !tbaa !143 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 357
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !163, !range !94, !noundef !95
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !13
  %i.av = icmp eq i64 %i.au, 11
  br i1 %i.av, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread

_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 1
  %i.az = xor i64 %i.ay, 6071224213145211708
  %i.ba = getelementptr i8, ptr %i.ax, i64 3
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = xor i64 %i.bb, 4490739001733562704
  %i.bd = or i64 %i.az, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.f, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !13
  %.not21 = icmp eq i64 %i.bh, 0
  br i1 %.not21, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.31, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.bj = load ptr, ptr %3, align 8, !tbaa !22
  store ptr %i.bj, ptr %5, align 8, !tbaa !17
  %i.bk = load i64, ptr %i.v, align 8, !tbaa !13
  store i64 %i.bk, ptr %i.ad, align 8, !tbaa !19
  store ptr @.str, ptr %6, align 8, !tbaa !17
  store i64 1, ptr %i.af, align 8, !tbaa !19
  store ptr @.str.8, ptr %7, align 8, !tbaa !17
  store i64 0, ptr %i.ag, align 8, !tbaa !19
  invoke void @_ZN11OpenImageIO4v3_17Strutil8wordwrapB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEiiS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull dead_on_return %5, i32 noundef %i.ae, i32 noundef 4, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bl = load ptr, ptr %4, align 8, !tbaa !22
  %i.bm = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bl, i64 noundef %i.bm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !162
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i8 noundef signext 10)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bw = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ai
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ai
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.n
  %i.cf = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.m
  %.pn22 = phi { ptr, i32 } [ %i.cb, %bb.m ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.cc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.ai

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  store i64 0, ptr %i.v, align 8, !tbaa !13
  %i.ch = load ptr, ptr %3, align 8, !tbaa !22
  store i8 0, ptr %i.ch, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.ci = load ptr, ptr %.sroa.074.093, align 8, !tbaa !143 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 200
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22
  store ptr %i.ck, ptr %9, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 208
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !13
  store i64 %i.cm, ptr %i.aj, align 8, !tbaa !19
  store ptr @.str, ptr %10, align 8, !tbaa !17
  store i64 1, ptr %i.ak, align 8, !tbaa !19
  store ptr @.str.8, ptr %11, align 8, !tbaa !17
  store i64 0, ptr %i.al, align 8, !tbaa !19
  invoke void @_ZN11OpenImageIO4v3_17Strutil8wordwrapB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEiiS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull dead_on_return %9, i32 noundef %i.ae, i32 noundef 0, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %8, align 8, !tbaa !22
  %i.co = load i64, ptr %i.am, align 8, !tbaa !13
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cn, i64 noundef %i.co)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33 unwind label %bb.u ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !52
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !162
  %.not.i34 = icmp eq i64 %i.cv, 0
  br i1 %.not.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.s unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i8 noundef signext 10)
          to label %bb.s unwind label %bb.u       ; 0 uses

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cy = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.an
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.s
  %i.da = load i64, ptr %i.an, align 8, !tbaa !16
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.z

bb.t:                                             ; preds = %bb.o
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.an
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.u
  %i.dg = load i64, ptr %i.an, align 8, !tbaa !16
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.t
  %.pn24 = phi { ptr, i32 } [ %i.dc, %bb.t ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.dd, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.ai

_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread: ; preds = %bb.e, %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %17 = load ptr, ptr %.sroa.074.093, align 8, !tbaa !143 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !22, !noalias !242
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !13, !noalias !242 ; 3 uses
  store ptr %i.ab, ptr %12, align 8, !tbaa !10, !alias.scope !245
  store i64 0, ptr %i.ac, align 8, !tbaa !13, !alias.scope !245
  store i8 0, ptr %i.ab, align 8, !tbaa !16, !alias.scope !245
  %i.dm = add i64 %i.dl, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.dm)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread
  %i.dn = load i64, ptr %i.ac, align 8, !tbaa !13, !alias.scope !245
  %i.do = sub i64 4611686018427387903, %i.dn
  %i.dp = icmp ult i64 %i.do, %i.dl
  br i1 %i.dp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.v
  %i.dq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.dj, i64 noundef %i.dl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dr = load i64, ptr %i.ac, align 8, !tbaa !13, !alias.scope !245
  %i.ds = icmp eq i64 %i.dr, 4611686018427387903
  br i1 %i.ds, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #41
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.dt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.du = load ptr, ptr %12, align 8, !tbaa !22, !alias.scope !245 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ab
  br i1 %i.dv, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.dw = load i64, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.dx = load i64, ptr %i.v, align 8, !tbaa !13
  %i.dy = sub i64 4611686018427387903, %i.dx
  %i.dz = icmp ult i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #41
          to label %.noexc45 unwind label %.loopexit.split-lp79

.noexc45:                                         ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ea = load ptr, ptr %12, align 8, !tbaa !22
  %i.eb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ea, i64 noundef %i.dw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit78 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ec = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ab
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ee = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.z

.loopexit78:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit80 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp79:                             ; preds = %bb.x
  %lpad.loopexit.split-lp81 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp79, %.loopexit78
  %lpad.phi82 = phi { ptr, i32 } [ %lpad.loopexit80, %.loopexit78 ], [ %lpad.loopexit.split-lp81, %.loopexit.split-lp79 ] ; 2 uses
  %i.eg = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ab
  br i1 %i.eh, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.y, %bb.w
  %.sink = phi ptr [ %i.du, %bb.w ], [ %i.eg, %bb.y ]
  %.pn19.ph = phi { ptr, i32 } [ %lpad.phi, %bb.w ], [ %lpad.phi82, %bb.y ]
  %i.ei = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ej) #39
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.y, %bb.w
  %.pn19 = phi { ptr, i32 } [ %lpad.phi, %bb.w ], [ %lpad.phi82, %bb.y ], [ %.pn19.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.ai

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.d
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.074.093, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.ek, %i.aa
  br i1 %.not77, label %._crit_edge, label %bb.d

bb.aa:                                            ; preds = %._crit_edge
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.31, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.em = load ptr, ptr %3, align 8, !tbaa !22
  store ptr %i.em, ptr %14, align 8, !tbaa !17
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.eo = load i64, ptr %i.v, align 8, !tbaa !13
  store i64 %i.eo, ptr %i.en, align 8, !tbaa !19
  %i.ep = add nsw i32 %i.t, -2
  store ptr @.str, ptr %15, align 8, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 1, ptr %i.eq, align 8, !tbaa !19
  store ptr @.str.8, ptr %16, align 8, !tbaa !17
  %i.er = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.er, align 8, !tbaa !19
  invoke void @_ZN11OpenImageIO4v3_17Strutil8wordwrapB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEiiS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull dead_on_return %14, i32 noundef %i.ep, i32 noundef 4, ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.es = load ptr, ptr %13, align 8, !tbaa !22
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !13
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.es, i64 noundef %i.eu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56 unwind label %bb.ah ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56: ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !162
  %.not.i57 = icmp eq i64 %i.fb, 0
  br i1 %.not.i57, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.ae unwind label %bb.ah     ; 0 uses

bb.ad:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i8 noundef signext 10)
          to label %bb.ae unwind label %bb.ah     ; 0 uses

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fe = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.ae
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !16
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %._crit_edge.thread

bb.af:                                            ; preds = %bb.aa
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.ah:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
end_hunk_3
