Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLVMIRConversionGen?download=true
inline.NumInlined: 1205
inline.NumDeleted: 648
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL18emitOneMLIRBuilderRKN4llvm6RecordERNS_11raw_ostreamENS_12function_refIFNS_5TwineES2_EEE:bb.a
  %i.jv = icmp ult i64 %i.ju, 4
  br i1 %i.jv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit170
  %i.jw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i169, ptr noundef nonnull @.str.71, i64 noundef 4) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit173

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit170
  store i32 175841321, ptr %i.jr, align 1
  %i.jx = load ptr, ptr %i.jq, align 8, !tbaa !85
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store ptr %i.jy, ptr %i.jq, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit173

_ZN4llvm11raw_ostreamlsEPKc.exit173:              ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  %i.jz = load ptr, ptr %i.as, align 8, !tbaa !96, !nonnull !52, !align !53 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !94
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !72
  %i.kd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.ka, i64 noundef %i.kc) #16 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !84
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 32 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !85 ; 2 uses
  %i.ki = icmp eq ptr %i.kf, %i.kh
  br i1 %i.ki, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit173
  %i.kj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.kd, ptr noundef nonnull @.str.36, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit176

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit173
  store i8 10, ptr %i.kh, align 1
  %i.kk = load ptr, ptr %i.kg, align 8, !tbaa !85
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  store ptr %i.kl, ptr %i.kg, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit176

_ZN4llvm11raw_ostreamlsEPKc.exit176:              ; preds = %bb.an, %bb.ao
  %i.km = load ptr, ptr %i.ax, align 8, !tbaa !96, !nonnull !52, !align !53 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !94
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !72
  %i.kq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.kn, i64 noundef %i.kp) #16 ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !84
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 32 ; 3 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !85 ; 3 uses
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = icmp ugt i64 %.sroa.9.0.lcssa, %i.kx
  br i1 %i.ky, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit176
  %i.kz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.kq, ptr noundef %.sroa.0231.0.lcssa, i64 noundef %.sroa.9.0.lcssa) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  %.pre348 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit179

bb.aq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit176
  %.not.i177 = icmp eq i64 %.sroa.9.0.lcssa, 0
  br i1 %.not.i177, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit179, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ku, ptr align 1 %.sroa.0231.0.lcssa, i64 %.sroa.9.0.lcssa, i1 false)
  %i.la = load ptr, ptr %i.kt, align 8, !tbaa !85
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %.sroa.9.0.lcssa ; 2 uses
  store ptr %i.lb, ptr %i.kt, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit179

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit179:   ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.lc = phi ptr [ %.pre348, %bb.ap ], [ %i.lb, %bb.ar ], [ %i.ku, %bb.aq ] ; 2 uses
  %.0.i178 = phi ptr [ %i.kz, %bb.ap ], [ %i.kq, %bb.ar ], [ %i.kq, %bb.aq ] ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i178, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !84
  %i.lf = icmp eq ptr %i.le, %i.lc
  br i1 %i.lf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit179
  %i.lg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i178, ptr noundef nonnull @.str.36, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit182

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit179
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i178, i64 32 ; 2 uses
  store i8 10, ptr %i.lc, align 1
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !85
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  store ptr %i.lj, ptr %i.lh, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit182

_ZN4llvm11raw_ostreamlsEPKc.exit182:              ; preds = %bb.as, %bb.at
  %i.lk = load ptr, ptr %i.jd, align 8, !tbaa !84
  %i.ll = load ptr, ptr %i.jf, align 8, !tbaa !85 ; 2 uses
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = icmp ult i64 %i.lo, 20
  br i1 %i.lp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit182
  %i.lq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.37, i64 noundef 20) #16 ; 0 uses
  %.pre349 = load ptr, ptr %i.jf, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185

bb.av:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ll, ptr noundef nonnull align 1 dereferenceable(20) @.str.37, i64 20, i1 false)
  %i.lr = load ptr, ptr %i.jf, align 8, !tbaa !85
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 20 ; 2 uses
  store ptr %i.ls, ptr %i.jf, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185

_ZN4llvm11raw_ostreamlsEPKc.exit185:              ; preds = %bb.au, %bb.av
  %i.lt = phi ptr [ %.pre349, %bb.au ], [ %i.ls, %bb.av ] ; 2 uses
  %i.lu = load ptr, ptr %i.jd, align 8, !tbaa !84
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.lt to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = icmp ult i64 %i.lx, 2
  br i1 %i.ly, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit185
  %i.lz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.38, i64 noundef 2) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit188

bb.ax:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit185
  store i16 2685, ptr %i.lt, align 1
  %i.ma = load ptr, ptr %i.jf, align 8, !tbaa !85
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  store ptr %i.mb, ptr %i.jf, align 8, !tbaa !85
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit188

_ZN4llvm11raw_ostreamlsEPKc.exit188:              ; preds = %bb.ax, %bb.aw, %.thread311
  %.sroa.062.5 = phi i8 [ 0, %.thread311 ], [ 1, %bb.aw ], [ 1, %bb.ax ]
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.mc = load ptr, ptr %9, align 8, !tbaa !94    ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.am
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit188
  %i.me = load i64, ptr %i.am, align 8, !tbaa !66
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.mg = load ptr, ptr %8, align 8, !tbaa !94    ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.ak
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.mi = load i64, ptr %i.ak, align 8, !tbaa !66
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %bb.f
  %.sroa.062.6 = phi i8 [ 0, %bb.f ], [ %.sroa.062.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ]
  %i.mk = load ptr, ptr %6, align 8, !tbaa !111   ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ml = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !112
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = sub i64 %i.mn, %i.mo
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.mp) #17
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit, %.loopexit
  %.sroa.062.8 = phi i8 [ 0, %.loopexit ], [ %.sroa.062.6, %_ZNSt6vectorIlSaIlEED2Ev.exit ], [ 1, %_ZNK4llvm6Record8getValueENS_9StringRefE.exit ]
  call void @_ZN4mlir6tblgen8OperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(2033) dereferenceable(2033) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i8 %.sroa.062.8
}

