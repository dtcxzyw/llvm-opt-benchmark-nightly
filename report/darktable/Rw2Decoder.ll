inline.NumInlined: 1060
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8rawspeed19AbstractTiffDecoderD2Ev:bb.a
  br label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8rawspeed10RawDecoderE, i64 16), ptr %0, align 8, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef %i.y)
          to label %_ZN8rawspeed5HintsD2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #32
  unreachable

_ZN8rawspeed5HintsD2Ev.exit.i:                    ; preds = %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed10RawDecoderD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8rawspeed5HintsD2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !78
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #27, !call_target !81, !inline_history !158
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #27, !call_target !89, !inline_history !158
  br label %_ZN8rawspeed10RawDecoderD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !51
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZN8rawspeed10RawDecoderD2Ev.exit, !prof !90

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #27
  br label %_ZN8rawspeed10RawDecoderD2Ev.exit

_ZN8rawspeed10RawDecoderD2Ev.exit:                ; preds = %_ZN8rawspeed5HintsD2Ev.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10Rw2DecoderD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed19AbstractTiffDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN8rawspeed19AbstractTiffDecoder10getRootIFDEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  ret ptr %i.b
}

declare void @_ZN8rawspeed10RawDecoder11setMetaDataEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_i(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK8rawspeed10Rw2Decoder17getDecoderVersionEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 3
}

declare void @_ZNK8rawspeed19AbstractTiffDecoder6anchorEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8rawspeed12_GLOBAL__N_122getPanasonicTiffVectorIjEEvRKNS_7TiffIFDENS_7TiffTagERSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext range(i16 57, 71) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %1) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.09.0.copyload = load ptr, ptr %i.b, align 8 ; 6 uses
  %.sroa.09.0.copyload45 = ptrtoaddr ptr %.sroa.09.0.copyload to i64 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.913.0.copyload = load i32, ptr %.sroa.913.0..sroa_idx, align 8 ; 2 uses
  %i.c = zext i32 %.sroa.913.0.copyload to i64    ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2
  %i.e = zext i32 %.sroa.5.0.copyload to i64      ; 6 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #20
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.0.copyload.fr = freeze i16 %.sroa.7.0.copyload
  %i.f = icmp eq i16 %.sroa.7.0.copyload.fr, -8531 ; 2 uses
  %i.g = icmp sgt i32 %.sroa.5.0.copyload, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i32 %.sroa.913.0.copyload, 2 ; 2 uses
  %i.i = icmp samesign ule i32 %i.h, %.sroa.5.0.copyload
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 %i.c
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.j, align 1 ; 2 uses
  %i.k = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i)
  %spec.select.i.i.i.i.i.i = select i1 %i.f, i16 %.0.copyload.i.i.i.i.i.i, i16 %i.k
  %i.l = zext i16 %spec.select.i.i.i.i.i.i to i64 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 4 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !42     ; 5 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %i.u = sub nuw nsw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.u)
  %.pre = load ptr, ptr %2, align 8, !tbaa !50
  %.pre23 = load ptr, ptr %i.m, align 8, !tbaa !50
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %i.v = icmp ugt i64 %i.s, %i.l
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.w, ptr %i.m, align 8, !tbaa !41
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.x = phi ptr [ %.pre23, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.w, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.y = phi ptr [ %.pre, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 12 uses
  %i.z = ptrtoaddr ptr %i.x to i64                ; 4 uses
  %i.aa = ptrtoaddr ptr %i.y to i64               ; 6 uses
  %i.ab = icmp eq ptr %i.y, %i.x
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.ac = zext i32 %i.h to i64                    ; 15 uses
  %i.ad = add nuw nsw i64 %i.ac, 4                ; 9 uses
  %.not.i.i.i.i.i.us42 = icmp samesign ugt i64 %i.ad, %i.e ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %.not.i.i.i.i.i.us42, label %.split.us, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.lr.ph

_ZN8rawspeed10ByteStream3getIjEET_v.exit.lr.ph:   ; preds = %.lr.ph.split.preheader
  %3 = sub i64 %i.z, %i.aa
  %4 = add i64 %3, -4
  %i.ae = lshr i64 %4, 2
  %5 = sub nuw nsw i64 %i.e, %i.ac
  %6 = add nsw i64 %5, -4
  %i.af = lshr i64 %6, 2
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 32
  br i1 %min.iters.check, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.preheader, label %vector.scevcheck

_ZN8rawspeed10ByteStream3getIjEET_v.exit.preheader: ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.lr.ph
  %.ph71 = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %vector.scevcheck ], [ %i.ad, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.lr.ph ], [ %i.aq, %vector.body ]
  %.sroa.06.01541.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %vector.scevcheck ], [ %i.y, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.lr.ph ], [ %i.ar, %vector.body ]
  %indvars.iv40.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ac, %vector.scevcheck ], [ %i.ac, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.lr.ph ], [ %i.as, %vector.body ]
  br label %_ZN8rawspeed10ByteStream3getIjEET_v.exit

