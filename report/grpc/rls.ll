Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/rls?download=true
inline.NumInlined: 8216
inline.NumDeleted: 4032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest23OnRlsCallCompleteLockedEN4absl12lts_202505126StatusE:bb.a
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #42
  unreachable

_ZN4absl12lts_202505126StatusaSEOS1_.exit:        ; preds = %._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge, %bb.ae
  %i.cj = phi i64 [ %.pre, %._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge ], [ %i.cd, %bb.ae ] ; 2 uses
  %i.ck = trunc i64 %i.cj to i1
  br i1 %i.ck, label %_ZN4absl12lts_202505126StatusD2Ev.exit126, label %bb.ai

bb.ai:                                            ; preds = %_ZN4absl12lts_202505126StatusaSEOS1_.exit
  %i.cl = inttoptr i64 %i.cj to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cl)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit126 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #42
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit126:        ; preds = %bb.af, %_ZN4absl12lts_202505126StatusaSEOS1_.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  %i.co = load ptr, ptr %32, align 8, !tbaa !78   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bp
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit126
  %i.cq = load i64, ptr %i.bp, align 8, !tbaa !64
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  br label %bb.cq

bb.ak:                                            ; preds = %bb.cw, %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit, %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN9grpc_core12_GLOBAL__N_15RlsLb18ChildPolicyWrapperESaIS4_EED2Ev.exit279

bb.al:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #38
  br label %bb.an

bb.am:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn60 = phi { ptr, i32 } [ %i.cu, %bb.am ], [ %i.ct, %bb.al ]
  %i.cv = load ptr, ptr %32, align 8, !tbaa !78   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bp
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.an
  %i.cx = load i64, ptr %i.bp, align 8, !tbaa !64
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  br label %_ZNSt6vectorIPN9grpc_core12_GLOBAL__N_15RlsLb18ChildPolicyWrapperESaIS4_EED2Ev.exit279

bb.ao:                                            ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1097 ; 2 uses
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !506
  %.not.i133 = icmp eq ptr %i.dc, null            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.dg = select i1 %.not.i133, ptr %i.df, ptr %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.di = load i64, ptr %i.dh, align 8            ; 2 uses
  %i.dj = and i64 %i.di, 255
  %i.dk = select i1 %.not.i133, i64 %i.dj, i64 %i.di
  invoke void @_ZN4absl12lts_202505126StatusC1ENS0_10StatusCodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef %i.da, i64 %i.dk, ptr %i.dg)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.dl = load i64, ptr %31, align 8, !tbaa !134  ; 4 uses
  %i.dm = load i64, ptr %35, align 8, !tbaa !134  ; 2 uses
  %.not.i136 = icmp eq i64 %i.dm, %i.dl
  br i1 %.not.i136, label %_ZN4absl12lts_202505126StatusaSEOS1_.exit137, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.dm, ptr %31, align 8, !tbaa !134
  store i64 55, ptr %35, align 8, !tbaa !134
  %i.dn = trunc i64 %i.dl to i1
  br i1 %i.dn, label %_ZN4absl12lts_202505126StatusD2Ev.exit138, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.do = inttoptr i64 %i.dl to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.do)
          to label %._ZN4absl12lts_202505126StatusaSEOS1_.exit137_crit_edge unwind label %bb.at

._ZN4absl12lts_202505126StatusaSEOS1_.exit137_crit_edge: ; preds = %bb.as
  %.pre472 = load i64, ptr %35, align 8, !tbaa !134
  br label %_ZN4absl12lts_202505126StatusaSEOS1_.exit137

bb.at:                                            ; preds = %bb.as
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #42
  unreachable

_ZN4absl12lts_202505126StatusaSEOS1_.exit137:     ; preds = %._ZN4absl12lts_202505126StatusaSEOS1_.exit137_crit_edge, %bb.aq
  %i.dr = phi i64 [ %.pre472, %._ZN4absl12lts_202505126StatusaSEOS1_.exit137_crit_edge ], [ %i.dl, %bb.aq ] ; 2 uses
  %i.ds = trunc i64 %i.dr to i1
  br i1 %i.ds, label %_ZN4absl12lts_202505126StatusD2Ev.exit138, label %bb.au

bb.au:                                            ; preds = %_ZN4absl12lts_202505126StatusaSEOS1_.exit137
  %i.dt = inttoptr i64 %i.dr to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dt)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit138 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #42
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit138:        ; preds = %bb.ar, %_ZN4absl12lts_202505126StatusaSEOS1_.exit137, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  br label %bb.cq

