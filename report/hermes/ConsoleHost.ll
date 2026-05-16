inline.NumInlined: 1090
inline.NumDeleted: 738
begin_hunk_0_@_ZN6hermes22installConsoleBindingsERNS_2vm7RuntimeERNS_18ConsoleHostContextEPNS0_18StatSamplingThreadEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.0.lcssa.i.i62 = phi i32 [ 0, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit54 ], [ %i.ft, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit63.loopexit.unr-lcssa ], [ %i.ga, %.lr.ph.i.i58.epil ]
  %i.gc = tail call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.ag, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eq, i64 %i.er, i32 noundef %.0.lcssa.i.i62) #19 ; 2 uses
  %.not.i64 = icmp eq ptr %i.gc, inttoptr (i64 -1 to ptr)
  br i1 %.not.i64, label %bb.d, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit65, !prof !63

bb.d:                                             ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit63
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #20
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit65: ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit63
  %.sroa.0.0.copyload.i.i66 = load i64, ptr %i.gc, align 8, !tbaa !64
  %i.gd = trunc i64 %.sroa.0.0.copyload.i.i66 to i32 ; 2 uses
  %i.ge = load ptr, ptr %i.a, align 8, !tbaa !44  ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 192 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !47
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 208 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !57 ; 2 uses
  %i.gj = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.g, ptr noundef nonnull %1, ptr noundef nonnull @_ZN6hermesL12clearTimeoutEPvRNS_2vm7RuntimeENS1_10NativeArgsE, i32 %i.gd, i32 noundef 1, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #19
  %i.gk = tail call ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) #19
  %i.gl = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.gk, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %i.gd, i32 318, ptr %i.gj, i32 0) #19 ; 0 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 144
  %i.gn = zext i32 %i.gi to i64
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !58
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gn
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !59
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 128
  store i32 %i.gi, ptr %i.gh, align 8, !tbaa !57
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 200
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !60
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !47
  %i.gt = tail call { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef nonnull @.str.3) #19 ; 2 uses
  %i.gu = extractvalue { ptr, i64 } %i.gt, 0      ; 3 uses
  %i.gv = extractvalue { ptr, i64 } %i.gt, 1      ; 5 uses
  %.not10.i.i68 = icmp samesign eq i64 %i.gv, 0
  br i1 %.not10.i.i68, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74, label %.lr.ph.i.i69.preheader

.lr.ph.i.i69.preheader:                           ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit65
  %xtraiter122 = and i64 %i.gv, 3                 ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 4
  br i1 %i.gw, label %.lr.ph.i.i69.epil.preheader, label %.lr.ph.i.i69.preheader.new

.lr.ph.i.i69.preheader.new:                       ; preds = %.lr.ph.i.i69.preheader
  %unroll_iter127 = and i64 %i.gv, -4
  br label %.lr.ph.i.i69

.lr.ph.i.i69:                                     ; preds = %.lr.ph.i.i69, %.lr.ph.i.i69.preheader.new
  %.012.i.i70 = phi i32 [ 0, %.lr.ph.i.i69.preheader.new ], [ %i.hx, %.lr.ph.i.i69 ]
  %.0811.i.i71 = phi ptr [ %i.gu, %.lr.ph.i.i69.preheader.new ], [ %i.hy, %.lr.ph.i.i69 ] ; 5 uses
  %niter128 = phi i64 [ 0, %.lr.ph.i.i69.preheader.new ], [ %niter128.next.3, %.lr.ph.i.i69 ]
  %i.gx = load i8, ptr %.0811.i.i71, align 1, !tbaa !42
  %i.gy = sext i8 %i.gx to i32
  %i.gz = add i32 %.012.i.i70, %i.gy
  %i.ha = mul i32 %i.gz, 1025                     ; 2 uses
  %i.hb = lshr i32 %i.ha, 6
  %i.hc = xor i32 %i.hb, %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %.0811.i.i71, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !42
  %i.hf = sext i8 %i.he to i32
  %i.hg = add i32 %i.hc, %i.hf
  %i.hh = mul i32 %i.hg, 1025                     ; 2 uses
  %i.hi = lshr i32 %i.hh, 6
  %i.hj = xor i32 %i.hi, %i.hh
  %i.hk = getelementptr inbounds nuw i8, ptr %.0811.i.i71, i64 2
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !42
  %i.hm = sext i8 %i.hl to i32
  %i.hn = add i32 %i.hj, %i.hm
  %i.ho = mul i32 %i.hn, 1025                     ; 2 uses
  %i.hp = lshr i32 %i.ho, 6
  %i.hq = xor i32 %i.hp, %i.ho
  %i.hr = getelementptr inbounds nuw i8, ptr %.0811.i.i71, i64 3
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !42
  %i.ht = sext i8 %i.hs to i32
  %i.hu = add i32 %i.hq, %i.ht
  %i.hv = mul i32 %i.hu, 1025                     ; 2 uses
  %i.hw = lshr i32 %i.hv, 6
  %i.hx = xor i32 %i.hw, %i.hv                    ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0811.i.i71, i64 4 ; 2 uses
  %niter128.next.3 = add i64 %niter128, 4         ; 2 uses
  %niter128.ncmp.3 = icmp eq i64 %niter128.next.3, %unroll_iter127
  br i1 %niter128.ncmp.3, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74.loopexit.unr-lcssa, label %.lr.ph.i.i69

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i69
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74, label %.lr.ph.i.i69.epil.preheader