vector.scevcheck:                                 ; preds = %_ZN8rawspeed10ByteStream3getIjEET_v.exit.lr.ph
  %i.ai = sub i64 %i.z, %i.aa
  %i.aj = and i64 %i.ai, 3
  %ident.check.not = icmp eq i64 %i.aj, 0
  br i1 %ident.check.not, label %vector.memcheck, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ak = add i64 %.sroa.09.0.copyload45, %i.ac
  %i.al = sub i64 %i.ak, %i.aa
  %diff.check = icmp ugt i64 %i.al, -128
  br i1 %diff.check, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.am = and i64 %i.ah, 31                       ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = select i1 %i.an, i64 32, i64 %i.am
  %n.vec = sub nsw i64 %i.ah, %i.ao               ; 2 uses
  %i.ap = shl i64 %n.vec, 2                       ; 3 uses
  %i.aq = add i64 %i.ad, %i.ap
  %i.ar = getelementptr i8, ptr %i.y, i64 %i.ap
  %i.as = add i64 %i.ap, %i.ac
  %invariant.gep = getelementptr i8, ptr %.sroa.09.0.copyload, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.at ; 4 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.at ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <8 x i32>, ptr %gep, align 1
  %wide.load46 = load <8 x i32>, ptr %i.au, align 1
  %wide.load47 = load <8 x i32>, ptr %i.av, align 1
  %wide.load48 = load <8 x i32>, ptr %i.aw, align 1
  %i.ax = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load)
  %i.ay = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load46)
  %i.az = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load47)
  %i.ba = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load48)
  %i.bb = getelementptr i8, ptr %next.gep, i64 32
  %i.bc = getelementptr i8, ptr %next.gep, i64 64
  %i.bd = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %i.ax, ptr %next.gep, align 4, !tbaa !51
  store <8 x i32> %i.ay, ptr %i.bb, align 4, !tbaa !51
  store <8 x i32> %i.az, ptr %i.bc, align 4, !tbaa !51
  store <8 x i32> %i.ba, ptr %i.bd, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.preheader, label %vector.body, !llvm.loop !159

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %.not.i.i.i.i.i.us42, label %.split.us, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.lr.ph

_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.lr.ph: ; preds = %.lr.ph.split.us.preheader
  %7 = sub i64 %i.z, %i.aa
  %8 = add i64 %7, -4
  %i.bf = lshr i64 %8, 2
  %9 = sub nuw nsw i64 %i.e, %i.ac
  %10 = add nsw i64 %9, -4
  %i.bg = lshr i64 %10, 2
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bg) ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check56 = icmp samesign ult i64 %i.bh, 32
  br i1 %min.iters.check56, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.preheader, label %vector.scevcheck51