declare void @_ZNK4llvm6Record20getValueAsListOfIntsENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::vector.128") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE15_M_range_insertIN4llvm6detail15SafeIntIteratorIlLb0EEEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not81 = icmp eq i64 %2, %3
  br i1 %.not81, label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub i64 %3, %2                           ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110  ; 12 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %.not = icmp ult i64 %i.i, %i.a
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.g, %i.j                       ; 5 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 9 uses
  %i.m = icmp ugt i64 %i.l, %i.a
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIN4llvm6detail15SafeIntIteratorIlLb0EEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.a
  %i.o = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.a, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !305

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %i.a, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.e, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre84 = load ptr, ptr %i.d, align 8, !tbaa !110
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.a, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !86
  store i64 %i.s, ptr %i.e, align 8, !tbaa !86
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = phi ptr [ %.pre84, %bb.e ], [ %i.e, %bb.f ], [ %i.e, %bb.g ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.a
  store ptr %i.u, ptr %i.d, align 8, !tbaa !110
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !305

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !86
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !86
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ad = icmp sgt i64 %i.a, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit
  %min.iters.check121 = icmp ult i64 %i.a, 4
  br i1 %min.iters.check121, label %.lr.ph.i.i.i.i.i, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec123 = and i64 %i.a, 9223372036854775804   ; 4 uses
  %i.ae = and i64 %i.a, 3
  %i.af = shl i64 %n.vec123, 3
  %i.ag = getelementptr i8, ptr %1, i64 %i.af
  %i.ah = add i64 %2, %n.vec123
  %broadcast.splatinsert124 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat125 = shufflevector <2 x i64> %broadcast.splatinsert124, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction126 = add <2 x i64> %broadcast.splat125, <i64 0, i64 1>
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph122
  %index128 = phi i64 [ 0, %vector.ph122 ], [ %index.next132, %vector.body127 ] ; 2 uses
  %vec.ind129 = phi <2 x i64> [ %induction126, %vector.ph122 ], [ %vec.ind.next133, %vector.body127 ] ; 3 uses
  %step.add130 = add <2 x i64> %vec.ind129, splat (i64 2)
  %i.ai = shl i64 %index128, 3
  %next.gep131 = getelementptr i8, ptr %1, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep131, i64 16
  store <2 x i64> %vec.ind129, ptr %next.gep131, align 8, !tbaa !86
  store <2 x i64> %step.add130, ptr %i.aj, align 8, !tbaa !86
  %index.next132 = add nuw i64 %index128, 4       ; 2 uses
  %vec.ind.next133 = add <2 x i64> %vec.ind129, splat (i64 4)
  %i.ak = icmp eq i64 %index.next132, %n.vec123
  br i1 %i.ak, label %middle.block134, label %vector.body127, !llvm.loop !300

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.a, %n.vec123
  br i1 %cmp.n135, label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %middle.block134, %.lr.ph.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.ph = phi i64 [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block134 ] ; 2 uses
  %.049.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block134 ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.ph = phi i64 [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block134 ] ; 3 uses
  store i64 %.sroa.05.08.i.i.i.i.i.ph, ptr %.049.i.i.i.i.i.ph, align 8, !tbaa !86
  %i.al = icmp samesign ugt i64 %.010.i.i.i.i.i.ph, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.1, label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.ph, i64 8
  %i.an = add i64 %.sroa.05.08.i.i.i.i.i.ph, 1
  store i64 %i.an, ptr %i.am, align 8, !tbaa !86
  %i.ao = icmp eq i64 %.010.i.i.i.i.i.ph, 3
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.2, label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.ap = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.ph, i64 16
  %i.aq = add i64 %.sroa.05.08.i.i.i.i.i.ph, 2
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !86
  br label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit

_ZSt9__advanceIN4llvm6detail15SafeIntIteratorIlLb0EEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ar = icmp eq i64 %i.k, 8
  %i.as = add i64 %i.l, %2                        ; 4 uses
  %i.at = sub i64 %3, %i.as                       ; 6 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceIN4llvm6detail15SafeIntIteratorIlLb0EEElEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.at, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775804     ; 4 uses
  %i.av = and i64 %i.at, 3
  %i.aw = shl i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %i.e, i64 %i.aw
  %i.ay = add i64 %i.as, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 2)
  %i.az = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !86
  store <2 x i64> %step.add, ptr %i.ba, align 8, !tbaa !86
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ] ; 3 uses
  store i64 %.sroa.05.08.i.i.i.i.i.i.i.i.ph, ptr %.049.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !86
  %i.bc = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.i.i.1, label %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.ph, i64 8
  %i.be = add i64 %.sroa.05.08.i.i.i.i.i.i.i.i.ph, 1
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !86
  %i.bf = icmp eq i64 %.010.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i.i.i.2, label %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  %i.bg = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.ph, i64 16
  %i.bh = add i64 %.sroa.05.08.i.i.i.i.i.i.i.i.ph, 2
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !86
  br label %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %middle.block, %_ZSt9__advanceIN4llvm6detail15SafeIntIteratorIlLb0EEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bi = sub nuw i64 %i.a, %i.l
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bi ; 5 uses
  store ptr %i.bj, ptr %i.d, align 8, !tbaa !110
  %i.bk = icmp sgt i64 %i.k, 8
  br i1 %i.bk, label %bb.k, label %bb.l, !prof !305

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bj, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !110
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit43

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit
  br i1 %i.ar, label %bb.m, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit43

