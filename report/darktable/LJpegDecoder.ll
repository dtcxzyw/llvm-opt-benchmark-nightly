Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/LJpegDecoder?download=true
inline.NumInlined: 352
inline.NumDeleted: 252
begin_hunk_0_@_ZN8rawspeed12LJpegDecoder10decodeScanEv:bb.a
  %i.ac = shl nuw nsw i64 %i.g, 3                 ; 2 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #23
          to label %.noexc58 unwind label %bb.x   ; 6 uses

.noexc58:                                         ; preds = %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE7reserveEm.exit
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !136, !alias.scope !177
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.g
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !137, !alias.scope !177
  store ptr null, ptr %i.ad, align 8, !tbaa !139, !noalias !177
  %i.ag = getelementptr i8, ptr %i.ad, i64 8      ; 3 uses
  %i.ah = add nsw i64 %i.g, -1                    ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %_ZSt6fill_nIPPKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEmS7_ET_S9_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPPKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEmS7_ET_S9_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc58
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ah, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !139, !noalias !177
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPPKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEmS7_ET_S9_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc58
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.aj, %_ZSt6fill_nIPPKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEmS7_ET_S9_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ag, %.noexc58 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.ak, align 8, !tbaa !178, !alias.scope !177
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 148
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !179, !noalias !177 ; 3 uses
  %.not.i = icmp ult i32 %i.ao, 4
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed20AbstractLJpegDecoder21getPrefixCodeDecodersEi, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef 4) #14
          to label %bb.l unwind label %_ZNSt6vectorIPKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEESaIS7_EED2Ev.exit.i, !noalias !177

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !139, !noalias !177
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  store ptr %i.as, ptr %i.at, align 8, !tbaa !139, !noalias !177
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count
  br i1 %exitcond.not.i, label %_ZNK8rawspeed20AbstractLJpegDecoder21getPrefixCodeDecodersEi.exit, label %bb.j, !llvm.loop !165

_ZNSt6vectorIPKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEESaIS7_EED2Ev.exit.i: ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ac) #24, !noalias !177
  br label %.body

_ZNK8rawspeed20AbstractLJpegDecoder21getPrefixCodeDecodersEi.exit: ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  invoke void @_ZNK8rawspeed20AbstractLJpegDecoder20getInitialPredictorsEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.70") align 8 %i.av, ptr noundef nonnull align 8 dereferenceable(236) %0, i32 noundef %i.c)
          to label %.lr.ph.i59 unwind label %bb.y

.lr.ph.i59:                                       ; preds = %_ZNK8rawspeed20AbstractLJpegDecoder21getPrefixCodeDecodersEi.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !171
  %.pre10.i = load ptr, ptr %i.i, align 8, !tbaa !132
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS3_EEEaSEOS3_.exit.i, %.lr.ph.i59
  %i.ax = phi ptr [ %.pre10.i, %.lr.ph.i59 ], [ %i.ch, %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS3_EEEaSEOS3_.exit.i ] ; 3 uses
  %i.ay = phi ptr [ %.pre.i, %.lr.ph.i59 ], [ %i.ci, %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS3_EEEaSEOS3_.exit.i ] ; 4 uses
  %.09.i = phi i32 [ %i.c, %.lr.ph.i59 ], [ %i.cj, %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS3_EEEaSEOS3_.exit.i ] ; 2 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !187, !nonnull !188, !align !189 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !171
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !131
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %sext.i.i = shl i64 %i.bf, 28
  %i.bg = ashr i64 %sext.i.i, 32                  ; 2 uses
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !139 ; 2 uses
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !142
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bg
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !143 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.ax
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bj, ptr %i.ay, align 8, !tbaa !139
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i16 %i.bm, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !143
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  store ptr %i.bn, ptr %i.aw, align 8, !tbaa !171
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS3_EEEaSEOS3_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %1, align 8, !tbaa !131   ; 4 uses
  %i.bp = ptrtoint ptr %i.ax to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 5 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775792
  br i1 %i.bs, label %bb.q, label %_ZNKSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #22
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.p
  %i.bt = ashr exact i64 %i.br, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 576460752303423487)
  %i.bx = select i1 %i.bv, i64 576460752303423487, i64 %i.bw ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #23
          to label %.noexc61 unwind label %.loopexit100 ; 4 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 3 uses
  store ptr %i.bj, ptr %i.ca, align 8, !tbaa !139
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i16 %i.bm, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !143
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.r, label %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i