vector.scevcheck51:                               ; preds = %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.lr.ph
  %i.bj = sub i64 %i.z, %i.aa
  %i.bk = and i64 %i.bj, 3
  %ident.check52.not = icmp eq i64 %i.bk, 0
  br i1 %ident.check52.not, label %vector.memcheck53, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.preheader

vector.memcheck53:                                ; preds = %vector.scevcheck51
  %i.bl = add i64 %.sroa.09.0.copyload45, %i.ac
  %i.bm = sub i64 %i.bl, %i.aa
  %diff.check54 = icmp ugt i64 %i.bm, -128
  br i1 %diff.check54, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck53
  %i.bn = and i64 %i.bi, 31                       ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 32, i64 %i.bn
  %n.vec58 = sub nsw i64 %i.bi, %i.bp             ; 2 uses
  %i.bq = shl i64 %n.vec58, 2                     ; 3 uses
  %i.br = add i64 %i.ad, %i.bq
  %i.bs = getelementptr i8, ptr %i.y, i64 %i.bq
  %i.bt = add i64 %i.bq, %i.ac
  %invariant.gep74 = getelementptr i8, ptr %.sroa.09.0.copyload, i64 %i.ac
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next66, %vector.body59 ] ; 2 uses
  %i.bu = shl i64 %index60, 2                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.y, i64 %i.bu ; 4 uses
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %i.bu ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %gep75, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %gep75, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %gep75, i64 96
  %wide.load62 = load <8 x i32>, ptr %gep75, align 1
  %wide.load63 = load <8 x i32>, ptr %i.bv, align 1
  %wide.load64 = load <8 x i32>, ptr %i.bw, align 1
  %wide.load65 = load <8 x i32>, ptr %i.bx, align 1
  %i.by = getelementptr i8, ptr %next.gep61, i64 32
  %i.bz = getelementptr i8, ptr %next.gep61, i64 64
  %i.ca = getelementptr i8, ptr %next.gep61, i64 96
  store <8 x i32> %wide.load62, ptr %next.gep61, align 4, !tbaa !51
  store <8 x i32> %wide.load63, ptr %i.by, align 4, !tbaa !51
  store <8 x i32> %wide.load64, ptr %i.bz, align 4, !tbaa !51
  store <8 x i32> %wide.load65, ptr %i.ca, align 4, !tbaa !51
  %index.next66 = add nuw i64 %index60, 32        ; 2 uses
  %i.cb = icmp eq i64 %index.next66, %n.vec58
  br i1 %i.cb, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.preheader, label %vector.body59, !llvm.loop !162

_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.preheader: ; preds = %vector.body59, %vector.memcheck53, %vector.scevcheck51, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.lr.ph
  %.ph = phi i64 [ %i.ad, %vector.memcheck53 ], [ %i.ad, %vector.scevcheck51 ], [ %i.ad, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.lr.ph ], [ %i.br, %vector.body59 ]
  %.sroa.06.015.us44.ph = phi ptr [ %i.y, %vector.memcheck53 ], [ %i.y, %vector.scevcheck51 ], [ %i.y, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.lr.ph ], [ %i.bs, %vector.body59 ]
  %indvars.iv2043.ph = phi i64 [ %i.ac, %vector.memcheck53 ], [ %i.ac, %vector.scevcheck51 ], [ %i.ac, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.lr.ph ], [ %i.bt, %vector.body59 ]
  br label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us

.lr.ph.split.us:                                  ; preds = %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us
  %i.cc = add nuw nsw i64 %i.cd, 4                ; 2 uses
  %.not.i.i.i.i.i.us = icmp samesign ugt i64 %i.cc, %i.e
  br i1 %.not.i.i.i.i.i.us, label %.split.us, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us, !llvm.loop !163

