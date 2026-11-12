Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/validator?download=true
inline.NumInlined: 3475
inline.NumDeleted: 1304
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST6ModuleE:bb.a
  store i8 0, ptr %0, align 4, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 376
  call void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST14ElementSectionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %38, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.bv)
  %.val42 = load i8, ptr %38, align 4, !tbaa !20, !range !21, !noundef !22
  %i.bw = getelementptr inbounds nuw i8, ptr %38, i64 4
  %.val43 = load i32, ptr %i.bw, align 4
  call fastcc void @"_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_9Validator9Validator8validateERKNS1_3AST6ModuleEE3$_9EEDaOT_"(ptr dead_on_unwind noalias writable align 4 %37, i8 %.val42, i32 %.val43)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  %i.bx = load i8, ptr %37, align 4, !tbaa !20, !range !21, !noundef !22
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  br label %bb.ad

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 456
  call void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST11DataSectionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %40, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.cc)
  %.val44 = load i8, ptr %40, align 4, !tbaa !20, !range !21, !noundef !22
  %i.cd = getelementptr inbounds nuw i8, ptr %40, i64 4
  %.val45 = load i32, ptr %i.cd, align 4
  call fastcc void @"_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_9Validator9Validator8validateERKNS1_3AST6ModuleEE4$_10EEDaOT_"(ptr dead_on_unwind noalias writable align 4 %39, i8 %.val44, i32 %.val45)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  %i.ce = load i8, ptr %39, align 4, !tbaa !20, !range !21, !noundef !22
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %39, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 416
  call void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST11CodeSectionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %42, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.cj)
  %.val46 = load i8, ptr %42, align 4, !tbaa !20, !range !21, !noundef !22
  %i.ck = getelementptr inbounds nuw i8, ptr %42, i64 4
  %.val47 = load i32, ptr %i.ck, align 4
  call fastcc void @"_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_9Validator9Validator8validateERKNS1_3AST6ModuleEE4$_11EEDaOT_"(ptr dead_on_unwind noalias writable align 4 %41, i8 %.val46, i32 %.val47)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  %i.cl = load i8, ptr %41, align 4, !tbaa !20, !range !21, !noundef !22
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !20
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !38
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !39
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 12
  %i.cy = icmp ugt i64 %i.cx, 1
  br i1 %i.cy, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cz = tail call noundef zeroext i1 @_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE(ptr noundef nonnull align 8 dereferenceable(168) %1, i8 noundef zeroext 5) #19
  br i1 %i.cz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 533, ptr %i.a, align 4, !tbaa !41
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrCode5ValueEEEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  store i8 5, ptr %43, align 1, !tbaa !44
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrInfo12InfoProposalEEEvRKT_(ptr noundef nonnull align 1 dereferenceable(1) %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  store i8 0, ptr %44, align 1, !tbaa !25
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrInfo7InfoASTEEEvRKT_(ptr noundef nonnull align 1 dereferenceable(1) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  store i8 0, ptr %0, align 4, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 533, ptr %i.da, align 4, !tbaa !26
  br label %bb.ad

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !46
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !47
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp ugt i64 %i.dh, 1
  br i1 %i.di, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dj = tail call noundef zeroext i1 @_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE(ptr noundef nonnull align 8 dereferenceable(168) %1, i8 noundef zeroext 11) #19
  br i1 %i.dj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 534, ptr %i.b, align 4, !tbaa !41
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrCode5ValueEEEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  store i8 11, ptr %45, align 1, !tbaa !44
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrInfo12InfoProposalEEEvRKT_(ptr noundef nonnull align 1 dereferenceable(1) %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  store i8 0, ptr %46, align 1, !tbaa !25
  call void @_ZN6spdlog5errorIN8WasmEdge7ErrInfo7InfoASTEEEvRKT_(ptr noundef nonnull align 1 dereferenceable(1) %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  store i8 0, ptr %0, align 4, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 534, ptr %i.dk, align 4, !tbaa !26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 704
  store i8 1, ptr %i.dl, align 8, !tbaa !435
  store i64 1, ptr %0, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d, %bb.b, %bb.ac, %bb.ab, %bb.y
  ret void
}

declare void @_ZN8WasmEdge9Validator11FormChecker5resetEb(ptr noundef nonnull align 8 dereferenceable(376), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST11TypeSectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.386", align 16 ; 5 uses
  %5 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %8 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %9 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %10 = alloca %"class.cxx20::expected", align 4  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !451  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !452  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 144
  %.not82 = icmp eq ptr %i.d, %i.b
  br i1 %.not82, label %._crit_edge, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph81, %.loopexit
  %i.m = phi i64 [ 0, %.lr.ph81 ], [ %i.bp, %.loopexit ]
  %.04180 = phi i32 [ 0, %.lr.ph81 ], [ %.344, %.loopexit ] ; 5 uses
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.m ; 5 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %.sroa.22.0.copyload.i = load i8, ptr %.sroa.22.0..sroa_idx.i, align 8
  %i.o = trunc nuw i8 %.sroa.22.0.copyload.i to i1
  br i1 %i.o, label %bb.c, label %.preheader75

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %.sroa.01.0.copyload.i = load i64, ptr %i.p, align 8
  %.sroa.066.4.extract.shift = lshr i64 %.sroa.01.0.copyload.i, 32
  %.sroa.066.4.extract.trunc = trunc nuw i64 %.sroa.066.4.extract.shift to i32
  %i.q = add i32 %.04180, %.sroa.066.4.extract.trunc ; 5 uses
  %i.r = icmp ult i32 %.04180, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = zext i32 %.04180 to i64
  %wide.trip.count = zext i32 %i.q to i64
  br label %.lr.ph

.lr.ph79.preheader:                               ; preds = %.lr.ph
  %i.t = zext i32 %.04180 to i64
  %wide.trip.count88 = zext i32 %i.q to i64
  br label %.lr.ph79

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.s, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %indvars.iv
  tail call void @_ZN8WasmEdge9Validator11FormChecker7addTypeERKNS_3AST7SubTypeE(ptr noundef nonnull align 8 dereferenceable(376) %i.j, ptr noundef nonnull align 8 dereferenceable(140) %i.u)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph79.preheader, label %.lr.ph, !llvm.loop !436

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.critedge
  %indvars.iv85 = phi i64 [ %i.t, %.lr.ph79.preheader ], [ %indvars.iv.next86, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.v = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %indvars.iv85
  call void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST7SubTypeE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %8, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr noundef nonnull align 8 dereferenceable(140) %i.v)
  %.val = load i8, ptr %8, align 4, !tbaa !20, !range !21, !noundef !22
  %.val53 = load i32, ptr %i.l, align 4
  %i.w = trunc nuw i8 %.val to i1
  br i1 %i.w, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph79
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !453
  store i8 22, ptr %7, align 1, !tbaa !25, !noalias !453
  %i.x = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !453 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !453
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load atomic i32, ptr %i.y monotonic, align 4, !noalias !453
  %i.aa = icmp slt i32 %i.z, 5                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.ac = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ab), !noalias !453 ; 2 uses
  %or.cond.i = or i1 %i.aa, %i.ac
  br i1 %or.cond.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !453
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.af, align 8, !noalias !453
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.ae, align 8, !tbaa !83, !noalias !453
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !84, !noalias !453
  store i64 250, ptr %i.ad, align 8, !tbaa !85, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !453
  %i.ah = ptrtoint ptr %7 to i64
  %.sroa.2.0.insert.ext.i.i = zext i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7ErrInfo7InfoASTENS0_9formatterIS8_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_ to i64) to i128
  %.sroa.2.0.insert.shift.i.i = shl nuw i128 %.sroa.2.0.insert.ext.i.i, 64
  %.sroa.01.0.insert.ext.i.i = zext i64 %i.ah to i128
  %.sroa.01.0.insert.insert.i.i = or disjoint i128 %.sroa.2.0.insert.shift.i.i, %.sroa.01.0.insert.ext.i.i
  store i128 %.sroa.01.0.insert.insert.i.i, ptr %4, align 16, !noalias !453
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.11, i64 2, i64 15, ptr nonnull %4, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.i unwind label %bb.i, !noalias !453

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !453
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88, !noalias !453
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !89, !noalias !453
  %i.am = load ptr, ptr %3, align 8, !tbaa !84, !noalias !453
  %i.an = load i64, ptr %i.af, align 8, !tbaa !90, !noalias !453
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, ptr %i.aj, i64 %i.al, i32 noundef 4, ptr %i.am, i64 %i.an)
          to label %bb.f unwind label %bb.j, !noalias !453

bb.f:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.i
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(96) %5, i1 noundef zeroext %i.aa, i1 noundef zeroext %i.ac)
          to label %bb.g unwind label %bb.j, !noalias !453

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !453
  %i.ao = load ptr, ptr %3, align 8, !tbaa !84, !noalias !453 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.ag
  br i1 %.not.i.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !85, !noalias !453
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ap) #20, !noalias !453
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !453
  br label %.thread