bb.aw:                                            ; preds = %bb.ap
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  br label %_ZNSt6vectorIPN9grpc_core12_GLOBAL__N_15RlsLb18ChildPolicyWrapperESaIS4_EED2Ev.exit279

bb.ax:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  store i64 1, ptr %36, align 8, !tbaa !134, !alias.scope !1098
  %i.dx = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dx, i8 0, i64 56, i1 false), !alias.scope !1098
  %i.dy = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %_ZN3upb5ArenaC2Ev.exit.i unwind label %bb.bl, !noalias !1098 ; 8 uses

_ZN3upb5ArenaC2Ev.exit.i:                         ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38, !noalias !1098
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !505, !noalias !1098
  %i.eb = invoke i32 @grpc_byte_buffer_reader_init(ptr noundef nonnull %20, ptr noundef %i.ea)
          to label %bb.ay unwind label %bb.bm, !noalias !1098 ; 0 uses

bb.ay:                                            ; preds = %_ZN3upb5ArenaC2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38, !noalias !1098
  invoke void @grpc_byte_buffer_reader_readall(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %21, ptr noundef nonnull %20)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1098

bb.az:                                            ; preds = %bb.ay
  invoke void @grpc_byte_buffer_reader_destroy(ptr noundef nonnull %20)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1098

bb.ba:                                            ; preds = %bb.az
  %i.ec = load ptr, ptr %21, align 8, !tbaa !506, !noalias !1098
  %.not.i139 = icmp eq ptr %i.ec, null            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !1098
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 9
  %i.eh = select i1 %.not.i139, ptr %i.eg, ptr %i.ef
  %i.ei = load i64, ptr %i.ed, align 8, !noalias !1098 ; 2 uses
  %i.ej = and i64 %i.ei, 255
  %i.ek = select i1 %.not.i139, i64 %i.ej, i64 %i.ei
  %i.el = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__lookup__v1__RouteLookupResponse_msg_init, i64 8), align 8, !tbaa !521, !noalias !1098
  %i.em = zext i16 %i.el to i64                   ; 5 uses
  %i.en = and i64 %i.em, 7
  %i.eo = icmp eq i64 %i.en, 0
  call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !523, !noalias !1098
  %i.er = load ptr, ptr %i.dy, align 8, !tbaa !524, !noalias !1098 ; 4 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp ult i64 %i.eu, %i.em
  br i1 %i.ev, label %upb_Arena_Malloc.exit.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i, !prof !112

upb_Arena_Malloc.exit.thread.i.i.i.i:             ; preds = %bb.ba
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.em
  store ptr %i.ew, ptr %i.dy, align 8, !tbaa !524, !noalias !1098
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  br label %bb.bb

upb_Arena_Malloc.exit.i.i.i.i:                    ; preds = %bb.ba
  %i.ex = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.dy, i64 noundef %i.em)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1098 ; 2 uses

.noexc.i:                                         ; preds = %upb_Arena_Malloc.exit.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i, label %grpc_lookup_v1_RouteLookupResponse_parse.exit.i, label %bb.bb, !prof !1099

bb.bb:                                            ; preds = %.noexc.i, %upb_Arena_Malloc.exit.thread.i.i.i.i
  %.0.i11.i.i.i.i = phi ptr [ %i.er, %upb_Arena_Malloc.exit.thread.i.i.i.i ], [ %i.ex, %.noexc.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i.i, i8 0, i64 %i.em, i1 false), !noalias !1098
  %i.ey = invoke i32 @upb_Decode(ptr noundef %i.eh, i64 noundef %i.ek, ptr noundef nonnull %.0.i11.i.i.i.i, ptr noundef nonnull @grpc__lookup__v1__RouteLookupResponse_msg_init, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.dy)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1098

.noexc31.i:                                       ; preds = %bb.bb
  %.not8.i.i = icmp eq i32 %i.ey, 0
  %..i.i = select i1 %.not8.i.i, ptr %.0.i11.i.i.i.i, ptr null
  br label %grpc_lookup_v1_RouteLookupResponse_parse.exit.i

grpc_lookup_v1_RouteLookupResponse_parse.exit.i:  ; preds = %.noexc31.i, %.noexc.i
  %.0.i.i = phi ptr [ %..i.i, %.noexc31.i ], [ null, %.noexc.i ] ; 4 uses
  %i.ez = load ptr, ptr %21, align 8, !tbaa !506, !noalias !1098 ; 4 uses
  %i.fa = icmp ugt ptr %i.ez, inttoptr (i64 1 to ptr)
  br i1 %i.fa, label %bb.bc, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit.i

