inline.NumInlined: 1010
inline.NumDeleted: 534
begin_hunk_0_@_ZN6google8protobuf8compiler28SourceTreeDescriptorDatabase14FindFileByNameESt17basic_string_viewIcSt11char_traitsIcEEPNS0_19FileDescriptorProtoE:bb.a
bb.w:                                             ; preds = %bb.s, %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !42, !range !72, !noundef !73
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !74
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = or i32 %i.bp, 256
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !75 ; 3 uses
  %i.bu = trunc i64 %i.bt to i1
  br i1 %i.bu, label %bb.z, label %bb.aa, !prof !77

bb.z:                                             ; preds = %bb.y
  %i.bv = add nsw i64 %i.bt, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !78
  br label %.noexc

bb.aa:                                            ; preds = %bb.y
  %i.by = inttoptr i64 %i.bt to ptr
  br label %.noexc

.noexc:                                           ; preds = %bb.aa, %bb.z
  %.0.i.i = phi ptr [ %i.bx, %bb.z ], [ %i.by, %bb.aa ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i64 %1, ptr %2, ptr noundef %.0.i.i)
          to label %_ZN6google8protobuf19FileDescriptorProto8set_nameIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit unwind label %bb.v

_ZN6google8protobuf19FileDescriptorProto8set_nameIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit: ; preds = %.noexc
  %i.bz = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler6Parser5ParseEPNS0_2io9TokenizerEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull %7, ptr noundef nonnull %3)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %_ZN6google8protobuf19FileDescriptorProto8set_nameIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit
  %.not57 = xor i1 %i.bz, true
  %i.ca = load i8, ptr %i.bd, align 8, !range !72
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond = select i1 %.not57, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = invoke noundef zeroext i1 @_ZNK6google8protobuf8compiler28SourceTreeDescriptorDatabase25ReadExtensionDeclarationsESt17basic_string_viewIcSt11char_traitsIcEEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, ptr %2, ptr noundef nonnull %3)
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cd = phi i1 [ %i.cc, %bb.ac ], [ false, %bb.ab ]
  call void @_ZN6google8protobuf8compiler6ParserD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN6google8protobuf2io9TokenizerD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6google8protobuf8compiler28SourceTreeDescriptorDatabase24SingleFileErrorCollectorE, i64 16), ptr %6, align 8, !tbaa !7
  %i.ce = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ap
  br i1 %i.cf, label %_ZNKSt14default_deleteIN6google8protobuf2io19ZeroCopyInputStreamEEclEPS3_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.cg = load i64, ptr %i.ap, align 8, !tbaa !47
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #32, !inline_history !81
  br label %_ZNKSt14default_deleteIN6google8protobuf2io19ZeroCopyInputStreamEEclEPS3_.exit.i

bb.ae:                                            ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.v ], [ %i.bh, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN6google8protobuf2io9TokenizerD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %7) #31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.bg, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN6google8protobuf8compiler28SourceTreeDescriptorDatabase24SingleFileErrorCollectorD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %6) #31
  br label %.thread54

_ZNKSt14default_deleteIN6google8protobuf2io19ZeroCopyInputStreamEEclEPS3_.exit.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN6google8protobuf2io14ErrorCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(49) %6) #31, !inline_history !81
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #31, !inline_history !82
  br label %_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %_ZNKSt14default_deleteIN6google8protobuf2io19ZeroCopyInputStreamEEclEPS3_.exit.i
  %.048 = phi i1 [ %i.cd, %_ZNKSt14default_deleteIN6google8protobuf2io19ZeroCopyInputStreamEEclEPS3_.exit.i ], [ false, %bb.d ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.c ]
  ret i1 %.048