bb.i:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !453
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !453
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.aq, %bb.i ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !84, !noalias !453 ; 2 uses
  %.not.i.i15.i = icmp eq ptr %i.as, %i.ag
  br i1 %.not.i.i15.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i64, ptr %i.ad, align 8, !tbaa !85, !noalias !453
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.at) #20, !noalias !453
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !453
  resume { ptr, i32 } %.pn.i

.thread:                                          ; preds = %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  store i8 0, ptr %0, align 4, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.val53, ptr %i.au, align 4, !tbaa !26
  br label %.critedge52

.critedge:                                        ; preds = %.lr.ph79
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.loopexit, label %.lr.ph79, !llvm.loop !449

.preheader75:                                     ; preds = %bb.b, %.preheader75
  %i.av = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %1) #19
  switch i32 %i.av, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit [
    i32 11, label %.preheader75
    i32 35, label %bb.m
  ]

bb.m:                                             ; preds = %.preheader75
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #21
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #22
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit: ; preds = %.preheader75
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !92
  %i.az = and i64 %i.ay, 1024
  %.not = icmp eq i64 %i.az, 0
  %i.ba = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %1) #19 ; 0 uses
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit
  tail call void @_ZN8WasmEdge9Validator11FormChecker7addTypeERKNS_3AST7SubTypeE(ptr noundef nonnull align 8 dereferenceable(376) %i.j, ptr noundef nonnull align 8 dereferenceable(140) %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !454
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94
  call void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST7SubTypeE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %9, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr noundef nonnull align 8 dereferenceable(140) %i.bd)
  %i.be = load i8, ptr %9, align 4, !tbaa !20, !range !21, !noundef !22
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.critedge48, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.critedge52

bb.q:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST7SubTypeE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %10, ptr noundef nonnull align 8 dereferenceable(624) %1, ptr noundef nonnull align 8 dereferenceable(140) %i.n)
  %i.bj = load i8, ptr %10, align 4, !tbaa !20, !range !21, !noundef !22
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.critedge50, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !26
  store i8 0, ptr %0, align 4, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
end_hunk_0