_ZN8rawspeed10ByteStream3getIjEET_v.exit.us:      ; preds = %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.preheader, %.lr.ph.split.us
  %i.cd = phi i64 [ %i.cc, %.lr.ph.split.us ], [ %.ph, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.preheader ] ; 2 uses
  %.sroa.06.015.us44 = phi ptr [ %i.cf, %.lr.ph.split.us ], [ %.sroa.06.015.us44.ph, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.preheader ] ; 2 uses
  %indvars.iv2043 = phi i64 [ %i.cd, %.lr.ph.split.us ], [ %indvars.iv2043.ph, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 %indvars.iv2043
  %.0.copyload.i.i.i.i.i.us = load i32, ptr %i.ce, align 1
  store i32 %.0.copyload.i.i.i.i.i.us, ptr %.sroa.06.015.us44, align 4, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.06.015.us44, i64 4 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.x
  br i1 %i.cg, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN8rawspeed10ByteStream3getIjEET_v.exit, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.us, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  ret void

.lr.ph.split:                                     ; preds = %_ZN8rawspeed10ByteStream3getIjEET_v.exit
  %i.ch = add nuw nsw i64 %i.ci, 4                ; 2 uses
  %.not.i.i.i.i.i = icmp samesign ugt i64 %i.ch, %i.e
  br i1 %.not.i.i.i.i.i, label %.split.us, label %_ZN8rawspeed10ByteStream3getIjEET_v.exit, !llvm.loop !164

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #20
  unreachable

_ZN8rawspeed10ByteStream3getIjEET_v.exit:         ; preds = %_ZN8rawspeed10ByteStream3getIjEET_v.exit.preheader, %.lr.ph.split
  %i.ci = phi i64 [ %i.ch, %.lr.ph.split ], [ %.ph71, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.preheader ] ; 2 uses
  %.sroa.06.01541 = phi ptr [ %i.cl, %.lr.ph.split ], [ %.sroa.06.01541.ph, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.preheader ] ; 2 uses
  %indvars.iv40 = phi i64 [ %i.ci, %.lr.ph.split ], [ %indvars.iv40.ph, %_ZN8rawspeed10ByteStream3getIjEET_v.exit.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 %indvars.iv40
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.cj, align 1
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  store i32 %i.ck, ptr %.sroa.06.01541, align 4, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.06.01541, i64 4 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.x
  br i1 %i.cm, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8rawspeed12_GLOBAL__N_122getPanasonicTiffVectorItEEvRKNS_7TiffIFDENS_7TiffTagERSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext range(i16 65, 73) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %1) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.09.0.copyload = load ptr, ptr %i.b, align 8 ; 6 uses
  %.sroa.09.0.copyload45 = ptrtoaddr ptr %.sroa.09.0.copyload to i64 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.913.0.copyload = load i32, ptr %.sroa.913.0..sroa_idx, align 8 ; 2 uses
  %i.c = zext i32 %.sroa.913.0.copyload to i64    ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2
  %i.e = zext i32 %.sroa.5.0.copyload to i64      ; 6 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #20
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.0.copyload.fr = freeze i16 %.sroa.7.0.copyload
  %i.f = icmp eq i16 %.sroa.7.0.copyload.fr, -8531 ; 2 uses
  %i.g = icmp sgt i32 %.sroa.5.0.copyload, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i32 %.sroa.913.0.copyload, 2 ; 2 uses
  %i.i = icmp samesign ule i32 %i.h, %.sroa.5.0.copyload
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 %i.c
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.j, align 1 ; 2 uses
  %i.k = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i)
  %spec.select.i.i.i.i.i.i = select i1 %i.f, i16 %.0.copyload.i.i.i.i.i.i, i16 %i.k
  %i.l = zext i16 %spec.select.i.i.i.i.i.i to i64 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 4 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !44     ; 5 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 1                   ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %i.u = sub nuw nsw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.u)
  %.pre = load ptr, ptr %2, align 8, !tbaa !45
  %.pre23 = load ptr, ptr %i.m, align 8, !tbaa !45
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %i.v = icmp ugt i64 %i.s, %i.l
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorItSaItEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorItSaItEE6resizeEm.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.w, ptr %i.m, align 8, !tbaa !43
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit

_ZNSt6vectorItSaItEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i
  %i.x = phi ptr [ %.pre23, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.w, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.y = phi ptr [ %.pre, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 10 uses
  %i.z = ptrtoaddr ptr %i.x to i64                ; 4 uses
  %i.aa = ptrtoaddr ptr %i.y to i64               ; 6 uses
  %i.ab = icmp eq ptr %i.y, %i.x
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit
  %i.ac = zext i32 %i.h to i64                    ; 13 uses
  %i.ad = add nuw nsw i64 %i.ac, 2                ; 7 uses
  %.not.i.i.i.i.i.us42 = icmp samesign ugt i64 %i.ad, %i.e ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %.not.i.i.i.i.i.us42, label %.split.us, label %_ZN8rawspeed10ByteStream3getItEET_v.exit.lr.ph

_ZN8rawspeed10ByteStream3getItEET_v.exit.lr.ph:   ; preds = %.lr.ph.split.preheader
  %3 = sub i64 %i.z, %i.aa
  %4 = add i64 %3, -2
  %i.ae = lshr i64 %4, 1
  %5 = sub nuw nsw i64 %i.e, %i.ac
  %6 = add nsw i64 %5, -2
  %i.af = lshr i64 %6, 1
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %i.ah = add nuw i64 %i.ag, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 64
  %i.ai = sub i64 %i.z, %i.aa
  %i.aj = trunc i64 %i.ai to i1
  %or.cond = or i1 %min.iters.check, %i.aj
  br i1 %or.cond, label %_ZN8rawspeed10ByteStream3getItEET_v.exit.preheader, label %vector.memcheck

_ZN8rawspeed10ByteStream3getItEET_v.exit.preheader: ; preds = %vector.body, %vector.memcheck, %_ZN8rawspeed10ByteStream3getItEET_v.exit.lr.ph
  %.ph73 = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %_ZN8rawspeed10ByteStream3getItEET_v.exit.lr.ph ], [ %i.aq, %vector.body ]
  %.sroa.06.01541.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %_ZN8rawspeed10ByteStream3getItEET_v.exit.lr.ph ], [ %i.ar, %vector.body ]
  %indvars.iv40.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ac, %_ZN8rawspeed10ByteStream3getItEET_v.exit.lr.ph ], [ %i.as, %vector.body ]
  br label %_ZN8rawspeed10ByteStream3getItEET_v.exit

vector.memcheck:                                  ; preds = %_ZN8rawspeed10ByteStream3getItEET_v.exit.lr.ph
  %i.ak = add i64 %.sroa.09.0.copyload45, %i.ac
  %i.al = sub i64 %i.ak, %i.aa
  %diff.check = icmp ugt i64 %i.al, -128
  br i1 %diff.check, label %_ZN8rawspeed10ByteStream3getItEET_v.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.am = and i64 %i.ah, 63                       ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = select i1 %i.an, i64 64, i64 %i.am
  %n.vec = sub i64 %i.ah, %i.ao                   ; 2 uses
  %i.ap = shl i64 %n.vec, 1                       ; 3 uses
  %i.aq = add i64 %i.ad, %i.ap
  %i.ar = getelementptr i8, ptr %i.y, i64 %i.ap
  %i.as = add i64 %i.ap, %i.ac
  %invariant.gep = getelementptr i8, ptr %.sroa.09.0.copyload, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.at ; 4 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.at ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <16 x i16>, ptr %gep, align 1
  %wide.load46 = load <16 x i16>, ptr %i.au, align 1
  %wide.load47 = load <16 x i16>, ptr %i.av, align 1
  %wide.load48 = load <16 x i16>, ptr %i.aw, align 1
  %i.ax = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.load)
  %i.ay = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.load46)
  %i.az = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.load47)
  %i.ba = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.load48)
  %i.bb = getelementptr i8, ptr %next.gep, i64 32
  %i.bc = getelementptr i8, ptr %next.gep, i64 64
  %i.bd = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %i.ax, ptr %next.gep, align 2, !tbaa !39
  store <16 x i16> %i.ay, ptr %i.bb, align 2, !tbaa !39
  store <16 x i16> %i.az, ptr %i.bc, align 2, !tbaa !39
  store <16 x i16> %i.ba, ptr %i.bd, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %_ZN8rawspeed10ByteStream3getItEET_v.exit.preheader, label %vector.body, !llvm.loop !165

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %.not.i.i.i.i.i.us42, label %.split.us, label %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.lr.ph

