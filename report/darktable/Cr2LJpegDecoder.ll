inline.NumInlined: 380
inline.NumDeleted: 278
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed15Cr2LJpegDecoder10decodeScanEv:bb.a
bb.ai:                                            ; preds = %bb.ah
  store ptr %i.ep, ptr %i.ef, align 8, !tbaa !167
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i16 %i.es, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !183
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  store ptr %i.et, ptr %i.di, align 8, !tbaa !155
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS1_20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS4_EEEEE18PerComponentRecipeESaIS9_EEEaSEOS9_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.eu = load ptr, ptr %1, align 8, !tbaa !152   ; 4 uses
  %i.ev = ptrtoint ptr %i.ee to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 6 uses
  %i.ey = icmp eq i64 %i.ex, 9223372036854775792
  br i1 %i.ey, label %bb.ak, label %_ZNKSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.aj
  %i.ez = ashr exact i64 %i.ex, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ez, i64 1)
  %i.fa = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ez ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.ez
  %i.fc = call i64 @llvm.umin.i64(i64 %i.fa, i64 576460752303423487)
  %i.fd = select i1 %i.fb, i64 576460752303423487, i64 %i.fc ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.fd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.fe = shl nuw nsw i64 %i.fd, 4
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #23
          to label %.noexc65 unwind label %.loopexit116 ; 4 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.ex ; 3 uses
  store ptr %i.ep, ptr %i.fg, align 8, !tbaa !167
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i16 %i.es, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !183
  %i.fh = icmp sgt i64 %i.ex, 0
  br i1 %i.fh, label %bb.al, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i

bb.al:                                            ; preds = %.noexc65
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ff, ptr align 8 %i.eu, i64 %i.ex, i1 false)
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i: ; preds = %bb.al, %.noexc65
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ex) #24
  %.pre143 = load ptr, ptr %2, align 8, !tbaa !172
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i: ; preds = %bb.am, %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i
  %i.fj = phi ptr [ %.pre143, %bb.am ], [ %i.ed, %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i ]
  store ptr %i.ff, ptr %1, align 8, !tbaa !152
  store ptr %i.fi, ptr %i.di, align 8, !tbaa !155
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fd ; 2 uses
  store ptr %i.fk, ptr %i.df, align 8, !tbaa !156
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS1_20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS4_EEEEE18PerComponentRecipeESaIS9_EEEaSEOS9_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS1_20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS4_EEEEE18PerComponentRecipeESaIS9_EEEaSEOS9_.exit.i: ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i, %bb.ai
  %i.fl = phi ptr [ %i.ed, %bb.ai ], [ %i.fj, %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i ]
  %i.fm = phi ptr [ %i.ee, %bb.ai ], [ %i.fk, %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i ]
  %i.fn = phi ptr [ %i.et, %bb.ai ], [ %i.fi, %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i ]
  %i.fo = add nsw i32 %.09.i, -1
  %i.fp = icmp sgt i32 %.09.i, 1
  br i1 %i.fp, label %bb.ah, label %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESaISA_EEEiZNS2_15Cr2LJpegDecoder10decodeScanEvE3$_0ET_SG_T0_T1_.exit", !llvm.loop !184

"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESaISA_EEEiZNS2_15Cr2LJpegDecoder10decodeScanEvE3$_0ET_SG_T0_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS1_20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS4_EEEEE18PerComponentRecipeESaIS9_EEEaSEOS9_.exit.i
  %i.fq = load ptr, ptr %i.ec, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorItSaItEED2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESaISA_EEEiZNS2_15Cr2LJpegDecoder10decodeScanEvE3$_0ET_SG_T0_T1_.exit"
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !185
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i

_ZNSt6vectorItSaItEED2Ev.exit.i:                  ; preds = %bb.an, %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESaISA_EEEiZNS2_15Cr2LJpegDecoder10decodeScanEvE3$_0ET_SG_T0_T1_.exit"
  %i.fw = load ptr, ptr %i.dk, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i1.i, label %"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit", label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.fx = load ptr, ptr %i.do, align 8, !tbaa !166
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ga) #24
  br label %"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit"

"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit": ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !11 ; 2 uses
  %i.gf = load <2 x ptr>, ptr %i.gb, align 8, !tbaa !15
  store <2 x ptr> %i.gf, ptr %4, align 16, !tbaa !15
  %.not.i.i.i.i68 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i68, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.ap

bb.ap:                                            ; preds = %"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit"
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 3 uses
  %i.gh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i69 = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i.i.i.i69, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !17
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gg, align 4, !tbaa !17
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.gk = atomicrmw volatile add ptr %i.gg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit", %bb.aq, %bb.ar
  store <2 x i32> %i.dd, ptr %5, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gm = load i64, ptr %i.gl, align 8
  %.sroa.07.0.copyload = load i64, ptr %i.e, align 4
  %.sroa.28.0.copyload = load i32, ptr %i.k, align 4, !tbaa !17
  %i.gn = load ptr, ptr %i.di, align 8, !tbaa !155 ; 3 uses
  %i.go = load ptr, ptr %1, align 8, !tbaa !152   ; 3 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i.i.i.i70, label %.noexc72.thread, label %bb.as

