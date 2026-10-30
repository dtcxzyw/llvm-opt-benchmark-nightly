Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/pugixml?download=true
inline.NumInlined: 2217
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE:bb.a
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE11EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.ah:                                            ; preds = %bb.u
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node7step_doINS1_12axis_to_typeILNS1_6axis_tE12EEEEENS1_18xpath_node_set_rawERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tET_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
  br label %bb.bb

bb.ai:                                            ; preds = %bb.u
  store i32 0, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  br label %bb.bb

bb.aj:                                            ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %.not.i.i70 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i70, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %.pre.i = load ptr, ptr %8, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

bb.al:                                            ; preds = %bb.aj
  %i.bp = load i64, ptr %2, align 8
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %bb.ak, %bb.al
  %i.br = phi ptr [ %i.bq, %bb.al ], [ %.pre.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.at, label %bb.am

bb.am:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.bs = load ptr, ptr %i.bn, align 8
  %.not.i.i71 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i71, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.pre.i72 = load ptr, ptr %7, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit73

bb.ao:                                            ; preds = %bb.am
  %i.bt = load i64, ptr %2, align 8
  %i.bu = inttoptr i64 %i.bt to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit73

_ZNK4pugi10xpath_node4nodeEv.exit73:              ; preds = %bb.an, %bb.ao
  %i.bv = phi ptr [ %i.bu, %bb.ao ], [ %.pre.i72, %bb.an ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i74 = icmp eq ptr %i.bv, null
  br i1 %.not.i74, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit73
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = lshr i64 %i.bw, 8
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !56, !noundef !56
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -64
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.cb)
  br label %_ZNK4pugi8xml_node4rootEv.exit

bb.aq:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit73
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZNK4pugi8xml_node4rootEv.exit

_ZNK4pugi8xml_node4rootEv.exit:                   ; preds = %bb.ap, %bb.aq
  %i.cc = load ptr, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.cc, ptr %14, align 8
  call void @_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %.not.i75 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not.i75, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4pugi8xml_node4rootEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.ch, ptr %i.cd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(16) %13, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit

bb.as:                                            ; preds = %_ZNK4pugi8xml_node4rootEv.exit
  %i.ci = load ptr, ptr %3, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw14push_back_growERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %13, ptr noundef %i.ci)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit

_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #50
  br label %bb.bb

bb.at:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bn, align 8
  %.not.i76 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i76, label %bb.bb, label %_ZNK4pugi10xpath_node6parentEv.exit

_ZNK4pugi10xpath_node6parentEv.exit:              ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #50
  %.sroa.0.0.copyload.i78 = load ptr, ptr %2, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i79 = icmp eq ptr %.sroa.0.0.copyload.i78, null
  br i1 %.not.i79, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK4pugi10xpath_node6parentEv.exit
  %i.cj = load i64, ptr %.sroa.0.0.copyload.i78, align 8
  %i.ck = lshr i64 %i.cj, 8
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i78, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !56, !noundef !56
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.co)
  br label %_ZNK4pugi8xml_node4rootEv.exit80

bb.av:                                            ; preds = %_ZNK4pugi10xpath_node6parentEv.exit
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZNK4pugi8xml_node4rootEv.exit80

_ZNK4pugi8xml_node4rootEv.exit80:                 ; preds = %bb.au, %bb.av
  %i.cp = load ptr, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.cp, ptr %16, align 8
  call void @_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %16)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not.i81 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i81, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4pugi8xml_node4rootEv.exit80
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.cu, ptr %i.cq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(16) %15, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit82

bb.ax:                                            ; preds = %_ZNK4pugi8xml_node4rootEv.exit80
  %i.cv = load ptr, ptr %3, align 8
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw14push_back_growERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %15, ptr noundef %i.cv)
  br label %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit82

_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit82: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #50
  br label %bb.bb

bb.ay:                                            ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 1
  br i1 %i.cy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = icmp eq i32 %i.db, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.de = select i1 %i.dc, ptr %i.dd, ptr @_ZN4pugi4impl12_GLOBAL__N_114dummy_node_setE ; 3 uses
  store i32 0, ptr %0, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.dg = load i32, ptr %i.de, align 8
  store i32 %i.dg, ptr %0, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = load ptr, ptr %3, align 8
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw6appendEPKNS_10xpath_nodeES5_PNS1_15xpath_allocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.di, ptr noundef %i.dk, ptr noundef %i.dl)
  br label %bb.bb