bb.m:                                             ; preds = %bb.l
  %i.bl = load i64, ptr %1, align 8, !tbaa !86
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !86
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit43

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit43: ; preds = %bb.k, %bb.l, %bb.m
  %i.bm = phi ptr [ %.pre, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.k
  store ptr %i.bn, ptr %i.d, align 8, !tbaa !110
  %i.bo = icmp sgt i64 %i.l, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i45.preheader, label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i45.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit43
  %min.iters.check102 = icmp ult i64 %i.l, 4
  br i1 %min.iters.check102, label %.lr.ph.i.i.i.i.i45, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i45.preheader
  %n.vec104 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.bp = and i64 %i.l, 3
  %i.bq = shl i64 %n.vec104, 3
  %i.br = getelementptr i8, ptr %1, i64 %i.bq
  %i.bs = add i64 %2, %n.vec104
  %broadcast.splatinsert105 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat106 = shufflevector <2 x i64> %broadcast.splatinsert105, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction107 = add <2 x i64> %broadcast.splat106, <i64 0, i64 1>
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph103
  %index109 = phi i64 [ 0, %vector.ph103 ], [ %index.next113, %vector.body108 ] ; 2 uses
  %vec.ind110 = phi <2 x i64> [ %induction107, %vector.ph103 ], [ %vec.ind.next114, %vector.body108 ] ; 3 uses
  %step.add111 = add <2 x i64> %vec.ind110, splat (i64 2)
  %i.bt = shl i64 %index109, 3
  %next.gep112 = getelementptr i8, ptr %1, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep112, i64 16
  store <2 x i64> %vec.ind110, ptr %next.gep112, align 8, !tbaa !86
  store <2 x i64> %step.add111, ptr %i.bu, align 8, !tbaa !86
  %index.next113 = add nuw i64 %index109, 4       ; 2 uses
  %vec.ind.next114 = add <2 x i64> %vec.ind110, splat (i64 4)
  %i.bv = icmp eq i64 %index.next113, %n.vec104
  br i1 %i.bv, label %middle.block115, label %vector.body108, !llvm.loop !302

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.l, %n.vec104
  br i1 %cmp.n116, label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i45

.lr.ph.i.i.i.i.i45:                               ; preds = %middle.block115, %.lr.ph.i.i.i.i.i45.preheader
  %.010.i.i.i.i.i46.ph = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i45.preheader ], [ %i.bp, %middle.block115 ] ; 2 uses
  %.049.i.i.i.i.i47.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i45.preheader ], [ %i.br, %middle.block115 ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i48.ph = phi i64 [ %2, %.lr.ph.i.i.i.i.i45.preheader ], [ %i.bs, %middle.block115 ] ; 3 uses
  store i64 %.sroa.05.08.i.i.i.i.i48.ph, ptr %.049.i.i.i.i.i47.ph, align 8, !tbaa !86
  %i.bw = icmp samesign ugt i64 %.010.i.i.i.i.i46.ph, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i45.1, label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i45.1:                             ; preds = %.lr.ph.i.i.i.i.i45
  %i.bx = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i47.ph, i64 8
  %i.by = add i64 %.sroa.05.08.i.i.i.i.i48.ph, 1
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !86
  %i.bz = icmp eq i64 %.010.i.i.i.i.i46.ph, 3
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i45.2, label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i45.2:                             ; preds = %.lr.ph.i.i.i.i.i45.1
  %i.ca = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i47.ph, i64 16
  %i.cb = add i64 %.sroa.05.08.i.i.i.i.i48.ph, 2
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !86
  br label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit

bb.n:                                             ; preds = %bb.b
  %i.cc = load ptr, ptr %0, align 8, !tbaa !111   ; 5 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.ce = sub i64 %i.g, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 4 uses
  %i.cg = sub nsw i64 1152921504606846975, %i.cf
  %i.ch = icmp ult i64 %i.cg, %i.a
  br i1 %i.ch, label %bb.o, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #18
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.a)
  %i.ci = add nsw i64 %.sroa.speculated.i, %i.cf  ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.cf
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 1152921504606846975)
  %i.cl = select i1 %i.cj, i64 1152921504606846975, i64 %i.ck ; 3 uses
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #19
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit, %bb.p
  %i.co = phi ptr [ %i.cn, %bb.p ], [ null, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cp = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cq = sub i64 %i.cp, %i.cd                    ; 4 uses
  %i.cr = icmp sgt i64 %i.cq, 8
  br i1 %i.cr, label %bb.q, label %bb.r, !prof !305

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.co, ptr align 8 %i.cc, i64 %i.cq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
  %i.cs = icmp eq i64 %i.cq, 8
  br i1 %i.cs, label %bb.s, label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !86
  store i64 %i.ct, ptr %i.co, align 8, !tbaa !86
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.cu = getelementptr inbounds i8, ptr %i.co, i64 %i.cq ; 3 uses
  %4 = tail call i64 @llvm.smin.i64(i64 %i.a, i64 1)
  %5 = add i64 %3, 1
  %6 = add i64 %2, %4
  %i.cv = sub i64 %5, %6                          ; 3 uses
  %min.iters.check140 = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %n.vec142 = and i64 %i.cv, -4                   ; 5 uses
  %i.cw = sub i64 %i.a, %n.vec142
  %i.cx = shl i64 %n.vec142, 3
  %i.cy = getelementptr i8, ptr %i.cu, i64 %i.cx  ; 2 uses
  %i.cz = add i64 %2, %n.vec142
  %broadcast.splatinsert143 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat144 = shufflevector <2 x i64> %broadcast.splatinsert143, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction145 = add <2 x i64> %broadcast.splat144, <i64 0, i64 1>
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body146 ] ; 2 uses
  %vec.ind148 = phi <2 x i64> [ %induction145, %vector.ph141 ], [ %vec.ind.next152, %vector.body146 ] ; 3 uses
  %step.add149 = add <2 x i64> %vec.ind148, splat (i64 2)
  %i.da = shl i64 %index147, 3
  %next.gep150 = getelementptr i8, ptr %i.cu, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep150, i64 16
  store <2 x i64> %vec.ind148, ptr %next.gep150, align 8, !tbaa !86
  store <2 x i64> %step.add149, ptr %i.db, align 8, !tbaa !86
  %index.next151 = add nuw i64 %index147, 4       ; 2 uses
  %vec.ind.next152 = add <2 x i64> %vec.ind148, splat (i64 4)
  %i.dc = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.dc, label %middle.block153, label %vector.body146, !llvm.loop !303

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %i.cv, %n.vec142
  br i1 %cmp.n154, label %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit55, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader

.lr.ph.i.i.i.i.i.i.i.i51.preheader:               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit, %middle.block153
  %.010.i.i.i.i.i.i.i.i52.ph = phi i64 [ %i.a, %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit ], [ %i.cw, %middle.block153 ]
  %.049.i.i.i.i.i.i.i.i53.ph = phi ptr [ %i.cu, %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit ], [ %i.cy, %middle.block153 ]
  %.sroa.05.08.i.i.i.i.i.i.i.i54.ph = phi i64 [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit ], [ %i.cz, %middle.block153 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i.i.i51:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i51.preheader, %.lr.ph.i.i.i.i.i.i.i.i51
  %.010.i.i.i.i.i.i.i.i52 = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i51 ], [ %.010.i.i.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i.i.i51.preheader ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i53 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i51 ], [ %.049.i.i.i.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i.i.i.i51.preheader ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i54 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i51 ], [ %.sroa.05.08.i.i.i.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i.i.i.i51.preheader ] ; 2 uses
  store i64 %.sroa.05.08.i.i.i.i.i.i.i.i54, ptr %.049.i.i.i.i.i.i.i.i53, align 8, !tbaa !86
  %i.dd = add i64 %.sroa.05.08.i.i.i.i.i.i.i.i54, 1
  %i.de = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i53, i64 8 ; 2 uses
  %i.df = add nsw i64 %.010.i.i.i.i.i.i.i.i52, -1
  %i.dg = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i52, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i51, label %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit55, !llvm.loop !304

_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit55: ; preds = %.lr.ph.i.i.i.i.i.i.i.i51, %middle.block153
  %.lcssa = phi ptr [ %i.cy, %middle.block153 ], [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i51 ] ; 3 uses
  %i.dh = sub i64 %i.g, %i.cp                     ; 4 uses
  %i.di = icmp sgt i64 %i.dh, 8
  br i1 %i.di, label %bb.t, label %bb.u, !prof !305

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit55
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.lcssa, ptr align 8 %1, i64 %i.dh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit56

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIN4llvm6detail15SafeIntIteratorIlLb0EEEPllET0_T_S6_S5_RSaIT1_E.exit55
  %i.dj = icmp eq i64 %i.dh, 8
  br i1 %i.dj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit56

bb.v:                                             ; preds = %bb.u
  %i.dk = load i64, ptr %1, align 8, !tbaa !86
  store i64 %i.dk, ptr %.lcssa, align 8, !tbaa !86
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit56

_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit56: ; preds = %bb.t, %bb.u, %bb.v
  %i.dl = getelementptr inbounds i8, ptr %.lcssa, i64 %i.dh
  %.not.i57 = icmp eq ptr %i.cc, null
  br i1 %.not.i57, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit56
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.do) #17
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit56, %bb.w
  store ptr %i.co, ptr %0, align 8, !tbaa !111
  store ptr %i.dl, ptr %i.d, align 8, !tbaa !110
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cl
  store ptr %i.dp, ptr %i.b, align 8, !tbaa !112
  br label %_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit

_ZSt4copyIN4llvm6detail15SafeIntIteratorIlLb0EEEN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i45, %.lr.ph.i.i.i.i.i45.1, %.lr.ph.i.i.i.i.i45.2, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %middle.block115, %middle.block134, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit43, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare { ptr, i64 } @_ZNK4mlir6tblgen8Operator10getArgNameEi(ptr noundef nonnull align 8 dereferenceable(2033), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRlEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #1 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !52, !align !53
  tail call void @_ZN4llvm15format_providerIlvE6formatERKlRNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15format_providerIlvE6formatERKlRNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 12 uses
  store ptr %2, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %3, ptr %i.c, align 8
  %i.d = call i64 @_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.e = and i64 %i.d, 4294967296
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.034.0.extract.trunc = trunc i64 %i.d to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.f = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  %i.g = load i64, ptr %i.b, align 8
  %spec.select.i = select i1 %i.f, i64 0, i64 %i.g ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.h = call noundef zeroext i1 @_ZN4llvm18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef %.sroa.034.0.extract.trunc) #16
  %i.i = add i64 %spec.select.i, 2
  %.0.i = select i1 %i.h, i64 %i.i, i64 %spec.select.i
  %i.j = load i64, ptr %0, align 8, !tbaa !86
  call void @_ZN4llvm9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.j, i32 noundef %.sroa.034.0.extract.trunc, i64 %.0.i, i8 1) #16
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !113  ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN4llvm9StringRef13consume_frontES0_.exit26, label %_ZNK4llvm9StringRef11starts_withEc.exit.i