bb.r:                                             ; preds = %.noexc61
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i

_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i: ; preds = %bb.r, %.noexc61
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i
  %i.cd = load ptr, ptr %i.i, align 8, !tbaa !132
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cf) #24
  br label %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i
  store ptr %i.bz, ptr %1, align 8, !tbaa !131
  store ptr %i.cc, ptr %i.aw, align 8, !tbaa !171
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bx ; 2 uses
  store ptr %i.cg, ptr %i.i, align 8, !tbaa !132
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS3_EEEaSEOS3_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS3_EEEaSEOS3_.exit.i: ; preds = %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.o
  %i.ch = phi ptr [ %i.ax, %bb.o ], [ %i.cg, %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ]
  %i.ci = phi ptr [ %i.bn, %bb.o ], [ %i.cc, %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ]
  %i.cj = add nsw i32 %.09.i, -1
  %i.ck = icmp sgt i32 %.09.i, 1
  br i1 %i.ck, label %bb.n, label %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS4_EEEiZNS2_12LJpegDecoder10decodeScanEvE3$_0ET_SA_T0_T1_.exit", !llvm.loop !166

"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS4_EEEiZNS2_12LJpegDecoder10decodeScanEvE3$_0ET_SA_T0_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS3_EEEaSEOS3_.exit.i
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !142 ; 3 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i62, label %_ZNSt6vectorItSaItEED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS4_EEEiZNS2_12LJpegDecoder10decodeScanEvE3$_0ET_SA_T0_T1_.exit"
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !144
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i

_ZNSt6vectorItSaItEED2Ev.exit.i:                  ; preds = %bb.t, %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS4_EEEiZNS2_12LJpegDecoder10decodeScanEvE3$_0ET_SA_T0_T1_.exit"
  %i.cr = load ptr, ptr %i.ab, align 8, !tbaa !136 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i1.i, label %"_ZZN8rawspeed12LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit", label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.cs = load ptr, ptr %i.af, align 8, !tbaa !137
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #24
  br label %"_ZZN8rawspeed12LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit"

"_ZZN8rawspeed12LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit": ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.cx = load i64, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.cz = load i64, ptr %i.cy, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %i.dc = trunc i64 %i.db to i32                  ; 5 uses
  %i.dd = lshr i64 %i.db, 32
  %i.de = trunc nuw i64 %i.dd to i32              ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !190 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !34 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 592
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !105 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %i.dm, %i.dh
  %i.do = icmp sgt i64 %i.dn, 2147483647
  br i1 %i.do, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %"_ZZN8rawspeed12LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit"
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12LJpegDecoder10decodeScanEv) #14
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE7reserveEm.exit, %_ZNSt12_Vector_baseIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE11_M_allocateEm.exit.i, %bb.e
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %_ZNK8rawspeed20AbstractLJpegDecoder21getPrefixCodeDecodersEi.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %i.ab, align 8, !tbaa !136 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = load ptr, ptr %i.af, align 8, !tbaa !137
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #24
  br label %.body

.loopexit100:                                     ; preds = %_ZNKSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit100
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit100 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZZN8rawspeed12LJpegDecoder10decodeScanEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #21
  br label %.body

bb.ab:                                            ; preds = %bb.v
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %"_ZZN8rawspeed12LJpegDecoder10decodeScanEvEN3$_0D2Ev.exit"
  %i.dx = mul nsw i32 %i.dl, %i.dg                ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !191 ; 3 uses
  %i.ea = call i32 @llvm.abs.i32(i32 %i.dx, i1 false)
  %i.eb = zext i32 %i.ea to i64
  %i.ec = call i32 @llvm.abs.i32(i32 %i.dz, i1 false)
  %i.ed = zext i32 %i.ec to i64
  %i.ee = mul nuw nsw i64 %i.ed, %i.eb
  %i.ef = call i32 @llvm.abs.i32(i32 %i.dc, i1 false)
  %i.eg = zext i32 %i.ef to i64
  %i.eh = call i32 @llvm.abs.i32(i32 %i.de, i1 false)
  %i.ei = zext i32 %i.eh to i64
  %i.ej = mul nuw nsw i64 %i.eg, %i.g
  %i.ek = mul i64 %i.ej, %i.ei
  %.not38 = icmp eq i64 %i.ee, %i.ek
  br i1 %.not38, label %bb.ae, label %.invoke