bb.ba:                                            ; preds = %bb.a, %bb.ay
  store i32 0, ptr %0, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit, %_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw9push_backERKNS_10xpath_nodeEPNS1_15xpath_allocatorE.exit82, %bb.at, %bb.ba, %bb.az, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi11xpath_query13evaluate_nodeERKNS_10xpath_nodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xpath_node", align 16 ; 5 uses
  %3 = alloca %"struct.pugi::xpath_parse_result", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xpath_node", align 16 ; 4 uses
  %5 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 7 uses
  %6 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack_data", align 8 ; 18 uses
  %7 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1
  %.val.i = load i8, ptr %i.c, align 1
  %.not6.i = icmp eq i8 %.val.i, 1
  br i1 %.not6.i, label %_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call void @_ZN4pugi18xpath_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  store ptr @.str.107, ptr %3, align 8
  %i.d = call ptr @__cxa_allocate_exception(i64 24) #50 ; 3 uses
  invoke void @_ZN4pugi15xpath_exceptionC1ERKNS_18xpath_parse_resultE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4pugi15xpath_exceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #53
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %lpad.loopexit.split-lp27, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %bb.n

_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8224 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8288 ; 4 uses
  store ptr %6, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8232
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8240
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8248 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4112 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8256
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8264
  store ptr %i.i, ptr %i.o, align 8
  store i8 0, ptr %i.i, align 8
  store ptr null, ptr %i.m, align 8
  store ptr null, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4120
  store i64 4096, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4096, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8272 ; 2 uses
  store ptr %i.h, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8280
  store ptr %i.l, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef 2)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit
  %i.t = load i8, ptr %i.i, align 8, !range !66, !noundef !56
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = call ptr @__cxa_allocate_exception(i64 8) #50 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #53
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %.invoke, %bb.h, %_ZN4pugi4impl12_GLOBAL__N_125evaluate_node_set_prepareEPNS1_16xpath_query_implE.exit
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev(ptr noundef nonnull align 8 dead_on_return(8289) dereferenceable(8289) %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = load i32, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ab = icmp eq ptr %i.x, %i.z
  br i1 %i.ab, label %.invoke, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %i.aa, label %.invoke [
    i32 1, label %.sink.split
    i32 2, label %bb.k
    i32 0, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %.01.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.01.i.i.i, %i.z
  br i1 %.not2.i.i.i, label %.sink.split, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.noexc5
  %.04.i.i.i = phi ptr [ %.0.i.i.i, %.noexc5 ], [ %.01.i.i.i, %bb.l ] ; 3 uses
  %.0103.i.i.i = phi ptr [ %spec.select.i.i.i, %.noexc5 ], [ %i.x, %bb.l ] ; 2 uses
  %i.ad = invoke fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0103.i.i.i)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %.lr.ph.i.i.i
  %spec.select.i.i.i = select i1 %i.ad, ptr %.04.i.i.i, ptr %.0103.i.i.i ; 2 uses
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.z
  br i1 %.not.i.i.i, label %.sink.split, label %.lr.ph.i.i.i, !llvm.loop !27

.invoke:                                          ; preds = %bb.j, %bb.i
  invoke void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %.noexc5, %bb.l, %bb.j, %bb.k
  %.010.lcssa.i.i.i.sink = phi ptr [ %i.x, %bb.j ], [ %i.ac, %bb.k ], [ %i.x, %bb.l ], [ %spec.select.i.i.i, %.noexc5 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.010.lcssa.i.i.i.sink, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %.invoke
  %8 = load <2 x ptr>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x ptr> %8, ptr %4, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  %.val1.i = load ptr, ptr %i.h, align 8          ; 2 uses
  %i.ae = load ptr, ptr %.val1.i, align 8         ; 2 uses
  %.not1.i.i = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.noexc.i
  %i.af = phi ptr [ %i.ah, %.noexc.i ], [ %i.ae, %bb.m ] ; 2 uses
  %.02.i.i = phi ptr [ %i.af, %.noexc.i ], [ %.val1.i, %bb.m ]
  %i.ag = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  invoke void %i.ag(ptr noundef nonnull %.02.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !35

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.ah = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i, !llvm.loop !34

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i: ; preds = %.noexc.i, %bb.m
  %.val.i7 = load ptr, ptr %i.l, align 8          ; 2 uses
  %i.ai = load ptr, ptr %.val.i7, align 8         ; 2 uses
  %.not1.i2.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i2.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, %.noexc6.i
  %i.aj = phi ptr [ %i.al, %.noexc6.i ], [ %i.ai, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ] ; 2 uses
  %.02.i4.i = phi ptr [ %i.aj, %.noexc6.i ], [ %.val.i7, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ]
  %i.ak = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  invoke void %i.ak(ptr noundef nonnull %.02.i4.i)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !35

.noexc6.i:                                        ; preds = %.lr.ph.i3.i
  %i.al = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i5.i = icmp eq ptr %i.al, null
  br i1 %.not.i5.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i, !llvm.loop !34

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i3.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.am) #49
  unreachable

_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit: ; preds = %.noexc6.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %bb.n

bb.n:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, %bb.f
  %.fca.0.load = load ptr, ptr %4, align 16
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { ptr, ptr } %.fca.1.insert

bb.o:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc { ptr, ptr } @_ZNK4pugi4impl12_GLOBAL__N_118xpath_node_set_raw5firstEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xpath_node", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %i.e, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

bb.f:                                             ; preds = %bb.c
  %.01.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not2.i.i = icmp eq ptr %.01.i.i, %i.d
  br i1 %.not2.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111min_elementIPKNS_10xpath_nodeENS1_25document_order_comparatorEEET_S7_S7_RKT0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.04.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.01.i.i, %bb.f ] ; 3 uses
  %.0103.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.b, %bb.f ] ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0103.i.i)
  %spec.select.i.i = select i1 %i.h, ptr %.04.i.i, ptr %.0103.i.i ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %i.d
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111min_elementIPKNS_10xpath_nodeENS1_25document_order_comparatorEEET_S7_S7_RKT0_.exit.i, label %.lr.ph.i.i, !llvm.loop !27