.lr.ph.i.i69.epil.preheader:                      ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74.loopexit.unr-lcssa, %.lr.ph.i.i69.preheader
  %.012.i.i70.epil.init = phi i32 [ 0, %.lr.ph.i.i69.preheader ], [ %i.hx, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74.loopexit.unr-lcssa ]
  %.0811.i.i71.epil.init = phi ptr [ %i.gu, %.lr.ph.i.i69.preheader ], [ %i.hy, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74.loopexit.unr-lcssa ]
  %lcmp.mod126 = icmp ne i64 %xtraiter122, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i69.epil

.lr.ph.i.i69.epil:                                ; preds = %.lr.ph.i.i69.epil, %.lr.ph.i.i69.epil.preheader
  %.012.i.i70.epil = phi i32 [ %i.ie, %.lr.ph.i.i69.epil ], [ %.012.i.i70.epil.init, %.lr.ph.i.i69.epil.preheader ]
  %.0811.i.i71.epil = phi ptr [ %i.if, %.lr.ph.i.i69.epil ], [ %.0811.i.i71.epil.init, %.lr.ph.i.i69.epil.preheader ] ; 2 uses
  %epil.iter123 = phi i64 [ %epil.iter123.next, %.lr.ph.i.i69.epil ], [ 0, %.lr.ph.i.i69.epil.preheader ]
  %i.hz = load i8, ptr %.0811.i.i71.epil, align 1, !tbaa !42
  %i.ia = sext i8 %i.hz to i32
  %i.ib = add i32 %.012.i.i70.epil, %i.ia
  %i.ic = mul i32 %i.ib, 1025                     ; 2 uses
  %i.id = lshr i32 %i.ic, 6
  %i.ie = xor i32 %i.id, %i.ic                    ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0811.i.i71.epil, i64 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74, label %.lr.ph.i.i69.epil, !llvm.loop !67

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74: ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74.loopexit.unr-lcssa, %.lr.ph.i.i69.epil, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit65
  %.0.lcssa.i.i73 = phi i32 [ 0, %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit65 ], [ %i.hx, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74.loopexit.unr-lcssa ], [ %i.ie, %.lr.ph.i.i69.epil ]
  %i.ig = tail call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.ag, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.gu, i64 %i.gv, i32 noundef %.0.lcssa.i.i73) #19 ; 2 uses
  %.not.i75 = icmp eq ptr %i.ig, inttoptr (i64 -1 to ptr)
  br i1 %.not.i75, label %bb.e, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit76, !prof !63