bb.ad:                                            ; preds = %.invoke
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  %i.em = srem i32 %i.dx, %i.dc
  %7 = sdiv i32 %i.dx, %i.dc                      ; 2 uses
  %.not39 = icmp eq i32 %i.em, 0
  br i1 %.not39, label %bb.af, label %.invoke

bb.af:                                            ; preds = %bb.ae
  %i.en = srem i32 %i.dz, %i.de
  %8 = sdiv i32 %i.dz, %i.de                      ; 2 uses
  %.not40 = icmp eq i32 %i.en, 0
  br i1 %.not40, label %bb.ag, label %.invoke

.invoke:                                          ; preds = %bb.ac, %bb.ae, %bb.af
  %i.eo = phi ptr [ @.str.14, %bb.ae ], [ @.str.14, %bb.af ], [ @.str.13, %bb.ac ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.eo, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12LJpegDecoder10decodeScanEv) #14
          to label %.cont unwind label %bb.ad

.cont:                                            ; preds = %.invoke
  unreachable

bb.ag:                                            ; preds = %bb.af
  %9 = call i32 @llvm.abs.i32(i32 %7, i1 false)
  %i.ep = zext i32 %9 to i64
  %10 = call i32 @llvm.abs.i32(i32 %8, i1 false)
  %i.eq = zext i32 %10 to i64
  %i.er = mul nuw nsw i64 %i.eq, %i.ep
  %.not41 = icmp eq i64 %i.er, %i.g
  br i1 %.not41, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12LJpegDecoder10decodeScanEv) #14
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %bb.ag
  %.sroa.6.0.insert.ext = zext i32 %8 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.081.0.insert.ext = zext i32 %7 to i64
  %.sroa.081.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.081.0.insert.ext
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.eu = load i16, ptr %i.et, align 4, !tbaa !192 ; 2 uses
  %i.ev = zext i16 %i.eu to i32                   ; 2 uses
  %i.ew = icmp eq i16 %i.eu, 0
  br i1 %i.ew, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = srem i32 %i.ev, %i.dc
  %i.ey = sdiv i32 %i.ev, %i.dc
  %.not42 = icmp eq i32 %i.ex, 0
  br i1 %.not42, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed12LJpegDecoder10decodeScanEv) #14
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %bb.al, %bb.ak
  %.034 = phi i32 [ %i.de, %bb.ak ], [ %i.ey, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.dj, ptr %4, align 8, !tbaa !34
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !16 ; 3 uses
  store ptr %i.fc, ptr %i.fa, align 8, !tbaa !16
  %.not.i.i.i.i64 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i64, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 3 uses
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i65 = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i.i.i65, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !18
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fd, align 4, !tbaa !18
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.as:                                            ; preds = %bb.aq
  %i.fh = atomicrmw volatile add ptr %i.fd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %bb.ap, %bb.ar, %bb.as
  %i.fi = load ptr, ptr %i.aw, align 8, !tbaa !171 ; 3 uses
  %i.fj = load ptr, ptr %1, align 8, !tbaa !131   ; 3 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i66 = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i66, label %.noexc68, label %bb.at

bb.at:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.fn = icmp ugt i64 %i.fm, 9223372036854775792
  br i1 %i.fn, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN8rawspeed17LJpegDecompressor18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i, !prof !31

.noexc.i.i:                                       ; preds = %bb.at
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc67 unwind label %bb.bl

.noexc67:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN8rawspeed17LJpegDecompressor18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.at
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #23
          to label %_ZNSt15__new_allocatorIN8rawspeed17LJpegDecompressor18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc68_crit_edge unwind label %bb.bl

_ZNSt15__new_allocatorIN8rawspeed17LJpegDecompressor18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc68_crit_edge: ; preds = %_ZNSt15__new_allocatorIN8rawspeed17LJpegDecompressor18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !193
  %.pre109 = load ptr, ptr %i.aw, align 8, !tbaa !193
  br label %.noexc68

.noexc68:                                         ; preds = %_ZNSt15__new_allocatorIN8rawspeed17LJpegDecompressor18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc68_crit_edge, %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.fp = phi ptr [ %i.fi, %_ZN8rawspeed8RawImageC2ERKS0_.exit ], [ %.pre109, %_ZNSt15__new_allocatorIN8rawspeed17LJpegDecompressor18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc68_crit_edge ] ; 2 uses
  %i.fq = phi ptr [ %i.fj, %_ZN8rawspeed8RawImageC2ERKS0_.exit ], [ %.pre, %_ZNSt15__new_allocatorIN8rawspeed17LJpegDecompressor18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc68_crit_edge ] ; 2 uses
  %i.fr = phi ptr [ null, %_ZN8rawspeed8RawImageC2ERKS0_.exit ], [ %i.fo, %_ZNSt15__new_allocatorIN8rawspeed17LJpegDecompressor18PerComponentRecipeEE8allocateEmPKv.exit.i.i.i.i..noexc68_crit_edge ] ; 5 uses
  store ptr %i.fr, ptr %5, align 8, !tbaa !131
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !171
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fm
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !132
  %i.fv = icmp eq ptr %i.fq, %i.fp
  br i1 %i.fv, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc68, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i ], [ %i.fr, %.noexc68 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i ], [ %i.fq, %.noexc68 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !194
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fp
  br i1 %i.fy, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !167

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc68
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fr, %.noexc68 ], [ %i.fx, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.fs, align 8, !tbaa !171
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !195 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !196 ; 3 uses
  %i.ge = icmp uge i32 %i.gd, %i.gb
  call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp sgt i32 %i.gd, -1
  call void @llvm.assume(i1 %i.gf)
  %i.gg = zext i32 %i.gb to i64
  %i.gh = sub nuw i32 %i.gd, %i.gb
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !197
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gg
  store ptr %i.gj, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.gh, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN8rawspeed17LJpegDecompressorC1ENS_8RawImageENS_12iRectangle2DENS0_5FrameESt6vectorINS0_18PerComponentRecipeESaIS5_EEiNS_10Array1DRefIKhEE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 %4, i64 %i.cx, i64 %i.cz, i64 %.sroa.081.0.insert.insert, i64 %i.db, ptr noundef nonnull align 8 %5, i32 noundef %.034, ptr noundef nonnull byval(%"class.rawspeed::Array1DRef.75") align 8 %6)
          to label %bb.au unwind label %bb.bm