_ZN8rawspeed10ByteStream3getItEET_v.exit.us.lr.ph: ; preds = %.lr.ph.split.us.preheader
  %7 = sub i64 %i.z, %i.aa
  %8 = add i64 %7, -2
  %i.bf = lshr i64 %8, 1
  %9 = sub nuw nsw i64 %i.e, %i.ac
  %10 = add nsw i64 %9, -2
  %i.bg = lshr i64 %10, 1
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bg) ; 2 uses
  %i.bi = add nuw i64 %i.bh, 1                    ; 2 uses
  %min.iters.check55 = icmp samesign ult i64 %i.bh, 64
  %i.bj = sub i64 %i.z, %i.aa
  %i.bk = trunc i64 %i.bj to i1
  %or.cond72 = or i1 %min.iters.check55, %i.bk
  br i1 %or.cond72, label %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.preheader, label %vector.memcheck52

vector.memcheck52:                                ; preds = %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.lr.ph
  %i.bl = add i64 %.sroa.09.0.copyload45, %i.ac
  %i.bm = sub i64 %i.bl, %i.aa
  %diff.check53 = icmp ugt i64 %i.bm, -128
  br i1 %diff.check53, label %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck52
  %i.bn = and i64 %i.bi, 63                       ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 64, i64 %i.bn
  %n.vec57 = sub i64 %i.bi, %i.bp                 ; 2 uses
  %i.bq = shl i64 %n.vec57, 1                     ; 3 uses
  %i.br = add i64 %i.ad, %i.bq
  %i.bs = getelementptr i8, ptr %i.y, i64 %i.bq
  %i.bt = add i64 %i.bq, %i.ac
  %invariant.gep76 = getelementptr i8, ptr %.sroa.09.0.copyload, i64 %i.ac
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body58 ] ; 2 uses
  %i.bu = shl i64 %index59, 1                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.y, i64 %i.bu ; 4 uses
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %i.bu ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %gep77, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %gep77, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %gep77, i64 96
  %wide.load61 = load <16 x i16>, ptr %gep77, align 1
  %wide.load62 = load <16 x i16>, ptr %i.bv, align 1
  %wide.load63 = load <16 x i16>, ptr %i.bw, align 1
  %wide.load64 = load <16 x i16>, ptr %i.bx, align 1
  %i.by = getelementptr i8, ptr %next.gep60, i64 32
  %i.bz = getelementptr i8, ptr %next.gep60, i64 64
  %i.ca = getelementptr i8, ptr %next.gep60, i64 96
  store <16 x i16> %wide.load61, ptr %next.gep60, align 2, !tbaa !39
  store <16 x i16> %wide.load62, ptr %i.by, align 2, !tbaa !39
  store <16 x i16> %wide.load63, ptr %i.bz, align 2, !tbaa !39
  store <16 x i16> %wide.load64, ptr %i.ca, align 2, !tbaa !39
  %index.next65 = add nuw i64 %index59, 64        ; 2 uses
  %i.cb = icmp eq i64 %index.next65, %n.vec57
  br i1 %i.cb, label %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.preheader, label %vector.body58, !llvm.loop !166