bb.e:                                             ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #20
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit76: ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit74
  %.sroa.0.0.copyload.i.i77 = load i64, ptr %i.ig, align 8, !tbaa !64
  %i.ih = trunc i64 %.sroa.0.0.copyload.i.i77 to i32 ; 2 uses
  %i.ii = load ptr, ptr %i.a, align 8, !tbaa !44  ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 192 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !47
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 208 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !57 ; 2 uses
  %i.in = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.g, ptr noundef nonnull %1, ptr noundef nonnull @_ZN6hermesL10setTimeoutEPvRNS_2vm7RuntimeENS1_10NativeArgsE, i32 %i.ih, i32 noundef 1, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #19
  %i.io = tail call ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) #19
  %i.ip = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.io, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %i.ih, i32 318, ptr %i.in, i32 0) #19 ; 0 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 144
  %i.ir = zext i32 %i.im to i64
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !58
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.ir
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !59
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 128
  store i32 %i.im, ptr %i.il, align 8, !tbaa !57
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ii, i64 200
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !60
  store ptr %i.ik, ptr %i.ij, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN6hermesL4quitEPvRNS_2vm7RuntimeENS1_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6hermes2vm7Runtime14raiseQuitErrorEv(ptr noundef nonnull align 8 dereferenceable(9816) %1) #19
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %i.a, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 undef, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN6hermesL18createHeapSnapshotEPvRNS_2vm7RuntimeENS1_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #0 {
_ZN6hermes2vm11TwineChar16C2EPKc.exit:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 62, ptr %i.b, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.c, align 8, !tbaa !72
  store ptr @.str.5, ptr %3, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.d, align 8, !tbaa !73
  %i.e = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %i.e, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 undef, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN6hermesL11loadSegmentEPvRNS_2vm7RuntimeENS1_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.llvh::ErrorOr", align 8     ; 7 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %8 = alloca %"struct.std::pair", align 8        ; 8 uses
  %9 = alloca %"class.std::unique_ptr.193", align 8 ; 3 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %11 = alloca %"class.std::shared_ptr.162", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_14RequireContextEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !77, !noalias !78
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !64 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_14RequireContextEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_14RequireContextEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_14RequireContextEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %12 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.h = icmp eq i8 %12, 64
  %spec.select.i = select i1 %i.h, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_14RequireContextEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_14RequireContextEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_14RequireContextEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_14RequireContextEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.i = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !81 ; 2 uses
  %i.j = icmp ugt i64 %i.i, -844424930131969
  %i.k = and i64 %i.i, 281474976710655
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_14RequireContextEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 45, ptr %i.o, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.p, align 8, !tbaa !72
  store ptr @.str.6, ptr %3, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !73
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.o

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_14RequireContextEEENS0_6HandleIT_EEj.exit
  %i.s = icmp ugt i32 %i.b, 1
  %i.t = load ptr, ptr %2, align 8
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  %.sroa.02.0.i = select i1 %i.s, ptr %i.u, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.v = tail call { i32, i64 } @_ZN6hermes2vm12toUInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #19 ; 2 uses
  %i.w = extractvalue { i32, i64 } %i.v, 0
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.o, label %_ZN4llvhplERKNS_5TwineES2_.exit16, !prof !63

_ZN4llvhplERKNS_5TwineES2_.exit16:                ; preds = %bb.c
  %i.y = extractvalue { i32, i64 } %i.v, 1
  %i.z = bitcast i64 %i.y to double
  %i.aa = fptoui double %i.z to i32               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %0, ptr %6, align 8, !tbaa !42, !alias.scope !83
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.7, ptr %i.ab, align 8, !tbaa !42, !alias.scope !83
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 4, ptr %i.ac, align 8, !tbaa !88, !alias.scope !83
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 3, ptr %i.ad, align 1, !tbaa !91, !alias.scope !83
  %.sroa.0.0.insert.ext = zext i32 %i.aa to i64
  %i.ae = inttoptr i64 %.sroa.0.0.insert.ext to ptr
  store ptr %6, ptr %5, align 8, !tbaa !42, !alias.scope !92
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !42, !alias.scope !92
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 2, ptr %i.ag, align 8, !tbaa !88, !alias.scope !92
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 9, ptr %i.ah, align 1, !tbaa !91, !alias.scope !92
  call void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(18) %5, i64 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit, label %bb.d

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit:     ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %i.aa) #19
  %i.am = sext i32 %i.al to i64
  %.sroa.0.0.insert.ext40 = zext i32 %i.aa to i64
  %i.an = inttoptr i64 %.sroa.0.0.insert.ext40 to ptr
  store ptr @.str.8, ptr %7, align 8, !tbaa !42, !alias.scope !97
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ao, align 8, !tbaa !73, !alias.scope !97
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !42, !alias.scope !97
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 7, ptr %i.aq, align 8, !tbaa !68, !alias.scope !97
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 24, ptr %i.ar, align 8, !tbaa !71, !alias.scope !97
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.am, ptr %i.as, align 8, !tbaa !72, !alias.scope !97
  %i.at = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.m