.noexc72.thread:                                  ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr null, i64 %i.gr
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !156
  br label %.loopexit

bb.as:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.gv = icmp ugt i64 %i.gr, 9223372036854775792
  br i1 %i.gv, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i, !prof !32

.noexc.i.i:                                       ; preds = %bb.as
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc71 unwind label %bb.bo

.noexc71:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.as
  %i.gw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #23
          to label %.noexc72 unwind label %bb.bo  ; 4 uses

.noexc72:                                         ; preds = %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.gw, ptr %6, align 8, !tbaa !152
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !155
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gr
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !156
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc72, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i ], [ %i.gw, %.noexc72 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i ], [ %i.go, %.noexc72 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !186
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.gn
  br i1 %i.hc, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !187

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc72.thread
  %i.hd = phi ptr [ %i.gu, %.noexc72.thread ], [ %i.gz, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.he = phi ptr [ %i.gs, %.noexc72.thread ], [ %i.gx, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc72.thread ], [ %i.hb, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.he, align 8, !tbaa !155
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !188 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !189 ; 3 uses
  %i.hk = icmp uge i32 %i.hj, %i.hh
  call void @llvm.assume(i1 %i.hk)
  %i.hl = icmp sgt i32 %i.hj, -1
  call void @llvm.assume(i1 %i.hl)
  %8 = zext i32 %i.hh to i64
  %9 = sub nuw i32 %i.hj, %i.hh
  %i.hm = load ptr, ptr %i.hf, align 8, !tbaa !190
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %8
  store ptr %i.hn, ptr %7, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %9, ptr %.sroa.22.0..sroa_idx, align 8
  invoke void @_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC1ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 4 dead_on_return %5, i64 %i.gm, i64 %.sroa.07.0.copyload, i32 %.sroa.28.0.copyload, ptr noundef nonnull align 8 %6, ptr noundef nonnull byval(%"class.rawspeed::Array1DRef.82") align 8 %7)
          to label %bb.at unwind label %bb.bp

bb.at:                                            ; preds = %.loopexit
  %i.ho = load ptr, ptr %6, align 8, !tbaa !152   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = load ptr, ptr %i.hd, align 8, !tbaa !156
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.hs) #24
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit: ; preds = %bb.at, %bb.au
  %i.ht = load ptr, ptr %i.gc, align 8, !tbaa !11 ; 8 uses
  %.not.i.i.i73 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i73, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.hu, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !20
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !21
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #21, !call_target !23, !inline_history !30
  %i.ic = load ptr, ptr %i.ht, align 8, !tbaa !21
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #21, !call_target !31, !inline_history !30
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i74 = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i.i74, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ig = add nsw i32 %i.hx, -1
  store i32 %i.ig, ptr %i.hu, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.ih = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i = phi i32 [ %i.hx, %bb.ay ], [ %i.ih, %bb.az ]
  %i.ii = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ii, label %bb.ba, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !32

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #21
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ba
  %i.ij = invoke noundef i32 @_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE10decompressEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.bb unwind label %bb.br

bb.bb:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !152 ; 3 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !156
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.il to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.iq) #24
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i: ; preds = %bb.bc, %bb.bb
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !11 ; 8 uses
  %.not.i.i.i1.i76 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i1.i76, label %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 4 uses
  %i.iu = load atomic i64, ptr %i.it acquire, align 8 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 4294967297
  %i.iw = trunc i64 %i.iu to i32                  ; 2 uses
  br i1 %i.iv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.it, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !20
  %i.iy = load ptr, ptr %i.is, align 8, !tbaa !21
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #21, !call_target !23, !inline_history !191
  %i.jb = load ptr, ptr %i.is, align 8, !tbaa !21
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #21, !call_target !31, !inline_history !191
  br label %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i77 = icmp eq i8 %i.je, 0
  br i1 %.not.i.i.i.i.i77, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jf = add nsw i32 %i.iw, -1
  store i32 %i.jf, ptr %i.it, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.jg = atomicrmw volatile add ptr %i.it, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i = phi i32 [ %i.iw, %bb.bg ], [ %i.jg, %bb.bh ]
  %i.jh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jh, label %bb.bi, label %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit, !prof !32

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #21
  br label %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit

_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ji = load ptr, ptr %1, align 8, !tbaa !152   ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit79, label %bb.bj

bb.bj:                                            ; preds = %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit
  %i.jj = load ptr, ptr %i.df, align 8, !tbaa !156
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.ji to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jm) #24
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit79

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit79: ; preds = %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i32 %i.ij

bb.bk:                                            ; preds = %.noexc60, %_ZNSt12_Vector_baseIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_M_allocateEm.exit.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bl:                                            ; preds = %_ZNK8rawspeed20AbstractLJpegDecoder21getPrefixCodeDecodersEi.exit
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %i.dk, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i80, label %.body, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jq = load ptr, ptr %i.do, align 8, !tbaa !166
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.jt) #24
  br label %.body

.loopexit116:                                     ; preds = %_ZNKSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp, %.loopexit116
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit116 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #21
  br label %.body

bb.bo:                                            ; preds = %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit82

bb.bp:                                            ; preds = %.loopexit
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %6, align 8, !tbaa !152   ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit82, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
end_hunk_0