bb.au:                                            ; preds = %.loopexit
  %i.gk = load ptr, ptr %5, align 8, !tbaa !131   ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gl = load ptr, ptr %i.fu, align 8, !tbaa !132
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.go) #24
  br label %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EED2Ev.exit

_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EED2Ev.exit: ; preds = %bb.au, %bb.av
  %i.gp = load ptr, ptr %i.fa, align 8, !tbaa !16 ; 8 uses
  %.not.i.i.i70 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i70, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EED2Ev.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.gq, align 8, !tbaa !20
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !21
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !23
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #21, !call_target !28, !inline_history !1
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #21, !call_target !30, !inline_history !1
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i71 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i71, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i = phi i32 [ %i.gt, %bb.az ], [ %i.hd, %bb.ba ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.he, label %bb.bb, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !31

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #21
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EED2Ev.exit, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bb
  %i.hf = invoke noundef i32 @_ZNK8rawspeed17LJpegDecompressor6decodeEv(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.bc unwind label %bb.bo

bb.bc:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i72, label %_ZNSt6vectorIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EED2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 80
end_hunk_0
begin_hunk_1_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !call_target !30, !inline_history !217
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !144
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i

_ZNSt6vectorItSaItEED2Ev.exit.i:                  ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorItSaItEED2Ev.exit2.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !144
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit2.i

_ZNSt6vectorItSaItEED2Ev.exit2.i:                 ; preds = %bb.d, %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !223  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit2.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !224
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #24
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorItSaItEED2Ev.exit2.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !146
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i:              ; preds = %bb.f, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit.i.i.i
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !148 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !149
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #24
  br label %_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEED2Ev.exit

_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !23
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #25
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.23, ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #25
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold noreturn }
attributes #15 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { cold }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !29, file: !24, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = distinct !{ptr @_ZN8rawspeed8RawImageD2Ev, null, null, null}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!15 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!20 = !{!19, !10, i64 8}
!21 = !{!19, !10, i64 12}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!26 = !{null, !25}
!27 = !DISubroutineType(types: !26)
!28 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !0, file: !24, line: 139, type: !27, scopeLine: 139, containingType: !0, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!29 = !DINamespace(name: "std", scope: null)
!30 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !0, file: !24, line: 143, type: !27, scopeLine: 143, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !13, i64 0}
!33 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0, !15, i64 8}
!34 = !{!33, !32, i64 0}
!35 = !{!"_ZTSN8rawspeed5MutexE"}
!36 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !39, i64 0}
!41 = !{!"_ZTSN8rawspeed8ErrorLogE", !35, i64 0, !40, i64 8}
!42 = !{!"_ZTSN8rawspeed8iPoint2DE", !10, i64 0, !10, i64 4}
!43 = !{!"bool", !9, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!45 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !44, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !46, i64 0}
!48 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !47, i64 0, !42, i64 24}
!49 = !{!"_ZTSSt5arrayIiLm4EE", !9, i64 0}
!50 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !9, i64 0, !43, i64 32}
!51 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !50, i64 0}
!52 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !51, i64 0}
!53 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !52, i64 0}
!54 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !53, i64 0}
!55 = !{!"_ZTSSt22_Optional_payload_baseIiE", !9, i64 0, !43, i64 4}
!56 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !55, i64 0}
!57 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !56, i64 0}
!58 = !{!"_ZTSSt8optionalIiE", !57, i64 0}
!59 = !{!"_ZTSN8rawspeed8OptionalIiEE", !58, i64 0}
!60 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !13, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !61, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !62, i64 0}
!64 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !63, i64 0}
!65 = !{!"p1 int", !13, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIjSaIjEE", !68, i64 0}
!70 = !{!"p1 omnipotent char", !13, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !73, i64 0}
!75 = !{!"double", !9, i64 0}
!76 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !9, i64 0, !43, i64 16}
!77 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !76, i64 0}
!78 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !77, i64 0}
!79 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !78, i64 0}
!80 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !79, i64 0}
!81 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !13, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !82, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !83, i64 0}
!85 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !84, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!87 = !{!"long", !9, i64 0}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !86, i64 0, !87, i64 8, !9, i64 16}
!89 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !75, i64 0, !80, i64 8, !85, i64 32, !10, i64 56, !42, i64 60, !88, i64 72, !88, i64 104, !88, i64 136, !88, i64 168, !88, i64 200, !88, i64 232, !88, i64 264, !10, i64 296}
!90 = !{!"_ZTSN8rawspeed12RawImageTypeE", !9, i64 0}
!91 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!92 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !91, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !92, i64 0, !93, i64 8}
!95 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !95, i64 0}
!97 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !13, i64 0}
!98 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !97, i64 0}
!99 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !98, i64 0}
!100 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !100, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !101, i64 0}
!103 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !102, i64 0}
!104 = !{!"_ZTSN8rawspeed12RawImageDataE", !41, i64 8, !42, i64 40, !10, i64 48, !10, i64 52, !43, i64 56, !48, i64 64, !10, i64 96, !49, i64 100, !54, i64 120, !59, i64 160, !64, i64 168, !69, i64 192, !74, i64 216, !10, i64 240, !43, i64 244, !89, i64 248, !35, i64 552, !90, i64 553, !96, i64 560, !10, i64 592, !10, i64 596, !42, i64 600, !42, i64 608, !103, i64 616}
!105 = !{!104, !10, i64 592}
!106 = !{!"p1 _ZTSSt10unique_ptrIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEESt14default_deleteIS4_EE", !13, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE12_Vector_implE", !107, i64 0}
!109 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE", !108, i64 0}
!110 = !{!"_ZTSSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE", !109, i64 0}
!111 = !{!"p1 _ZTSSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEESt14default_deleteIS6_EE", !13, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE12_Vector_implE", !112, i64 0}
!114 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE", !113, i64 0}
!115 = !{!"_ZTSSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE", !114, i64 0}
!116 = !{!"_ZTSSt5arrayIPKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEELm4EE", !9, i64 0}
!117 = !{!"_ZTSN8rawspeed6BufferE", !70, i64 0, !10, i64 8}
!118 = !{!"_ZTSN8rawspeed10EndiannessE", !9, i64 0}
!119 = !{!"_ZTSN8rawspeed10DataBufferE", !117, i64 0, !118, i64 12}
!120 = !{!"_ZTSN8rawspeed10ByteStreamE", !119, i64 0, !10, i64 16}
!121 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !33, i64 0}
!122 = !{!"_ZTSN8rawspeed8RawImageE", !121, i64 0}
!123 = !{!"_ZTSSt5arrayIN8rawspeed17JpegComponentInfoELm4EE", !9, i64 0}
!124 = !{!"_ZTSN8rawspeed7SOFInfoE", !123, i64 0, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !43, i64 80}
!125 = !{!"short", !9, i64 0}
!126 = !{!"_ZTSN8rawspeed20AbstractLJpegDecoderE", !110, i64 8, !115, i64 32, !10, i64 56, !116, i64 64, !43, i64 96, !43, i64 97, !120, i64 104, !122, i64 128, !124, i64 144, !125, i64 228, !10, i64 232}
!127 = !{!"_ZTSN8rawspeed12LJpegDecoderE", !126, i64 0, !10, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !42, i64 252}
!128 = !{!"llvm.loop.mustprogress"}
!129 = !{!"p1 _ZTSN8rawspeed17LJpegDecompressor18PerComponentRecipeE", !13, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed17LJpegDecompressor18PerComponentRecipeESaIS2_EE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!131 = !{!130, !129, i64 0}
!132 = !{!130, !129, i64 16}
!133 = !{!"any p2 pointer", !13, i64 0}
!134 = !{!"p2 _ZTSN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEEE", !133, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIPKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEESaIS7_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!135, !134, i64 0}
!137 = !{!135, !134, i64 16}
!138 = !{!"p1 _ZTSN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEEE", !13, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!"p1 short", !13, i64 0}
!141 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !140, i64 0, !140, i64 8, !140, i64 16}
!142 = !{!141, !140, i64 0}
!143 = !{!125, !125, i64 0}
!144 = !{!141, !140, i64 16}
!145 = !{!66, !65, i64 0}
!146 = !{!66, !65, i64 16}
!147 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!148 = !{!147, !70, i64 0}
!149 = !{!147, !70, i64 16}
!150 = !{!13, !13, i64 0}
!151 = !{!104, !90, i64 553}
!152 = !{!104, !10, i64 596}
!153 = !{!42, !10, i64 0}
!154 = distinct !{null, null, null}
!155 = !{!104, !10, i64 40}
!156 = !{!104, !10, i64 44}
!157 = !{!127, !10, i64 236}
!158 = !{!127, !10, i64 240}
!159 = !{!127, !10, i64 244}
!160 = !{!127, !10, i64 248}
!161 = !{!126, !43, i64 96}
!162 = distinct !{!162, !128}
!163 = distinct !{!163, !"_ZNK8rawspeed20AbstractLJpegDecoder21getPrefixCodeDecodersEi"}
!164 = distinct !{!164, !163, !"_ZNK8rawspeed20AbstractLJpegDecoder21getPrefixCodeDecodersEi: argument 0"}
!165 = distinct !{!165, !128}
!166 = distinct !{!166, !128}
!167 = distinct !{!167, !128}
!168 = distinct !{ptr @_ZN8rawspeed17LJpegDecompressorD2Ev, ptr @_ZN8rawspeed8RawImageD2Ev, null, null, null}
end_hunk_1