bb.bc:                                            ; preds = %grpc_lookup_v1_RouteLookupResponse_parse.exit.i
  %i.fb = atomicrmw add ptr %i.ez, i64 -1 acq_rel, align 8, !noalias !1098
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.bd, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !526, !noalias !1098
  invoke void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1098, !inline_history !47

_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit.i: ; preds = %bb.bd, %bb.bc, %grpc_lookup_v1_RouteLookupResponse_parse.exit.i
  %i.ff = icmp eq ptr %.0.i.i, null
  br i1 %i.ff, label %bb.be, label %bb.bo

bb.be:                                            ; preds = %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38, !noalias !1098
  invoke void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %22, i64 25, ptr nonnull @.str.168)
          to label %bb.bf unwind label %bb.bn, !noalias !1098

bb.bf:                                            ; preds = %bb.be
  %i.fg = load i64, ptr %36, align 8, !tbaa !134, !alias.scope !1098 ; 4 uses
  %i.fh = load i64, ptr %22, align 8, !tbaa !134, !noalias !1098 ; 2 uses
  %.not.i.i = icmp eq i64 %i.fh, %i.fg
  br i1 %.not.i.i, label %_ZN4absl12lts_202505126StatusaSEOS1_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i64 %i.fh, ptr %36, align 8, !tbaa !134, !alias.scope !1098
  store i64 55, ptr %22, align 8, !tbaa !134, !noalias !1098
  %i.fi = trunc i64 %i.fg to i1
  br i1 %i.fi, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fj = inttoptr i64 %i.fg to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fj)
          to label %._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge.i unwind label %bb.bi, !noalias !1098

._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge.i: ; preds = %bb.bh
  %.pre53.i = load i64, ptr %22, align 8, !tbaa !134, !noalias !1098
  br label %_ZN4absl12lts_202505126StatusaSEOS1_.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #42, !noalias !1098
  unreachable

_ZN4absl12lts_202505126StatusaSEOS1_.exit.i:      ; preds = %._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge.i, %bb.bf
  %i.fm = phi i64 [ %.pre53.i, %._ZN4absl12lts_202505126StatusaSEOS1_.exit_crit_edge.i ], [ %i.fg, %bb.bf ] ; 2 uses
  %i.fn = trunc i64 %i.fm to i1
  br i1 %i.fn, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN4absl12lts_202505126StatusaSEOS1_.exit.i
  %i.fo = inttoptr i64 %i.fm to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fo)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i unwind label %bb.bk, !noalias !1098

bb.bk:                                            ; preds = %bb.bj
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #42, !noalias !1098
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.bj, %_ZN4absl12lts_202505126StatusaSEOS1_.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38, !noalias !1098
  br label %bb.ce

bb.bl:                                            ; preds = %bb.ax
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3upb5ArenaD2Ev.exit40.i

bb.bm:                                            ; preds = %_ZN3upb5ArenaC2Ev.exit.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bn:                                            ; preds = %bb.be
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38, !noalias !1098
  br label %.loopexit.split-lp.i

bb.bo:                                            ; preds = %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.fv = load i64, ptr %i.fu, align 1, !noalias !1098 ; 2 uses
  %.not.i33.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i33.i, label %grpc_lookup_v1_RouteLookupResponse_targets.exit.thread.i, label %grpc_lookup_v1_RouteLookupResponse_targets.exit.i

grpc_lookup_v1_RouteLookupResponse_targets.exit.i: ; preds = %bb.bo
  %i.fw = inttoptr i64 %i.fv to ptr               ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !1101, !noalias !1098 ; 6 uses
  %i.fz = load i64, ptr %i.fw, align 8, !tbaa !1102, !noalias !1098
  %i.ga = and i64 %i.fz, -8
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = icmp eq i64 %i.fy, 0
  br i1 %i.gc, label %grpc_lookup_v1_RouteLookupResponse_targets.exit.thread.i, label %bb.bw

grpc_lookup_v1_RouteLookupResponse_targets.exit.thread.i: ; preds = %grpc_lookup_v1_RouteLookupResponse_targets.exit.i, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38, !noalias !1098
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %23, i64 32, ptr nonnull @.str.169)
          to label %bb.bp unwind label %bb.bv, !noalias !1098