.thread54:                                        ; preds = %bb.af, %bb.o
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ax, %bb.o ], [ %.pn.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #31, !inline_history !82
  br label %_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit38

_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %.thread54
  %.pn28.pn52 = phi { ptr, i32 } [ %.pn.pn.pn.ph, %.thread54 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn28.pn52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

declare void @_ZN6google8protobuf2io9TokenizerC1EPNS1_19ZeroCopyInputStreamEPNS1_14ErrorCollectorE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6ParserC1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #4

declare noundef zeroext i1 @_ZN6google8protobuf8compiler6Parser5ParseEPNS0_2io9TokenizerEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf8compiler28SourceTreeDescriptorDatabase25ReadExtensionDeclarationsESt17basic_string_viewIcSt11char_traitsIcEEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, ptr %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %9 = alloca %"class.google::protobuf::TextFormat::Parser", align 8 ; 6 uses
  %10 = alloca %"class.google::protobuf::compiler::SourceTreeDescriptorDatabase::SingleFileErrorCollector", align 8 ; 14 uses
  %11 = alloca %"class.google::protobuf::ExtensionRangeOptions", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  store i64 %1, ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSL_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit173, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %.not204 = icmp eq ptr %i.i, %i.k
  br i1 %.not204, label %.loopexit173, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.23.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit.thread
  %.sroa.0159.0205 = phi ptr [ %i.i, %.lr.ph ], [ %i.hw, %_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit.thread ] ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0159.0205, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !9   ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0159.0205, i64 40 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !53
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i64 %i.ba, ptr %i.ay) ; 6 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZN6google8protobuf10TextFormat6ParserC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 3 uses
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !53 ; 5 uses
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6google8protobuf8compiler28SourceTreeDescriptorDatabase24SingleFileErrorCollectorE, i64 16), ptr %10, align 8, !tbaa !7
  store ptr %i.o, ptr %i.n, align 8, !tbaa !54
  %i.bi = icmp eq ptr %i.bf, null
  %i.bj = icmp ne i64 %i.bg, 0
  %or.cond.i.i.i.i = and i1 %i.bi, %i.bj
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #33
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !55
  %i.bk = icmp ugt i64 %i.bg, 15
  br i1 %i.bk, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.g
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3.i unwind label %.loopexit174 ; 2 uses

.noexc3.i:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.bl, ptr %i.n, align 8, !tbaa !49
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.bm, ptr %i.o, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc3.i, %bb.g
  %i.bn = phi ptr [ %i.bl, %.noexc3.i ], [ %i.o, %bb.g ] ; 2 uses
  switch i64 %i.bg, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.k
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bo = load i8, ptr %i.bf, align 1, !tbaa !47
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !47
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bf, i64 %i.bg, i1 false)
  br label %bb.k

.loopexit174:                                     ; preds = %.noexc.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit174
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit174 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6google8protobuf2io14ErrorCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(49) %10) #31
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  store i64 %i.bp, ptr %i.p, align 8, !tbaa !53
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  store ptr %i.bh, ptr %i.q, align 8, !tbaa !56
  store i8 0, ptr %i.r, align 8, !tbaa !59
  store ptr %10, ptr %9, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  invoke void @_ZN6google8protobuf21ExtensionRangeOptionsC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef null)
          to label %_ZN6google8protobuf21ExtensionRangeOptionsC2Ev.exit unwind label %bb.n

_ZN6google8protobuf21ExtensionRangeOptionsC2Ev.exit: ; preds = %bb.k
  %i.bs = invoke noundef zeroext i1 @_ZN6google8protobuf10TextFormat6Parser5ParseEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.be, ptr noundef nonnull %11)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %_ZN6google8protobuf21ExtensionRangeOptionsC2Ev.exit
  br i1 %i.bs, label %bb.p, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_33ExtensionRangeOptions_DeclarationEE9MergeFromERKS3_.exit.thread

bb.m:                                             ; preds = %bb.d
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf2io19ZeroCopyInputStreamESt14default_deleteIS3_EED2Ev.exit129