bb.d:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.au = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21, !noalias !102 ; 6 uses
  %i.av = load i64, ptr %4, align 8, !tbaa !105, !noalias !102 ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  store ptr null, ptr %4, align 8, !tbaa !105, !noalias !102
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !107, !noalias !102
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !111, !noalias !102 ; 2 uses
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !113, !noalias !102
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !114, !noalias !102
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !115, !noalias !102
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6hermes17OwnedMemoryBufferE, i64 16), ptr %i.au, align 8, !tbaa !116, !noalias !102
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 %i.av, ptr %i.bh, align 8, !tbaa !105, !noalias !102
  store ptr %i.au, ptr %9, align 8, !tbaa !118
  call void @_ZN6hermes3hbc20BCProviderFromBuffer26createBCProviderFromBufferB5cxx11ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %8, ptr noundef nonnull %9, i32 noundef 0)
  %i.bi = load ptr, ptr %9, align 8, !tbaa !121   ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6hermes17OwnedMemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i

_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i: ; preds = %bb.d
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !116
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bi) #19, !inline_history !122
  br label %_ZNSt10unique_ptrIN6hermes17OwnedMemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes17OwnedMemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i, %bb.d
  %i.bm = load ptr, ptr %8, align 8, !tbaa !123
  %.not33 = icmp eq ptr %i.bm, null
  br i1 %.not33, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit24, label %bb.e