bb.bp:                                            ; preds = %grpc_lookup_v1_RouteLookupResponse_targets.exit.thread.i
  %i.gd = load i64, ptr %36, align 8, !tbaa !134, !alias.scope !1098 ; 4 uses
  %i.ge = load i64, ptr %23, align 8, !tbaa !134, !noalias !1098 ; 2 uses
  %.not.i35.i = icmp eq i64 %i.ge, %i.gd
  br i1 %.not.i35.i, label %_ZN4absl12lts_202505126StatusaSEOS1_.exit36.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i64 %i.ge, ptr %36, align 8, !tbaa !134, !alias.scope !1098
  store i64 55, ptr %23, align 8, !tbaa !134, !noalias !1098
  %i.gf = trunc i64 %i.gd to i1
  br i1 %i.gf, label %_ZN4absl12lts_202505126StatusD2Ev.exit37.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gg = inttoptr i64 %i.gd to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gg)
          to label %._ZN4absl12lts_202505126StatusaSEOS1_.exit36_crit_edge.i unwind label %bb.bs, !noalias !1098

._ZN4absl12lts_202505126StatusaSEOS1_.exit36_crit_edge.i: ; preds = %bb.br
  %.pre.i = load i64, ptr %23, align 8, !tbaa !134, !noalias !1098
  br label %_ZN4absl12lts_202505126StatusaSEOS1_.exit36.i

bb.bs:                                            ; preds = %bb.br
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #42, !noalias !1098
  unreachable

_ZN4absl12lts_202505126StatusaSEOS1_.exit36.i:    ; preds = %._ZN4absl12lts_202505126StatusaSEOS1_.exit36_crit_edge.i, %bb.bp
  %i.gj = phi i64 [ %.pre.i, %._ZN4absl12lts_202505126StatusaSEOS1_.exit36_crit_edge.i ], [ %i.gd, %bb.bp ] ; 2 uses
  %i.gk = trunc i64 %i.gj to i1
  br i1 %i.gk, label %_ZN4absl12lts_202505126StatusD2Ev.exit37.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN4absl12lts_202505126StatusaSEOS1_.exit36.i
  %i.gl = inttoptr i64 %i.gj to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gl)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit37.i unwind label %bb.bu, !noalias !1098

bb.bu:                                            ; preds = %bb.bt
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #42, !noalias !1098
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit37.i:       ; preds = %bb.bt, %_ZN4absl12lts_202505126StatusaSEOS1_.exit36.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38, !noalias !1098
  br label %bb.ce

bb.bv:                                            ; preds = %grpc_lookup_v1_RouteLookupResponse_targets.exit.thread.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38, !noalias !1098
  br label %.loopexit.split-lp.i

bb.bw:                                            ; preds = %grpc_lookup_v1_RouteLookupResponse_targets.exit.i
  %i.gp = icmp ugt i64 %i.fy, 288230376151711743
  br i1 %i.gp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #40
          to label %.noexc285 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc285:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bw
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIN9grpc_core25EndpointAddressesIteratorEEE12AssignStatusIRKNS0_6StatusEEEvOT_:bb.a
  %.pr = load i64, ptr %0, align 8, !tbaa !134
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split
  %i.ah = phi i64 [ %.pr, %_ZN4absl12lts_202505126StatusD2Ev.exitthread-pre-split ], [ %i.t, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit ]
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIN9grpc_core25EndpointAddressesIteratorEEE11EnsureNotOkEv.exit, !prof !112

bb.n:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  tail call void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIN9grpc_core25EndpointAddressesIteratorEEE11EnsureNotOkEv.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIN9grpc_core25EndpointAddressesIteratorEEE11EnsureNotOkEv.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.n
  ret void
}

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #3

; Function Attrs: uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest9StartCallEPvNS0_6StatusEE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE"(ptr nofree noundef readonly captures(none) %0) #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.grpc_slice, align 8         ; 6 uses
  %2 = alloca %"class.grpc_core::Slice", align 8  ; 8 uses
  %3 = alloca %"class.std::optional.798", align 8 ; 6 uses
  %4 = alloca %"class.std::optional.808", align 8 ; 4 uses
  %5 = alloca [6 x %struct.grpc_op], align 16     ; 15 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1233   ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %.val31.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.e = getelementptr inbounds nuw i8, ptr %.val31.i.i.i.i.i.i, i64 88 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.val30.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.f = getelementptr inbounds nuw i8, ptr %.val30.i.i.i.i.i.i, i64 96
  %i.g = load i8, ptr %i.f, align 8, !tbaa !293, !range !109, !noundef !110
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #42
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.j = trunc nuw i8 %i.g to i1
  br i1 %i.j, label %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest15StartCallLockedEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
  br label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i

