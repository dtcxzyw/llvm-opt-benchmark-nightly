Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Cr2LJpegDecoder?download=true
inline.NumInlined: 380
inline.NumDeleted: 278
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed15Cr2LJpegDecoder10decodeScanEv:bb.a

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ey, ptr %i.en, align 8, !tbaa !167
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i16 %i.fb, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !184
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  store ptr %i.fc, ptr %i.dg, align 8, !tbaa !155
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS1_20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS4_EEEEE18PerComponentRecipeESaIS9_EEEaSEOS9_.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.fd = load ptr, ptr %1, align 8, !tbaa !152   ; 4 uses
  %i.fe = ptrtoint ptr %i.em to i64
  %i.ff = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 5 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775792
  br i1 %i.fh, label %bb.am, label %_ZNKSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.al
  %i.fi = ashr exact i64 %i.fg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 576460752303423487)
  %i.fm = select i1 %i.fk, i64 576460752303423487, i64 %i.fl ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.fn = shl nuw nsw i64 %i.fm, 4
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #23
          to label %.noexc65 unwind label %.loopexit116 ; 4 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fg ; 3 uses
  store ptr %i.ey, ptr %i.fp, align 8, !tbaa !167
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i16 %i.fb, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !184
  %i.fq = icmp sgt i64 %i.fg, 0
  br i1 %i.fq, label %bb.an, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i

bb.an:                                            ; preds = %.noexc65
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fo, ptr align 8 %i.fd, i64 %i.fg, i1 false)
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i: ; preds = %bb.an, %.noexc65
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i
  %i.fs = load ptr, ptr %i.df, align 8, !tbaa !156
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = sub i64 %i.ft, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fu) #24
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i
  store ptr %i.fo, ptr %1, align 8, !tbaa !152
  store ptr %i.fr, ptr %i.dg, align 8, !tbaa !155
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.fm ; 2 uses
  store ptr %i.fv, ptr %i.df, align 8, !tbaa !156
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS1_20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS4_EEEEE18PerComponentRecipeESaIS9_EEEaSEOS9_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS1_20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS4_EEEEE18PerComponentRecipeESaIS9_EEEaSEOS9_.exit.i: ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i, %bb.ak
  %i.fw = phi ptr [ %i.em, %bb.ak ], [ %i.fv, %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i ]
  %i.fx = phi ptr [ %i.fc, %bb.ak ], [ %i.fr, %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i ]
  %i.fy = add nsw i32 %.09.i, -1
  %i.fz = icmp sgt i32 %.09.i, 1
  br i1 %i.fz, label %bb.aj, label %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESaISA_EEEiZNS2_15Cr2LJpegDecoder10decodeScanEvE3$_0ET_SG_T0_T1_.exit", !llvm.loop !185

"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESaISA_EEEiZNS2_15Cr2LJpegDecoder10decodeScanEvE3$_0ET_SG_T0_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS1_20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS4_EEEEE18PerComponentRecipeESaIS9_EEEaSEOS9_.exit.i
  %i.ga = load ptr, ptr %i.el, align 8, !tbaa !183 ; 3 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorItSaItEED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESaISA_EEEiZNS2_15Cr2LJpegDecoder10decodeScanEvE3$_0ET_SG_T0_T1_.exit"
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !186
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i

_ZNSt6vectorItSaItEED2Ev.exit.i:                  ; preds = %bb.ap, %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESaISA_EEEiZNS2_15Cr2LJpegDecoder10decodeScanEvE3$_0ET_SG_T0_T1_.exit"
  %i.gg = load ptr, ptr %i.dt, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i1.i, label %"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit", label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.gh = load ptr, ptr %i.dx, align 8, !tbaa !166
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gk) #24
  br label %"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit"

"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit": ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !11 ; 2 uses
  %i.gp = load <2 x ptr>, ptr %i.gl, align 8, !tbaa !15
  store <2 x ptr> %i.gp, ptr %4, align 16, !tbaa !15
  %.not.i.i.i.i68 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i68, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.ar

bb.ar:                                            ; preds = %"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit"
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 3 uses
  %i.gr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i69 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i.i.i69, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !17
  %i.gt = add nsw i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gq, align 4, !tbaa !17
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.at:                                            ; preds = %bb.ar
  %i.gu = atomicrmw volatile add ptr %i.gq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit", %bb.as, %bb.at
  store <2 x i32> %i.dd, ptr %5, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gw = load i64, ptr %i.gv, align 8
  %.sroa.07.0.copyload = load i64, ptr %i.e, align 4
  %.sroa.28.0.copyload = load i32, ptr %i.k, align 4, !tbaa !17
  %i.gx = load ptr, ptr %i.dg, align 8, !tbaa !155 ; 3 uses
  %i.gy = load ptr, ptr %1, align 8, !tbaa !152   ; 3 uses
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not.i.i.i.i70, label %.noexc72, label %bb.au

bb.au:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.hc = icmp ugt i64 %i.hb, 9223372036854775792
  br i1 %i.hc, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i, !prof !32

.noexc.i.i:                                       ; preds = %bb.au
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc71 unwind label %bb.bq

.noexc71:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.au
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #23
          to label %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge unwind label %bb.bq

_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge: ; preds = %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i
  %.pre143 = load ptr, ptr %1, align 8, !tbaa !187
  %.pre144 = load ptr, ptr %i.dg, align 8, !tbaa !187
  br label %.noexc72