_ZNK4llvm9StringRef11starts_withEc.exit.i:        ; preds = %.critedge
  %i.m = load ptr, ptr %4, align 8, !tbaa !114    ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !66
  %i.o = icmp eq i8 %i.n, 43                      ; 4 uses
  br i1 %i.o, label %_ZN4llvm9StringRef13consume_frontEc.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZN4llvm9StringRef13consume_frontEc.exit:         ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = add i64 %i.k, -1                         ; 3 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !87
  store i64 %i.q, ptr %i.c, align 8, !tbaa !86
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_ZN4llvm9StringRef13consume_frontES0_.exit26, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i, %_ZN4llvm9StringRef13consume_frontEc.exit
  %i.r = phi i64 [ %i.q, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ %i.k, %_ZNK4llvm9StringRef11starts_withEc.exit.i ]
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !114 ; 2 uses
  %lhsc = load i8, ptr %.pre.i, align 1
  %i.s = icmp eq i8 %lhsc, 78
  br i1 %i.s, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i11

_ZNK4llvm9StringRef11starts_withES0_.exit.i11:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i10 = load ptr, ptr %4, align 8, !tbaa !114 ; 2 uses
  %lhsc38 = load i8, ptr %.pre.i10, align 1
  %i.t = icmp eq i8 %lhsc38, 110
  br i1 %i.t, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i17

_ZNK4llvm9StringRef11starts_withES0_.exit.i17:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i11
  %.pre.i16 = load ptr, ptr %4, align 8, !tbaa !114 ; 2 uses
  %lhsc39 = load i8, ptr %.pre.i16, align 1
  %i.u = icmp eq i8 %lhsc39, 68
  br i1 %i.u, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i23

_ZNK4llvm9StringRef11starts_withES0_.exit.i23:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i17
  %.pre.i22 = load ptr, ptr %4, align 8, !tbaa !114 ; 2 uses
  %lhsc40 = load i8, ptr %.pre.i22, align 1
  %i.v = icmp eq i8 %lhsc40, 100
  br i1 %i.v, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZN4llvm9StringRef13consume_frontES0_.exit26

_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i23, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11, %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i22.sink = phi ptr [ %.pre.i16, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ %.pre.i10, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ %.pre.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %.pre.i22, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %.ph = phi i1 [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %.0.ph = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ 1, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ 1, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i22.sink, i64 1
  %i.x = add i64 %i.r, -1
  store ptr %i.w, ptr %4, align 8, !tbaa !87
  store i64 %i.x, ptr %i.c, align 8, !tbaa !86
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit26

_ZN4llvm9StringRef13consume_frontES0_.exit26:     ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, %_ZN4llvm9StringRef13consume_frontEc.exit, %.critedge, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23
  %i.y = phi i1 [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ true, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ false, %.critedge ]
  %.0 = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.0.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ 0, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ 0, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.z = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  %i.aa = load i64, ptr %i.a, align 8
  %spec.select = select i1 %i.z, i64 0, i64 %i.aa
end_hunk_0
begin_hunk_1_@_ZNK4mlir6tblgen8EnumCase6getDefEv
declare noundef nonnull align 8 dereferenceable(192) ptr @_ZNK4mlir6tblgen8EnumCase6getDefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir6tblgen8EnumCaseC2EPKN4llvm6RecordE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.b, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %2, i64 %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  %i.e = load i64, ptr %i.a, align 8
  %spec.select.i.i = select i1 %i.d, i64 -1, i64 %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i, %bb.a
  %.0.i.i = phi i64 [ -1, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i ]
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !tbaa !87 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !86
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i, i64 %.0.i.i) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %.sroa.speculated.i.i.i, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i) #16 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorINS_9StringRefEEclERNS_11raw_ostreamES3_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorINS_9StringRefEEclERNS_11raw_ostreamES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %.sroa.0.0.copyload.i.i, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.speculated.i.i.i
  store ptr %i.p, ptr %i.h, align 8, !tbaa !85
  br label %_ZN4llvm7support6detail13FormatFunctorINS_9StringRefEEclERNS_11raw_ostreamES3_.exit

_ZN4llvm7support6detail13FormatFunctorINS_9StringRefEEclERNS_11raw_ostreamES3_.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

declare noundef ptr @_ZNK4llvm6Record18getValueAsListInitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir6tblgen8EnumCaseC2EPKN4llvm7DefInitE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_LLVMIRConversionGen.cpp() #11 section ".text.startup" {
bb.a:
  %0 = alloca %"class.std::function", align 8     ; 9 uses
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr @_ZL12emitBuildersRKN4llvm12RecordKeeperERNS_11raw_ostreamE, ptr %5, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E9_M_invokeERKSt9_Any_dataS3_S5_, ptr %i.b, align 8, !tbaa !333
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.a, align 8, !tbaa !334
  call void @_ZN4mlir15GenRegistrationC1EN4llvm9StringRefES2_RKSt8functionIFbRKNS1_12RecordKeeperERNS1_11raw_ostreamEEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZL20genLLVMIRConversions, ptr nonnull @.str, i64 22, ptr nonnull @.str.1, i64 28, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !334  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %__cxx_global_var_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #16, !inline_history !325 ; 0 uses
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.h, align 8
  store ptr @_ZL18emitOpMLIRBuildersRKN4llvm12RecordKeeperERNS_11raw_ostreamE, ptr %4, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E9_M_invokeERKSt9_Any_dataS3_S5_, ptr %i.g, align 8, !tbaa !333
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.f, align 8, !tbaa !334
  call void @_ZN4mlir15GenRegistrationC1EN4llvm9StringRefES2_RKSt8functionIFbRKNS1_12RecordKeeperERNS1_11raw_ostreamEEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZL26genOpFromLLVMIRConversions, ptr nonnull @.str.3, i64 30, ptr nonnull @.str.4, i64 47, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !334  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %__cxx_global_var_init.2.exit, label %bb.c