_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i:   ; preds = %bb.d, %bb.c
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !425  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !1225 ; 6 uses
  %.val29.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.p = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i.i.i, i64 328
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !217
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !74 ; 5 uses
  %i.s = icmp eq i64 %i.o, 9223372036854775807
  %i.t = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 9223372036854775807
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i
  %i.u = icmp eq i64 %i.o, -9223372036854775808
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -9223372036854775808
  %or.cond9.i.i.i.i.i.i.i.i = or i1 %i.u, %i.v
  br i1 %or.cond9.i.i.i.i.i.i.i.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp sgt i64 %i.o, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = sub nuw nsw i64 9223372036854775807, %i.o
  %i.y = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %i.x
  br i1 %i.y, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = sub nsw i64 -9223372036854775808, %i.o
  %i.aa = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %i.z
  br i1 %i.aa, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = add nsw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %i.o
  br label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i

_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.e ], [ 9223372036854775807, %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i.i.i.i ], [ -9223372036854775808, %bb.h ], [ %i.ab, %bb.i ], [ 9223372036854775807, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  store i64 %.0.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 2 uses
  tail call void @grpc_metadata_array_init(ptr noundef nonnull %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  tail call void @grpc_metadata_array_init(ptr noundef nonnull %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val33.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !380
  %i.ag = getelementptr i8, ptr %.val33.i.i.i.i.i.i, i64 32
  %.val34.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !377 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !347
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !534
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !tbaa !489, !alias.scope !1234
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 46, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1234
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.201, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1234
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i8 0, ptr %i.aj, align 8, !tbaa !546
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.ak, align 8, !tbaa !1236
  %i.al = load ptr, ptr %.val34.i.i.i.i.i.i, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(152) %.val34.i.i.i.i.i.i, ptr noundef null, i32 noundef 65535, ptr noundef null, ptr noundef %i.ai, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %3, i64 %.sroa.0.0.copyload.i.i.i.i.i.i, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.std::optional.808") align 8 %4)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !517
  %i.aq = load i8, ptr %i.aj, align 8, !tbaa !546, !range !109, !noundef !110
  %i.ar = trunc nuw i8 %i.aq to i1
  store i8 0, ptr %i.aj, align 8, !tbaa !546
  br i1 %i.ar, label %bb.k, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %3, align 8, !tbaa !506   ; 4 uses
  %i.at = icmp ugt ptr %i.as, inttoptr (i64 1 to ptr)
  br i1 %i.at, label %bb.l, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.au = atomicrmw add ptr %i.as, i64 -1 acq_rel, align 8
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.m, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !526
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit.i.i.i.i.i.i unwind label %bb.n, !inline_history !47

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #42
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ba = load ptr, ptr %2, align 8, !tbaa !506   ; 4 uses
  %i.bb = icmp ugt ptr %i.ba, inttoptr (i64 1 to ptr)
  br i1 %i.bb, label %bb.o, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit.i.i.i.i.i.i
  %i.bc = atomicrmw add ptr %i.ba, i64 -1 acq_rel, align 8
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.p, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !526
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i unwind label %bb.q, !inline_history !47

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #42
  unreachable

_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i:         ; preds = %bb.p, %bb.o, %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %5, i8 0, i64 480, i1 false)
  store i32 1, ptr %i.bi, align 16, !tbaa !1239
  %i.bj = call ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global) ; 8 uses
  %i.bk = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__lookup__v1__RouteLookupRequest_msg_init, i64 8), align 8, !tbaa !521
  %i.bl = zext i16 %i.bk to i64                   ; 5 uses
  %i.bm = and i64 %i.bl, 7
  %i.bn = icmp eq i64 %i.bm, 0
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !523
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !524 ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ult i64 %i.bt, %i.bl
  br i1 %i.bu, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i, !prof !112

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i:   ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl
  store ptr %i.bv, ptr %i.bj, align 8, !tbaa !524
  br label %.noexc.i.i.i.i.i.i.i.a

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i:          ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i.i.i
  %i.bw = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.bj, i64 noundef %i.bl)
          to label %.noexc.i.i.i.i.i.i.i.a unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i.i.i.i.i.a:                           ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.bq, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.bw, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i.i) ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink.i.i.i.i.i.i.i, i8 0, i64 %i.bl, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i, i64 16
  store ptr @_ZN9grpc_core12_GLOBAL__N_15kGrpcE, ptr %i.bx, align 1
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i, i64 24
  store i64 4, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !102 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.not52.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not52.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.a, %bb.r
  %.sroa.043.053.i.i.i.i.i.i.i = phi ptr [ %i.ck, %bb.r ], [ %i.bz, %.noexc.i.i.i.i.i.i.i.a ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.043.053.i.i.i.i.i.i.i, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.043.053.i.i.i.i.i.i.i, i64 64
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !78
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.043.053.i.i.i.i.i.i.i, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !79
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !78
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.043.053.i.i.i.i.i.i.i, i64 72
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !79
  %i.cj = invoke zeroext i1 @grpc_lookup_v1_RouteLookupRequest_key_map_set(ptr noundef nonnull %.sink.i.i.i.i.i.i.i, ptr %i.cd, i64 %i.cf, ptr %i.cg, i64 %i.ci, ptr noundef nonnull %i.bj)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ck = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.043.053.i.i.i.i.i.i.i) #43 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.ca
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.r, %.noexc.i.i.i.i.i.i.i.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !504
  %i.cn = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i, i64 8
  store i32 %i.cm, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !506
  %.not.i.i32.i.i.i.i.i.i.i = icmp eq ptr %i.cp, null ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = and i64 %i.cr, 255
  %i.ct = select i1 %.not.i.i32.i.i.i.i.i.i.i, i64 %i.cs, i64 %i.cr ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 105
  %i.cy = select i1 %.not.i.i32.i.i.i.i.i.i.i, ptr %i.cx, ptr %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i, i64 32
  store ptr %i.cy, ptr %i.cz, align 1
  %.sroa.56.0..sroa_idx.i36.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i, i64 40
  store i64 %i.ct, ptr %.sroa.56.0..sroa_idx.i36.i.i.i.i.i.i.i, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.da = invoke i32 @upb_Encode(ptr noundef nonnull %.sink.i.i.i.i.i.i.i, ptr noundef nonnull @grpc__lookup__v1__RouteLookupRequest_msg_init, i32 noundef 0, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.u unwind label %bb.ab      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !74
  invoke void @grpc_slice_from_copied_buffer(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %1, ptr noundef %i.db, i64 noundef %i.dc)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.dd = invoke ptr @grpc_raw_byte_buffer_create(ptr noundef nonnull %1, i64 noundef 1)
          to label %bb.w unwind label %bb.ac      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.de = load ptr, ptr %1, align 8, !tbaa !506   ; 4 uses
  %i.df = icmp ugt ptr %i.de, inttoptr (i64 1 to ptr)
  br i1 %i.df, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dg = atomicrmw add ptr %i.de, i64 -1 acq_rel, align 8
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !526
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.de)
          to label %bb.z unwind label %bb.ac, !inline_history !47

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.bj)
          to label %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest16MakeRequestProtoEv.exit.i.i.i.i.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #42
  unreachable