bb.n:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.o:                                             ; preds = %_ZN6google8protobuf21ExtensionRangeOptionsC2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.p:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %.sroa.0159.0205, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0159.0205, i64 8 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !53
  %.fr208 = freeze i64 %i.by                      ; 3 uses
  %i.bz = load i32, ptr %i.s, align 4, !tbaa !3
  %i.ca = or i32 %i.bz, 2
  store i32 %i.ca, ptr %i.s, align 4, !tbaa !3
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !90
  %i.cc = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cd = and i64 %i.cc, 1
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = add i64 %i.cc, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = select i1 %i.ce, ptr %i.t, ptr %i.ch    ; 3 uses
  %i.cj = load i32, ptr %i.u, align 8, !tbaa !93  ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %.idx.i = shl nsw i64 %i.ck, 3
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 %.idx.i ; 2 uses
  %.not20.i = icmp eq i32 %i.cj, 0
  br i1 %.not20.i, label %.loopexit172, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.cm = icmp eq i64 %.fr208, 0
  br i1 %i.cm, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.us
  %.sroa.013.021.i.us = phi ptr [ %i.cw, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.us ], [ %i.ci, %.lr.ph.preheader.i ] ; 2 uses
  %i.cn = load ptr, ptr %.sroa.013.021.i.us, align 8, !tbaa !94 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 152
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !95
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, -4
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !53
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.split.us, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.us

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.us: ; preds = %.lr.ph.i.us
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i.us, i64 8 ; 2 uses
  %.not.i83.us = icmp eq ptr %i.cw, %i.cl
  br i1 %.not.i83.us, label %.loopexit172, label %.lr.ph.i.us

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i
  %.sroa.013.021.i = phi ptr [ %i.di, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i ], [ %i.ci, %.lr.ph.preheader.i ] ; 2 uses
  %i.cx = load ptr, ptr %.sroa.013.021.i, align 8, !tbaa !94 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !95
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = and i64 %i.da, -4
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !53
  %i.df = icmp eq i64 %i.de, %.fr208
  br i1 %i.df, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !49
  %bcmp.i.i = call i32 @bcmp(ptr %i.dg, ptr readonly %i.bw, i64 %.fr208)
  %i.dh = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dh, label %.split.us, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.013.021.i, i64 8 ; 2 uses
  %.not.i83 = icmp eq ptr %i.di, %i.cl
  br i1 %.not.i83, label %.loopexit172, label %.lr.ph.i

.loopexit172:                                     ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.us, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %15 = load ptr, ptr %.sroa.0159.0205, align 8, !tbaa !49
  %16 = load i64, ptr %i.bx, align 8, !tbaa !53
  %.sroa.05.0.copyload = load i64, ptr %8, align 8, !tbaa !55
  %.sroa.26.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !98
  store i64 8, ptr %7, align 8, !noalias !98
  store ptr @.str, ptr %i.al, align 8, !noalias !98
  store i64 %16, ptr %i.am, align 8, !noalias !98
  store ptr %15, ptr %i.an, align 8, !noalias !98
  store i64 14, ptr %i.ao, align 8, !noalias !98
  store ptr @.str.1, ptr %i.ap, align 8, !noalias !98
  store i64 %.sroa.05.0.copyload, ptr %i.aq, align 8, !noalias !98
  store ptr %.sroa.26.0.copyload, ptr %i.ar, align 8, !noalias !98
  store i64 1, ptr %i.as, align 8, !noalias !98
  store ptr @.str.2, ptr %i.at, align 8, !noalias !98
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull %7, i64 5)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %.loopexit172
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !98
  %i.dj = load ptr, ptr %12, align 8, !tbaa !49   ; 2 uses
  %i.dk = load i64, ptr %i.au, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.dl = load ptr, ptr %i.q, align 8, !tbaa !56  ; 3 uses
  %.not.i86 = icmp eq ptr %i.dl, null
  br i1 %.not.i86, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.dn = load i64, ptr %i.p, align 8, !tbaa !53
  store i64 %i.dk, ptr %6, align 8, !tbaa !55
  store ptr %i.dj, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !97
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i64 %i.dn, ptr %i.dm, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6)
          to label %._crit_edge228 unwind label %bb.u, !inline_history !101

._crit_edge228:                                   ; preds = %bb.r
  %.pre229 = load ptr, ptr %12, align 8, !tbaa !49
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge228, %bb.q
  %i.dr = phi ptr [ %.pre229, %._crit_edge228 ], [ %i.dj, %bb.q ] ; 2 uses
  store i8 1, ptr %i.r, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ds = icmp eq ptr %i.dr, %i.av
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.dt = load i64, ptr %i.av, align 8, !tbaa !47
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_33ExtensionRangeOptions_DeclarationEE9MergeFromERKS3_.exit.thread