_ZN6hermes2vm11TwineChar16C2EPKc.exit24:          ; preds = %_ZNSt10unique_ptrIN6hermes17OwnedMemoryBufferESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.bn, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 28, ptr %i.bo, align 8, !tbaa !71
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.bp, align 8, !tbaa !72
  store ptr @.str.9, ptr %10, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.bq, align 8, !tbaa !73
  %i.br = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.l

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6hermes17OwnedMemoryBufferESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_20BCProviderFromBufferESt14default_deleteIS7_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.bs = call noundef i32 @_ZN6hermes2vm7Runtime11loadSegmentEOSt10shared_ptrINS_3hbc14BCProviderBaseEENS0_6HandleINS0_14RequireContextEEENS0_18RuntimeModuleFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr nonnull %.sroa.03.0.i, i8 0) #19
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !125 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.bw, align 8, !tbaa !128
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !130
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #19, !inline_history !131
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !116
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #19, !inline_history !131
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.bz, %bb.i ], [ %i.cj, %bb.j ]
  %i.ck = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ck, label %bb.k, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #19
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %spec.select = zext i1 %i.bt to i32
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit24
  %.sroa.032.0 = phi i32 [ %i.br, %_ZN6hermes2vm11TwineChar16C2EPKc.exit24 ], [ %spec.select, %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !132 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !42
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cr = load ptr, ptr %8, align 8, !tbaa !123   ; 3 uses
  %.not.i.i25 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i25, label %_ZNSt4pairISt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %i.cr) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 376) #22
  br label %_ZNSt4pairISt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairISt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt4pairISt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %.sroa.032.1 = phi i32 [ %.sroa.032.0, %_ZNSt4pairISt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ], [ %i.at, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit ]
  %i.cs = load i8, ptr %i.ai, align 8
  %i.ct = trunc i8 %i.cs to i1
  br i1 %i.ct, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = load ptr, ptr %4, align 8, !tbaa !105   ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i26, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.n
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !116
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cu) #19, !inline_history !135
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %bb.n, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, %bb.c, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.032.3 = phi i32 [ %i.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.032.1, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.032.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN6hermesL10setTimeoutEPvRNS_2vm7RuntimeENS1_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"struct.std::_List_iterator", align 8 ; 4 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !77, !noalias !136
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !64 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %6 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %7 = add i8 %6, -68
  %i.h = icmp ult i8 %7, 9
  %spec.select.i = select i1 %i.h, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.i = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !81 ; 2 uses
  %i.j = icmp ugt i64 %i.i, -844424930131969
  %i.k = and i64 %i.i, 281474976710655
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 41, ptr %i.o, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.p, align 8, !tbaa !72
  store ptr @.str.11, ptr %4, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !73
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  %i.s = add i32 %i.b, -1
  %i.t = load ptr, ptr %2, align 8, !tbaa !77, !noalias !139
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %5, align 8, !tbaa !77, !alias.scope !142
  %i.v = call { i32, i64 } @_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.03.0.i, i32 noundef %i.s, ptr noundef nonnull dead_on_return %5) #19 ; 2 uses
  %i.w = extractvalue { i32, i64 } %i.v, 0
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = extractvalue { i32, i64 } %i.v, 1
  %i.z = and i64 %i.y, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 %i.ac, ptr %i.ae, align 8
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.aa, ptr %.sroa.41.0..sroa_idx.i, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(84) %0) #19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !145
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !145
  store ptr %i.ad, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = call { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjSt14_List_iteratorIS0_IjPN6hermes2vm8CallableEEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjRS8_EEES0_INSB_14_Node_iteratorIS9_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %i.ak = load i32, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.ab, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.am = uitofp i32 %i.ak to double
  %i.an = bitcast double %i.am to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.011.1 = phi i32 [ %i.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.d ], [ 0, %bb.c ]
  %.sroa.412.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.an, %bb.d ], [ undef, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.011.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.412.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN6hermesL12clearTimeoutEPvRNS_2vm7RuntimeENS1_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !77, !noalias !146
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8 ; 2 uses
  %i.e = icmp ult i64 %.sroa.0.0.copyload.i, -1970324836974592
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.a, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 41, ptr %i.g, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !72
  store ptr @.str.12, ptr %3, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.i, align 8, !tbaa !73
  %i.j = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.b

_ZNK6hermes2vm10NativeArgs6getArgEj.exit5:        ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.k = bitcast i64 %.sroa.0.0.copyload.i to double
  %i.l = fptoui double %i.k to i32
  tail call void @_ZN6hermes18ConsoleHostContext9clearTaskEj(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %i.l)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %.sroa.07.0 = phi i32 [ 1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5 ], [ %i.j, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes18executeHBCBytecodeEOSt10shared_ptrINS_3hbc14BCProviderBaseEERKNS_14ExecuteOptionsEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(283) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.llvh::raw_string_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::function.154", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.hermes::vm::GCConfig", align 8 ; 18 uses
  %8 = alloca %"class.std::shared_ptr.292", align 8 ; 21 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %10 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %11 = alloca %"class.hermes::ConsoleHostContext", align 8 ; 26 uses
  %12 = alloca %"class.llvh::StringRef", align 8  ; 4 uses
  %13 = alloca %"struct.hermes::vm::ProcessStats::Info", align 8 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %7, ptr noundef nonnull align 8 dereferenceable(283) %1, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 5 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !152, !alias.scope !149
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !132, !noalias !149 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !153, !noalias !149 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !149
  store i64 %i.h, ptr %i.b, align 8, !tbaa !64, !noalias !149
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #19 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !132, !alias.scope !149
  %i.k = load i64, ptr %i.b, align 8, !tbaa !64, !noalias !149
  store i64 %i.k, ptr %i.e, align 8, !tbaa !42, !alias.scope !149
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !42
  store i8 %i.m, ptr %i.l, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !64, !noalias !149 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.n, ptr %i.o, align 8, !tbaa !153, !alias.scope !149
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !132, !alias.scope !149
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !149
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !154, !noalias !149
  store i32 %i.t, ptr %i.r, align 8, !tbaa !154, !alias.scope !149
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false), !alias.scope !149
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36, !noalias !149 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.z = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 2) #19, !inline_history !157 ; 0 uses
  %i.aa = load <2 x ptr>, ptr %i.v, align 8, !tbaa !158, !noalias !149
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !158, !alias.scope !149
  br label %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i.i.i.i.i
end_hunk_0