_ZN4pugi4impl12_GLOBAL__N_111min_elementIPKNS_10xpath_nodeENS1_25document_order_comparatorEEET_S7_S7_RKT0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.010.lcssa.i.i = phi ptr [ %i.b, %bb.f ], [ %spec.select.i.i, %.lr.ph.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.010.lcssa.i.i, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

bb.g:                                             ; preds = %bb.c
  call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit

_ZN4pugi4impl12_GLOBAL__N_111xpath_firstEPKNS_10xpath_nodeES4_NS_14xpath_node_set6type_tE.exit: ; preds = %bb.b, %bb.d, %bb.e, %_ZN4pugi4impl12_GLOBAL__N_111min_elementIPKNS_10xpath_nodeENS1_25document_order_comparatorEEET_S7_S7_RKT0_.exit.i, %bb.g
  %.fca.0.load.i = load ptr, ptr %1, align 8
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load.i = load ptr, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.fca.1.load.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4pugi11xpath_query6resultEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi11xpath_querycvPFvPPPS0_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr null, ptr @_ZN4pugiL28unspecified_bool_xpath_queryEPPPNS_11xpath_queryE
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4pugiL28unspecified_bool_xpath_queryEPPPNS_11xpath_queryE(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi11xpath_queryntEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi8xml_node11select_nodeEPKcPNS_18xpath_variable_setE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pugi::xpath_query", align 8 ; 7 uses
  %4 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call void @_ZN4pugi11xpath_queryC1EPKcPNS_18xpath_variable_setE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  invoke void @_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = invoke { ptr, ptr } @_ZNK4pugi11xpath_query13evaluate_nodeERKNS_10xpath_nodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @_ZN4pugi11xpath_queryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret { ptr, ptr } %i.a

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @_ZN4pugi11xpath_queryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi8xml_node11select_nodeERKNS_11xpath_queryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  call void @_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = call { ptr, ptr } @_ZNK4pugi11xpath_query13evaluate_nodeERKNS_10xpath_nodeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node12select_nodesEPKcPNS_18xpath_variable_setE(ptr dead_on_unwind noalias writable sret(%"class.pugi::xpath_node_set") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pugi::xpath_query", align 8 ; 7 uses
  %5 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @_ZN4pugi11xpath_queryC1EPKcPNS_18xpath_variable_setE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  invoke void @_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK4pugi11xpath_query17evaluate_node_setERKNS_10xpath_nodeE(ptr dead_on_unwind writable sret(%"class.pugi::xpath_node_set") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @_ZN4pugi11xpath_queryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @_ZN4pugi11xpath_queryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node12select_nodesERKNS_11xpath_queryE(ptr dead_on_unwind noalias writable sret(%"class.pugi::xpath_node_set") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call void @_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZNK4pugi11xpath_query17evaluate_node_setERKNS_10xpath_nodeE(ptr dead_on_unwind writable sret(%"class.pugi::xpath_node_set") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi8xml_node18select_single_nodeEPKcPNS_18xpath_variable_setE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pugi::xpath_query", align 8 ; 7 uses
  %4 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call void @_ZN4pugi11xpath_queryC1EPKcPNS_18xpath_variable_setE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  invoke void @_ZN4pugi10xpath_nodeC1ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = invoke { ptr, ptr } @_ZNK4pugi11xpath_query13evaluate_nodeERKNS_10xpath_nodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.c unwind label %bb.d

end_hunk_0