bb.c:                                             ; preds = %__cxx_global_var_init.exit
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #16, !inline_history !326 ; 0 uses
  br label %__cxx_global_var_init.2.exit

__cxx_global_var_init.2.exit:                     ; preds = %__cxx_global_var_init.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.m, align 8
  store ptr @_ZL20emitIntrMLIRBuildersRKN4llvm12RecordKeeperERNS_11raw_ostreamE, ptr %3, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E9_M_invokeERKSt9_Any_dataS3_S5_, ptr %i.l, align 8, !tbaa !333
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.k, align 8, !tbaa !334
  call void @_ZN4mlir15GenRegistrationC1EN4llvm9StringRefES2_RKSt8functionIFbRKNS1_12RecordKeeperERNS1_11raw_ostreamEEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZL28genIntrFromLLVMIRConversions, ptr nonnull @.str.6, i64 32, ptr nonnull @.str.7, i64 47, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !334  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.n, null
  br i1 %.not.i.i2, label %__cxx_global_var_init.5.exit, label %bb.d

bb.d:                                             ; preds = %__cxx_global_var_init.2.exit
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #16, !inline_history !327 ; 0 uses
  br label %__cxx_global_var_init.5.exit

__cxx_global_var_init.5.exit:                     ; preds = %__cxx_global_var_init.2.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.r, align 8
  store ptr @_ZL22emitEnumConversionDefsILb1EEbRKN4llvm12RecordKeeperERNS0_11raw_ostreamE, ptr %2, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E9_M_invokeERKSt9_Any_dataS3_S5_, ptr %i.q, align 8, !tbaa !333
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.p, align 8, !tbaa !334
  call void @_ZN4mlir15GenRegistrationC1EN4llvm9StringRefES2_RKSt8functionIFbRKNS1_12RecordKeeperERNS1_11raw_ostreamEEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZL23genEnumToLLVMConversion, ptr nonnull @.str.9, i64 30, ptr nonnull @.str.10, i64 44, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !334  ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.s, null
  br i1 %.not.i.i3, label %__cxx_global_var_init.8.exit, label %bb.e

bb.e:                                             ; preds = %__cxx_global_var_init.5.exit
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #16, !inline_history !328 ; 0 uses
  br label %__cxx_global_var_init.8.exit

__cxx_global_var_init.8.exit:                     ; preds = %__cxx_global_var_init.5.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.w, align 8
  store ptr @_ZL22emitEnumConversionDefsILb0EEbRKN4llvm12RecordKeeperERNS0_11raw_ostreamE, ptr %1, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E9_M_invokeERKSt9_Any_dataS3_S5_, ptr %i.v, align 8, !tbaa !333
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.u, align 8, !tbaa !334
  call void @_ZN4mlir15GenRegistrationC1EN4llvm9StringRefES2_RKSt8functionIFbRKNS1_12RecordKeeperERNS1_11raw_ostreamEEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZL25genEnumFromLLVMConversion, ptr nonnull @.str.12, i64 32, ptr nonnull @.str.13, i64 46, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !334  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i4, label %__cxx_global_var_init.11.exit, label %bb.f

bb.f:                                             ; preds = %__cxx_global_var_init.8.exit
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #16, !inline_history !329 ; 0 uses
  br label %__cxx_global_var_init.11.exit

__cxx_global_var_init.11.exit:                    ; preds = %__cxx_global_var_init.8.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ab, align 8
  store ptr @_ZL25emitConvertibleIntrinsicsRKN4llvm12RecordKeeperERNS_11raw_ostreamE, ptr %0, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E9_M_invokeERKSt9_Any_dataS3_S5_, ptr %i.aa, align 8, !tbaa !333
  store ptr @_ZNSt17_Function_handlerIFbRKN4llvm12RecordKeeperERNS0_11raw_ostreamEEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.z, align 8, !tbaa !334
  call void @_ZN4mlir15GenRegistrationC1EN4llvm9StringRefES2_RKSt8functionIFbRKNS1_12RecordKeeperERNS1_11raw_ostreamEEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZL30genConvertibleLLVMIRIntrinsics, ptr nonnull @.str.15, i64 33, ptr nonnull @.str.16, i64 47, ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !334 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i5, label %__cxx_global_var_init.14.exit, label %bb.g

bb.g:                                             ; preds = %__cxx_global_var_init.11.exit
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3) #16, !inline_history !330 ; 0 uses
  br label %__cxx_global_var_init.14.exit