bb.ab:                                            ; preds = %bb.t
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.v, %bb.u
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.ac ], [ %i.dm, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  br label %.loopexit.split-lp.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad
  %.pn28.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i.i.i, %bb.ad ], [ %lpad.loopexit.split-lp12, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @upb_Arena_Free(ptr noundef nonnull %i.bj)
          to label %common.resume.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #42
  unreachable

common.resume.i.i.i.i.i.i:                        ; preds = %bb.ag, %.loopexit.split-lp.i.i.i.i.i.i.i
  %common.resume.op.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ek, %bb.ag ], [ %.pn28.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i.i

_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest16MakeRequestProtoEv.exit.i.i.i.i.i.i: ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr %i.dd, ptr %i.dq, align 8, !tbaa !527
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %i.dd, ptr %i.dr, align 16, !tbaa !64
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i32 2, ptr %i.ds, align 16, !tbaa !1239
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 240
  store i32 4, ptr %i.dt, align 16, !tbaa !1239
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 256
  store ptr %i.ad, ptr %i.du, align 16, !tbaa !64
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 320
  store i32 5, ptr %i.dv, align 16, !tbaa !1239
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 336
  store ptr %i.dw, ptr %i.dx, align 16, !tbaa !64
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 400
  store i32 6, ptr %i.dy, align 16, !tbaa !1239
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 416
  store ptr %i.ae, ptr %i.dz, align 16, !tbaa !64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 424
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 432
  store ptr %i.ec, ptr %i.ed, align 16, !tbaa !64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ef = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8, !noalias !1240 ; 0 uses
  %i.eg = load ptr, ptr %i.ap, align 8, !tbaa !517
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ei = call noundef i32 @_Z33grpc_call_start_batch_and_executeP9grpc_callPK7grpc_opmP12grpc_closure(ptr noundef %i.eg, ptr noundef nonnull %5, i64 noundef 6, ptr noundef nonnull %i.eh) ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.af, label %bb.ah, !prof !137

bb.af:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest16MakeRequestProtoEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest15StartCallLockedEv.exit.i.i.i.i.i

bb.ag:                                            ; preds = %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i.i.i.i.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #38
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #38
  br label %common.resume.i.i.i.i.i.i

bb.ah:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest16MakeRequestProtoEv.exit.i.i.i.i.i.i
  %i.el = zext i32 %i.ei to i64
  %i.em = call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.el, i64 noundef 0, ptr noundef nonnull @.str.200)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.114, i32 noundef 1711, ptr noundef nonnull %i.em) #44
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i.i.i unwind label %bb.ai

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i.i.i: ; preds = %bb.ah
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #42
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #42
  unreachable