_ZN8rawspeed10ByteStream3getItEET_v.exit.us.preheader: ; preds = %vector.body58, %vector.memcheck52, %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.lr.ph
  %.ph = phi i64 [ %i.ad, %vector.memcheck52 ], [ %i.ad, %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.lr.ph ], [ %i.br, %vector.body58 ]
  %.sroa.06.015.us44.ph = phi ptr [ %i.y, %vector.memcheck52 ], [ %i.y, %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.lr.ph ], [ %i.bs, %vector.body58 ]
  %indvars.iv2043.ph = phi i64 [ %i.ac, %vector.memcheck52 ], [ %i.ac, %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.lr.ph ], [ %i.bt, %vector.body58 ]
  br label %_ZN8rawspeed10ByteStream3getItEET_v.exit.us

.lr.ph.split.us:                                  ; preds = %_ZN8rawspeed10ByteStream3getItEET_v.exit.us
  %i.cc = add nuw nsw i64 %i.cd, 2                ; 2 uses
  %.not.i.i.i.i.i.us = icmp samesign ugt i64 %i.cc, %i.e
  br i1 %.not.i.i.i.i.i.us, label %.split.us, label %_ZN8rawspeed10ByteStream3getItEET_v.exit.us, !llvm.loop !167

_ZN8rawspeed10ByteStream3getItEET_v.exit.us:      ; preds = %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.preheader, %.lr.ph.split.us
  %i.cd = phi i64 [ %i.cc, %.lr.ph.split.us ], [ %.ph, %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.preheader ] ; 2 uses
  %.sroa.06.015.us44 = phi ptr [ %i.cf, %.lr.ph.split.us ], [ %.sroa.06.015.us44.ph, %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.preheader ] ; 2 uses
  %indvars.iv2043 = phi i64 [ %i.cd, %.lr.ph.split.us ], [ %indvars.iv2043.ph, %_ZN8rawspeed10ByteStream3getItEET_v.exit.us.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 %indvars.iv2043
  %.0.copyload.i.i.i.i.i.us = load i16, ptr %i.ce, align 1
  store i16 %.0.copyload.i.i.i.i.i.us, ptr %.sroa.06.015.us44, align 2, !tbaa !39
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.06.015.us44, i64 2 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.x
  br i1 %i.cg, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN8rawspeed10ByteStream3getItEET_v.exit, %_ZN8rawspeed10ByteStream3getItEET_v.exit.us, %_ZNSt6vectorItSaItEE6resizeEm.exit
  ret void

.lr.ph.split:                                     ; preds = %_ZN8rawspeed10ByteStream3getItEET_v.exit
  %i.ch = add nuw nsw i64 %i.ci, 2                ; 2 uses
  %.not.i.i.i.i.i = icmp samesign ugt i64 %i.ch, %i.e
  br i1 %.not.i.i.i.i.i, label %.split.us, label %_ZN8rawspeed10ByteStream3getItEET_v.exit, !llvm.loop !168

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #20
  unreachable

_ZN8rawspeed10ByteStream3getItEET_v.exit:         ; preds = %_ZN8rawspeed10ByteStream3getItEET_v.exit.preheader, %.lr.ph.split
  %i.ci = phi i64 [ %i.ch, %.lr.ph.split ], [ %.ph73, %_ZN8rawspeed10ByteStream3getItEET_v.exit.preheader ] ; 2 uses
  %.sroa.06.01541 = phi ptr [ %i.cl, %.lr.ph.split ], [ %.sroa.06.01541.ph, %_ZN8rawspeed10ByteStream3getItEET_v.exit.preheader ] ; 2 uses
  %indvars.iv40 = phi i64 [ %i.ci, %.lr.ph.split ], [ %indvars.iv40.ph, %_ZN8rawspeed10ByteStream3getItEET_v.exit.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 %indvars.iv40
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.cj, align 1
  %i.ck = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i)
  store i16 %i.ck, ptr %.sroa.06.01541, align 2, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.06.01541, i64 2 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.x
  br i1 %i.cm, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !51
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !41
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !51
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !51
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #28
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !49
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

end_hunk_0