.noexc72:                                         ; preds = %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge, %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.he = phi ptr [ %i.gx, %_ZN8rawspeed8RawImageC2ERKS0_.exit ], [ %.pre144, %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge ] ; 2 uses
  %i.hf = phi ptr [ %i.gy, %_ZN8rawspeed8RawImageC2ERKS0_.exit ], [ %.pre143, %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge ] ; 2 uses
  %i.hg = phi ptr [ null, %_ZN8rawspeed8RawImageC2ERKS0_.exit ], [ %i.hd, %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc72_crit_edge ] ; 5 uses
  store ptr %i.hg, ptr %6, align 8, !tbaa !152
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !155
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hb
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !156
  %i.hk = icmp eq ptr %i.hf, %i.he
  br i1 %i.hk, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc72, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i ], [ %i.hg, %.noexc72 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i ], [ %i.hf, %.noexc72 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !188
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.he
  br i1 %i.hn, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !189

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc72
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hg, %.noexc72 ], [ %i.hm, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.hh, align 8, !tbaa !155
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !190 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !191 ; 3 uses
  %i.ht = icmp uge i32 %i.hs, %i.hq
  call void @llvm.assume(i1 %i.ht)
  %i.hu = icmp sgt i32 %i.hs, -1
  call void @llvm.assume(i1 %i.hu)
  %8 = zext i32 %i.hq to i64
  %9 = sub nuw i32 %i.hs, %i.hq
  %i.hv = load ptr, ptr %i.ho, align 8, !tbaa !192
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %8
  store ptr %i.hw, ptr %7, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %9, ptr %.sroa.22.0..sroa_idx, align 8
  invoke void @_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC1ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 4 dead_on_return %5, i64 %i.gw, i64 %.sroa.07.0.copyload, i32 %.sroa.28.0.copyload, ptr noundef nonnull align 8 %6, ptr noundef nonnull byval(%"class.rawspeed::Array1DRef.82") align 8 %7)
          to label %bb.av unwind label %bb.br

bb.av:                                            ; preds = %.loopexit
  %i.hx = load ptr, ptr %6, align 8, !tbaa !152   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hy = load ptr, ptr %i.hj, align 8, !tbaa !156
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ib) #24
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit: ; preds = %bb.av, %bb.aw
  %i.ic = load ptr, ptr %i.gm, align 8, !tbaa !11 ; 8 uses
  %.not.i.i.i73 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i73, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.id, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !20
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !21
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #21, !call_target !23, !inline_history !30
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !21
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #21, !call_target !31, !inline_history !30
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i74 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i.i74, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i = phi i32 [ %i.ig, %bb.ba ], [ %i.iq, %bb.bb ]
  %i.ir = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ir, label %bb.bc, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !32

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #21
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bc
  %i.is = invoke noundef i32 @_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE10decompressEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.bd unwind label %bb.bt

bb.bd:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !152 ; 3 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !156
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #24
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i: ; preds = %bb.be, %bb.bd
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !11 ; 8 uses
  %.not.i.i.i1.i76 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i1.i76, label %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 4 uses
  %i.jd = load atomic i64, ptr %i.jc acquire, align 8 ; 2 uses
  %i.je = icmp eq i64 %i.jd, 4294967297
  %i.jf = trunc i64 %i.jd to i32                  ; 2 uses
  br i1 %i.je, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.jc, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  store i32 0, ptr %i.jg, align 4, !tbaa !20
  %i.jh = load ptr, ptr %i.jb, align 8, !tbaa !21
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(16) %i.jb) #21, !call_target !23, !inline_history !193
  %i.jk = load ptr, ptr %i.jb, align 8, !tbaa !21
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(16) %i.jb) #21, !call_target !31, !inline_history !193
  br label %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit

bb.bh:                                            ; preds = %bb.bf
  %i.jn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i77 = icmp eq i8 %i.jn, 0
  br i1 %.not.i.i.i.i.i77, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jo = add nsw i32 %i.jf, -1
  store i32 %i.jo, ptr %i.jc, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.jp = atomicrmw volatile add ptr %i.jc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i = phi i32 [ %i.jf, %bb.bi ], [ %i.jp, %bb.bj ]
  %i.jq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jq, label %bb.bk, label %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit, !prof !32

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jb) #21
  br label %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit

_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit.i, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.jr = load ptr, ptr %1, align 8, !tbaa !152   ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit79, label %bb.bl

bb.bl:                                            ; preds = %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit
  %i.js = load ptr, ptr %i.df, align 8, !tbaa !156
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jv) #24
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit79

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit79: ; preds = %_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEED2Ev.exit, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i32 %i.is

bb.bm:                                            ; preds = %_ZNSt12_Vector_baseIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE13_M_deallocateEPS8_m.exit.i, %_ZNSt12_Vector_baseIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE11_M_allocateEm.exit.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bn:                                            ; preds = %_ZNK8rawspeed20AbstractLJpegDecoder21getPrefixCodeDecodersEi.exit
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %i.dt, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i80, label %.body, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jz = load ptr, ptr %i.dx, align 8, !tbaa !166
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kc) #24
  br label %.body

.loopexit116:                                     ; preds = %_ZNKSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit.split-lp, %.loopexit116
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit116 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZZN8rawspeed15Cr2LJpegDecoder10decodeScanEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #21
  br label %.body

bb.bq:                                            ; preds = %_ZNSt15__new_allocatorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit82

bb.br:                                            ; preds = %.loopexit
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kf = load ptr, ptr %6, align 8, !tbaa !152   ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit82, label %bb.bs

bb.bs:                                            ; preds = %bb.br
end_hunk_0