_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest15StartCallLockedEv.exit.i.i.i.i.i: ; preds = %bb.af, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.eo = load ptr, ptr %0, align 8, !tbaa !1233  ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = atomicrmw add ptr %i.ep, i64 -1 acq_rel, align 8
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.aj, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest9StartCallEPvNS0_6StatusEE3$_0JEEET_OT0_DpOT1_.exit", !prof !112

bb.aj:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest15StartCallLockedEv.exit.i.i.i.i.i
  call void @_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.eo) #38
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 noundef 312) #41
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest9StartCallEPvNS0_6StatusEE3$_0JEEET_OT0_DpOT1_.exit"

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest9StartCallEPvNS0_6StatusEE3$_0JEEET_OT0_DpOT1_.exit": ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest15StartCallLockedEv.exit.i.i.i.i.i, %bb.aj
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable19LocalManagerTrivialENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #4 comdat {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1241
  ret void
}

declare void @grpc_metadata_array_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !546, !range !109, !noundef !110
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !546
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !506    ; 4 uses
  %i.e = icmp ugt ptr %i.d, inttoptr (i64 1 to ptr)
  br i1 %i.e, label %bb.c, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !526
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit unwind label %bb.e, !inline_history !47

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #42
  unreachable

_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !506    ; 4 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.a, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !526
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit unwind label %bb.d, !inline_history !47

_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit: ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #42
  unreachable
}