__cxx_global_var_init.14.exit:                    ; preds = %__cxx_global_var_init.11.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !83}
!1 = distinct !{!1, !83}
!2 = distinct !{!2, !83}
!3 = distinct !{!3, !83}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN4llvm6RecordE", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTSN4llvm4InitE", !12, i64 0}
!16 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !9, i64 8, !9, i64 12}
!17 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_5SMLocEvEE", !16, i64 0}
!18 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_5SMLocELb1EEE", !17, i64 0}
!19 = !{!"_ZTSN4llvm15SmallVectorImplINS_5SMLocEEE", !18, i64 0}
!20 = !{!"_ZTSN4llvm18SmallVectorStorageINS_5SMLocELj4EEE", !8, i64 0}
!21 = !{!"_ZTSN4llvm11SmallVectorINS_5SMLocELj4EEE", !19, i64 0, !20, i64 16}
!22 = !{!"_ZTSN4llvm11SmallVectorINS_5SMLocELj0EEE", !19, i64 0}
!23 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_7SMRangeEvEE", !16, i64 0}
!24 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_7SMRangeELb1EEE", !23, i64 0}
!25 = !{!"_ZTSN4llvm15SmallVectorImplINS_7SMRangeEEE", !24, i64 0}
!26 = !{!"_ZTSN4llvm11SmallVectorINS_7SMRangeELj0EEE", !25, i64 0}
!27 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPKNS_4InitEvEE", !16, i64 0}
!28 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPKNS_4InitELb1EEE", !27, i64 0}
!29 = !{!"_ZTSN4llvm15SmallVectorImplIPKNS_4InitEEE", !28, i64 0}
!30 = !{!"_ZTSN4llvm11SmallVectorIPKNS_4InitELj0EEE", !29, i64 0}
!31 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9RecordValEvEE", !16, i64 0}
!32 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9RecordValELb0EEE", !31, i64 0}
!33 = !{!"_ZTSN4llvm15SmallVectorImplINS_9RecordValEEE", !32, i64 0}
!34 = !{!"_ZTSN4llvm11SmallVectorINS_9RecordValELj0EEE", !33, i64 0}
!35 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Record13AssertionInfoEvEE", !16, i64 0}
!36 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Record13AssertionInfoELb1EEE", !35, i64 0}
!37 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Record13AssertionInfoEEE", !36, i64 0}
!38 = !{!"_ZTSN4llvm11SmallVectorINS_6Record13AssertionInfoELj0EEE", !37, i64 0}
!39 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Record8DumpInfoEvEE", !16, i64 0}
!40 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Record8DumpInfoELb1EEE", !39, i64 0}
!41 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Record8DumpInfoEEE", !40, i64 0}
!42 = !{!"_ZTSN4llvm11SmallVectorINS_6Record8DumpInfoELj0EEE", !41, i64 0}
!43 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPKNS_6RecordENS_7SMRangeEEvEE", !16, i64 0}
!44 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_6RecordENS_7SMRangeEELb1EEE", !43, i64 0}
!45 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPKNS_6RecordENS_7SMRangeEEEE", !44, i64 0}
!46 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPKNS_6RecordENS_7SMRangeEELj0EEE", !45, i64 0}
!47 = !{!"p1 _ZTSN4llvm12RecordKeeperE", !12, i64 0}
!48 = !{!"p1 _ZTSN4llvm7DefInitE", !12, i64 0}
!49 = !{!"_ZTSN4llvm6Record10RecordKindE", !8, i64 0}
!50 = !{!"_ZTSN4llvm6RecordE", !15, i64 0, !21, i64 8, !22, i64 56, !26, i64 72, !30, i64 88, !34, i64 104, !38, i64 120, !42, i64 136, !46, i64 152, !47, i64 168, !48, i64 176, !9, i64 184, !49, i64 188}
!51 = !{!50, !47, i64 168}
!52 = !{}
!53 = !{i64 8}
!54 = !{!16, !12, i64 0}
!55 = !{!16, !9, i64 8}
!56 = !{!"p1 omnipotent char", !12, i64 0}
!57 = !{!"_ZTSN4llvm5SMLocE", !56, i64 0}
!58 = !{!"_ZTSN4llvm6detail13PunnedPointerIPKNS_5RecTyEEE", !8, i64 0}
!59 = !{!"_ZTSN4llvm14PointerIntPairIPKNS_5RecTyELj2ENS_9RecordVal9FieldKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj2ES7_EEEE", !58, i64 0}
!60 = !{!"bool", !8, i64 0}
!61 = !{!"_ZTSN4llvm9RecordValE", !15, i64 0, !57, i64 8, !59, i64 16, !15, i64 24, !60, i64 32, !26, i64 40}
!62 = !{!61, !15, i64 0}
!63 = !{!"_ZTSN4llvm5Twine8NodeKindE", !8, i64 0}
!64 = !{!"_ZTSN4llvm5TwineE", !8, i64 0, !8, i64 16, !63, i64 32, !63, i64 33}
!65 = !{!64, !63, i64 33}
!66 = !{!8, !8, i64 0}
!67 = !{!64, !63, i64 32}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!69 = !{!68, !56, i64 0}
!70 = !{!"long", !8, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0, !70, i64 8, !8, i64 16}
!72 = !{!71, !70, i64 8}
!73 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !8, i64 0}
!74 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !8, i64 0}
!75 = !{!"_ZTSN4llvm11raw_ostreamE", !73, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !60, i64 40, !74, i64 44}
!76 = !{!75, !73, i64 8}
!77 = !{!75, !60, i64 40}
!78 = !{!75, !74, i64 44}
!79 = !{!"vtable pointer", !7, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!75, !56, i64 24}
!85 = !{!75, !56, i64 32}
!86 = !{!70, !70, i64 0}
!87 = !{!56, !56, i64 0}
!88 = !{!"p1 _ZTSN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEE", !12, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"_ZTSN4llvm9StringRefE", !56, i64 0, !70, i64 8}
!91 = !{!"_ZTSN4llvm8ArrayRefINS_12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEEEE", !88, i64 0, !70, i64 8}
!92 = !{!"_ZTSN4llvm19formatv_object_baseE", !90, i64 0, !91, i64 16, !60, i64 32}
!93 = !{!92, !60, i64 32}
!94 = !{!71, !56, i64 0}
!95 = !{!"_ZTSN4llvm18raw_string_ostreamE", !75, i64 0, !81, i64 48}
!96 = !{!95, !81, i64 48}
!97 = !{!"_ZTSN4mlir6tblgen8EnumInfoE", !13, i64 0}
!98 = !{!97, !13, i64 0}
!99 = !{!"p1 _ZTSN4llvm9StringRefE", !12, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"p1 _ZTSN4mlir6tblgen8EnumCaseE", !12, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN4mlir6tblgen8EnumCaseESaIS2_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!104 = !{!103, !101, i64 0}
!105 = !{!103, !101, i64 16}
!106 = !{!"_ZTSN4mlir6tblgen8EnumCaseE", !13, i64 0}
!107 = !{!106, !13, i64 0}
!108 = !{!"p1 long", !12, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!110 = !{!109, !108, i64 8}
!111 = !{!109, !108, i64 0}
!112 = !{!109, !108, i64 16}
!113 = !{!90, !70, i64 8}
!114 = !{!90, !56, i64 0}
!115 = !{!12, !12, i64 0}
!116 = distinct !{!116, !83}
!117 = distinct !{!117, !"_ZN4llvm7formatvIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaPKcDpOT_"}
!118 = distinct !{!118, !117, !"_ZN4llvm7formatvIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaPKcDpOT_: argument 0"}
!119 = distinct !{!119, !"_ZN4llvm7formatvIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDabPKcDpOT_"}
!120 = distinct !{!120, !119, !"_ZN4llvm7formatvIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDabPKcDpOT_: argument 0"}
!121 = distinct !{!121, !"_ZN4llvm7formatvIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaPKcDpOT_"}
!122 = distinct !{!122, !121, !"_ZN4llvm7formatvIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaPKcDpOT_: argument 0"}
!123 = distinct !{!123, !"_ZN4llvm7formatvIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDabPKcDpOT_"}
!124 = distinct !{!124, !123, !"_ZN4llvm7formatvIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDabPKcDpOT_: argument 0"}
!125 = distinct !{!125, !"_ZN4llvmplEPKcNS_9StringRefE"}
!126 = distinct !{!126, !125, !"_ZN4llvmplEPKcNS_9StringRefE: argument 0"}
!127 = !{!120, !118}
!128 = !{!124, !122}
!129 = !{!126}
!130 = distinct !{!130, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDaPKcDpOT_"}
!131 = distinct !{!131, !130, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDaPKcDpOT_: argument 0"}
!132 = distinct !{!132, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDabPKcDpOT_"}
!133 = distinct !{!133, !132, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDabPKcDpOT_: argument 0"}
!134 = distinct !{!134, !"_ZNK12_GLOBAL__N_112LLVMEnumInfo11getAllCasesEv"}
!135 = distinct !{!135, !134, !"_ZNK12_GLOBAL__N_112LLVMEnumInfo11getAllCasesEv: argument 0"}
!136 = distinct !{!136, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112LLVMEnumCaseES1_SaIS1_EEvPT_PT0_RT1_"}
!137 = distinct !{!137, !136, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112LLVMEnumCaseES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!138 = distinct !{!138, !"_ZN4llvm7formatvIJNS_9StringRefEEEEDaPKcDpOT_"}
!139 = distinct !{!139, !138, !"_ZN4llvm7formatvIJNS_9StringRefEEEEDaPKcDpOT_: argument 0"}
!140 = distinct !{!140, !"_ZN4llvm7formatvIJNS_9StringRefEEEEDabPKcDpOT_"}
!141 = distinct !{!141, !140, !"_ZN4llvm7formatvIJNS_9StringRefEEEEDabPKcDpOT_: argument 0"}
!142 = distinct !{!142, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDaPKcDpOT_"}
!143 = distinct !{!143, !142, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDaPKcDpOT_: argument 0"}
!144 = distinct !{!144, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDabPKcDpOT_"}
!145 = distinct !{!145, !144, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDabPKcDpOT_: argument 0"}
!146 = distinct !{!146, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDaPKcDpOT_"}
!147 = distinct !{!147, !146, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDaPKcDpOT_: argument 0"}
!148 = distinct !{!148, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDabPKcDpOT_"}
!149 = distinct !{!149, !148, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDabPKcDpOT_: argument 0"}
!150 = distinct !{!150, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDaPKcDpOT_"}
!151 = distinct !{!151, !150, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDaPKcDpOT_: argument 0"}
!152 = distinct !{!152, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDabPKcDpOT_"}
!153 = distinct !{!153, !152, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDabPKcDpOT_: argument 0"}
!154 = distinct !{!154, !"_ZNK12_GLOBAL__N_113LLVMCEnumInfo11getAllCasesEv"}
!155 = distinct !{!155, !154, !"_ZNK12_GLOBAL__N_113LLVMCEnumInfo11getAllCasesEv: argument 0"}
!156 = distinct !{!156, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112LLVMEnumCaseES1_SaIS1_EEvPT_PT0_RT1_"}
!157 = distinct !{!157, !156, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112LLVMEnumCaseES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!158 = distinct !{!158, !"_ZN4llvm7formatvIJNS_9StringRefEEEEDaPKcDpOT_"}
!159 = distinct !{!159, !158, !"_ZN4llvm7formatvIJNS_9StringRefEEEEDaPKcDpOT_: argument 0"}
!160 = distinct !{!160, !"_ZN4llvm7formatvIJNS_9StringRefEEEEDabPKcDpOT_"}
!161 = distinct !{!161, !160, !"_ZN4llvm7formatvIJNS_9StringRefEEEEDabPKcDpOT_: argument 0"}
!162 = distinct !{!162, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDaPKcDpOT_"}
!163 = distinct !{!163, !162, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDaPKcDpOT_: argument 0"}
!164 = distinct !{!164, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDabPKcDpOT_"}
!165 = distinct !{!165, !164, !"_ZN4llvm7formatvIJRNS_9StringRefES2_S2_EEEDabPKcDpOT_: argument 0"}
!166 = distinct !{!166, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDaPKcDpOT_"}
!167 = distinct !{!167, !166, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDaPKcDpOT_: argument 0"}
!168 = distinct !{!168, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDabPKcDpOT_"}
!169 = distinct !{!169, !168, !"_ZN4llvm7formatvIJRNS_9StringRefES2_EEEDabPKcDpOT_: argument 0"}
!170 = !{!133, !131}
!171 = !{!135}
!172 = !{!137}
!173 = !{!141, !139}
!174 = !{!145, !143}
end_hunk_1