bb.t:                                             ; preds = %.loopexit172
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.u:                                             ; preds = %bb.r
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %12, align 8, !tbaa !49   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.av
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.u
  %i.dz = load i64, ptr %i.av, align 8, !tbaa !47
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.t
  %.pn70.pn.pn = phi { ptr, i32 } [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.dv, %bb.t ], [ %i.dw, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ao

.split.us:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.i.us
  %.us-phi = phi ptr [ %i.cn, %.lr.ph.i.us ], [ %i.cx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 3 uses
  %i.eb = load i32, ptr %i.w, align 8, !tbaa !93
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_33ExtensionRangeOptions_DeclarationEE9MergeFromERKS3_.exit.thread, label %bb.v

bb.v:                                             ; preds = %.split.us
  %i.ed = load ptr, ptr %i.v, align 8, !tbaa !90
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = and i64 %i.ee, 1
  %i.eg = icmp eq i64 %i.ef, 0
  %i.eh = add i64 %i.ee, -1
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.0.i.i.i.i.i = select i1 %i.eg, ptr %i.v, ptr %i.ej
  %i.ek = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !94
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load i32, ptr %i.el, align 8, !tbaa !47 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.us-phi, i64 16 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = or i32 %i.eo, 8
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !3
  %i.eq = getelementptr inbounds nuw i8, ptr %.us-phi, i64 72 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !90
  %i.es = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.et = and i64 %i.es, 1
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = add i64 %i.es, -1
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = select i1 %i.eu, ptr %i.eq, ptr %i.ex   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.us-phi, i64 80
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !93 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %.idx.i90 = shl nsw i64 %i.fb, 3
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %.idx.i90
  %.not2223.i = icmp eq i32 %i.fa, 0
  br i1 %.not2223.i, label %.loopexit, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.v, %bb.x
  %.sroa.013.024.i = phi ptr [ %i.fj, %bb.x ], [ %i.ey, %bb.v ] ; 2 uses
  %i.fd = load ptr, ptr %.sroa.013.024.i, align 8, !tbaa !94 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !47
  %.not.i92 = icmp sgt i32 %i.ff, %i.em
  br i1 %.not.i92, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i91
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 36
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !47
  %i.fi = icmp slt i32 %i.em, %i.fh
  br i1 %i.fi, label %_ZN6google8protobuf8compiler12_GLOBAL__N_118FindExtensionRangeEiRNS0_15DescriptorProtoE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i91
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.013.024.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.fj, %i.fc
  br i1 %.not22.i, label %.loopexit, label %.lr.ph.i91

.loopexit:                                        ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.fk = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.em, ptr noundef nonnull %i.x)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %.loopexit
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.y                     ; 2 uses
  store i64 %i.fm, ptr %14, align 8, !tbaa !102
  store ptr %i.x, ptr %i.z, align 8, !tbaa !104
  %i.fn = load ptr, ptr %.sroa.0159.0205, align 8, !tbaa !49
  %i.fo = load i64, ptr %i.bx, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !105
  store i64 36, ptr %5, align 8, !noalias !105
  store ptr @.str.3, ptr %i.aa, align 8, !noalias !105
  store i64 %i.fm, ptr %i.ab, align 8, !noalias !105
  store ptr %i.x, ptr %i.ac, align 8, !noalias !105
  store i64 12, ptr %i.ad, align 8, !noalias !105
  store ptr @.str.4, ptr %i.ae, align 8, !noalias !105
  store i64 %i.fo, ptr %i.af, align 8, !noalias !105
  store ptr %i.fn, ptr %i.ag, align 8, !noalias !105
  store i64 1, ptr %i.ah, align 8, !noalias !105
  store ptr @.str.2, ptr %i.ai, align 8, !noalias !105
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull %5, i64 5)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !105
  %i.fp = load ptr, ptr %13, align 8, !tbaa !49   ; 2 uses
  %i.fq = load i64, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fr = load ptr, ptr %i.q, align 8, !tbaa !56  ; 3 uses
  %.not.i113 = icmp eq ptr %i.fr, null
  br i1 %.not.i113, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fs = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.ft = load i64, ptr %i.p, align 8, !tbaa !53
  store i64 %i.fq, ptr %4, align 8, !tbaa !55
  store ptr %i.fp, ptr %.sroa.23.0..sroa_idx.i114, align 8, !tbaa !97
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !7
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i64 %i.ft, ptr %i.fs, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %4)
          to label %._crit_edge unwind label %bb.af, !inline_history !101

._crit_edge:                                      ; preds = %bb.aa
  %.pre = load ptr, ptr %13, align 8, !tbaa !49
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.z
  %i.fx = phi ptr [ %.pre, %._crit_edge ], [ %i.fp, %bb.z ] ; 2 uses
  store i8 1, ptr %i.r, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fy = icmp eq ptr %i.fx, %i.ak
  br i1 %i.fy, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_33ExtensionRangeOptions_DeclarationEE9MergeFromERKS3_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.ab
  %i.fz = load i64, ptr %i.ak, align 8, !tbaa !47
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #32
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_33ExtensionRangeOptions_DeclarationEE9MergeFromERKS3_.exit

bb.ac:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_33ExtensionRangeOptions_DeclarationEE8GetArenaEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

end_hunk_0