declare noundef i32 @_Z33grpc_call_start_batch_and_executeP9grpc_callPK7grpc_opmP12grpc_closure(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr zeroext i1 @grpc_lookup_v1_RouteLookupRequest_key_map_set(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #16 comdat {
bb.a:
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__lookup__v1__RouteLookupRequest__KeyMapEntry_msg_init) #38, !srcloc !1242
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 1              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i, label %_upb_Message_GetOrCreateMutableMap.exit

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i: ; preds = %bb.a
  %i.d = tail call ptr @_upb_Map_New(ptr noundef %5, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %i.a, align 1
  br label %_upb_Message_GetOrCreateMutableMap.exit

_upb_Message_GetOrCreateMutableMap.exit:          ; preds = %bb.a, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  %.0.i = phi ptr [ %i.c, %bb.a ], [ %i.d, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !523
  %i.h = load ptr, ptr %5, align 8, !tbaa !524    ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 16
  br i1 %i.l, label %upb_Arena_Malloc.exit.i.i, label %bb.b, !prof !112

upb_Arena_Malloc.exit.i.i:                        ; preds = %_upb_Message_GetOrCreateMutableMap.exit
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %5, i64 noundef 16) ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_upb_Map_Insert.exit, label %.thread19.i.i

.thread19.i.i:                                    ; preds = %upb_Arena_Malloc.exit.i.i
  store ptr %3, ptr %i.m, align 8, !tbaa !75
  %.sroa.310.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %4, ptr %.sroa.310.0..sroa_idx11, align 8, !tbaa !74
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.c

bb.b:                                             ; preds = %_upb_Message_GetOrCreateMutableMap.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.o, ptr %5, align 8, !tbaa !524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %3, ptr %i.h, align 8, !tbaa !75
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %4, ptr %.sroa.310.0..sroa_idx, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread19.i.i
  %.sroa.0.i.0 = phi i64 [ %i.n, %.thread19.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1244, !range !109, !noundef !110
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 4 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @upb_strtable_remove2(ptr noundef nonnull %i.s, ptr noundef %1, i64 noundef %2, ptr noundef null) ; 0 uses
  %i.u = tail call zeroext i1 @upb_strtable_insert(ptr noundef nonnull %i.s, ptr noundef %1, i64 noundef %2, i64 %.sroa.0.i.0, ptr noundef nonnull %5)
  br i1 %i.u, label %bb.f, label %_upb_Map_Insert.exit

bb.e:                                             ; preds = %bb.c
  %i.v = tail call zeroext i1 @upb_inttable_remove(ptr noundef nonnull %i.s, i64 noundef 0, ptr noundef null) ; 0 uses
  %i.w = tail call zeroext i1 @upb_inttable_insert(ptr noundef nonnull %i.s, i64 noundef 0, i64 %.sroa.0.i.0, ptr noundef nonnull %5)
  br i1 %i.w, label %bb.f, label %_upb_Map_Insert.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_upb_Map_Insert.exit

_upb_Map_Insert.exit:                             ; preds = %upb_Arena_Malloc.exit.i.i, %bb.d, %bb.e, %bb.f
  %.3.i = phi i1 [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.d ], [ false, %upb_Arena_Malloc.exit.i.i ]
  ret i1 %.3.i
}

declare ptr @grpc_raw_byte_buffer_create(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @_upb_Map_New(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @upb_strtable_remove2(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @upb_strtable_insert(ptr noundef, ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @upb_inttable_remove(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @upb_inttable_insert(ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #3

declare i32 @upb_Encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z25grpc_call_cancel_internalP9grpc_call(ptr noundef) local_unnamed_addr #3

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsChannelD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(5240) dereferenceable(5240) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !513  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5232
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !481  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !514  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !483
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef 512) #41
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i, !llvm.loop !51

_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !513
  br label %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i

_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i ], [ %i.b, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.n = load i64, ptr %i.m, align 8, !tbaa !512
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #41
  br label %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EED2Ev.exit.i

_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EED2Ev.exit.i: ; preds = %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5080 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !513  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsChannel8ThrottleD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5152
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !481  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !514  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i3.i, label %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i2.i

.lr.ph.i.i.i3.i:                                  ; preds = %bb.c, %.lr.ph.i.i.i3.i
  %.06.i.i.i4.i = phi ptr [ %i.y, %.lr.ph.i.i.i3.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.x = load ptr, ptr %.06.i.i.i4.i, align 8, !tbaa !483
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef 512) #41
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i4.i, i64 8
  %i.z = icmp ult ptr %.06.i.i.i4.i, %i.u
  br i1 %i.z, label %.lr.ph.i.i.i3.i, label %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i5.i, !llvm.loop !51

_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i5.i: ; preds = %.lr.ph.i.i.i3.i
  %.pre.i.i6.i = load ptr, ptr %i.p, align 8, !tbaa !513
  br label %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i2.i

_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i2.i: ; preds = %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i5.i, %bb.c
  %i.aa = phi ptr [ %.pre.i.i6.i, %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i5.i ], [ %i.q, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5088
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !512
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #41
  br label %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsChannel8ThrottleD2Ev.exit

_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsChannel8ThrottleD2Ev.exit: ; preds = %_ZNSt5dequeIN9grpc_core9TimestampESaIS1_EED2Ev.exit.i, %_ZNSt11_Deque_baseIN9grpc_core9TimestampESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i2.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !378 ; 6 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsChannel8ThrottleD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = atomicrmw add ptr %i.ag, i64 -4294967295 acq_rel, align 8
  %.mask.i.i = and i64 %i.ah, -4294967296
  %i.ai = icmp eq i64 %.mask.i.i, 4294967296
  br i1 %i.ai, label %bb.e, label %.noexc.i, !prof !112

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %.noexc.i unwind label %bb.g, !inline_history !33

.noexc.i:                                         ; preds = %bb.e, %bb.d
  %i.am = atomicrmw add ptr %i.ag, i64 -1 acq_rel, align 8
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.f, label %_ZN9grpc_core13RefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit, !prof !112

bb.f:                                             ; preds = %.noexc.i
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(232) %i.af) #38, !inline_history !1245
  br label %_ZN9grpc_core13RefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #42
  unreachable

_ZN9grpc_core13RefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit: ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsChannel8ThrottleD2Ev.exit, %.noexc.i, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !377 ; 6 uses
  %.not.i1 = icmp eq ptr %i.au, null
  br i1 %.not.i1, label %_ZN9grpc_core13RefCountedPtrINS_7ChannelEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9grpc_core13RefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = atomicrmw add ptr %i.av, i64 -4294967295 acq_rel, align 8
  %.mask.i.i2 = and i64 %i.aw, -4294967296
  %i.ax = icmp eq i64 %.mask.i.i2, 4294967296
  br i1 %i.ax, label %bb.i, label %.noexc.i3, !prof !112

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %.noexc.i3 unwind label %bb.k, !inline_history !52

.noexc.i3:                                        ; preds = %bb.i, %bb.h
  %i.bb = atomicrmw add ptr %i.av, i64 -1 acq_rel, align 8
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.j, label %_ZN9grpc_core13RefCountedPtrINS_7ChannelEED2Ev.exit, !prof !112

bb.j:                                             ; preds = %.noexc.i3
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #38, !inline_history !1246
  br label %_ZN9grpc_core13RefCountedPtrINS_7ChannelEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #42
  unreachable
end_hunk_1
