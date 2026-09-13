Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AMFImporter_Postprocess?download=true
inline.NumInlined: 1393
inline.NumDeleted: 732
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp11AMFImporter40PostprocessHelper_GetTextureID_Or_CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_:bb.a

_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i200: ; preds = %bb.as, %_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i198
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gm
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit203

bb.at:                                            ; preds = %_ZNKSt6vectorIP10AMFTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i195, %bb.aq
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit203: ; preds = %bb.ak, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i200
  %.sroa.8.0 = phi ptr [ null, %bb.ak ], [ %i.gd, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i200 ] ; 5 uses
  %.sroa.0284.2 = phi ptr [ %.sroa.0284.1, %bb.ak ], [ %i.go, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i200 ] ; 9 uses
  %.sroa.27.1 = phi ptr [ %.sroa.27.0, %bb.ak ], [ %i.gr, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i200 ] ; 6 uses
  %.sroa.46.2 = phi ptr [ %.sroa.27.0, %bb.ak ], [ %i.gs, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i200 ] ; 5 uses
  %i.gu = load i64, ptr %i.i, align 8
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit203
  %i.gw = invoke noundef zeroext i1 @_ZNK6Assimp11AMFImporter16Find_NodeElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18AMFNodeElementBase5ETypeEPPS9_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 12, ptr noundef nonnull %i.b)
          to label %bb.av unwind label %bb.ah

bb.av:                                            ; preds = %bb.au
  br i1 %i.gw, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZNK6Assimp11AMFImporter17Throw_ID_NotFoundERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #22
          to label %bb.ax unwind label %bb.ah

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.gx = load ptr, ptr %i.b, align 8             ; 4 uses
  %.not.i.i204 = icmp eq ptr %.sroa.27.1, %.sroa.46.2
  br i1 %.not.i.i204, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr %i.gx, ptr %.sroa.27.1, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.27.1, i64 8
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213

bb.ba:                                            ; preds = %bb.ay
  %i.gz = ptrtoint ptr %.sroa.27.1 to i64
  %i.ha = ptrtoint ptr %.sroa.0284.2 to i64
  %i.hb = sub i64 %i.gz, %i.ha                    ; 6 uses
  %i.hc = icmp eq i64 %i.hb, 9223372036854775800
  br i1 %i.hc, label %bb.bb, label %_ZNKSt6vectorIP10AMFTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i205

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc211 unwind label %bb.be

.noexc211:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIP10AMFTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i205: ; preds = %bb.ba
  %i.hd = ashr exact i64 %i.hb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i206 = call i64 @llvm.umax.i64(i64 %i.hd, i64 1)
  %i.he = add nsw i64 %.sroa.speculated.i.i.i.i206, %i.hd ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.hd
  %i.hg = call i64 @llvm.umin.i64(i64 %i.he, i64 1152921504606846975)
  %i.hh = select i1 %i.hf, i64 1152921504606846975, i64 %i.hg ; 3 uses
  %.not.i.i.i.i207 = icmp ne i64 %i.hh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i207)
  %i.hi = shl nuw nsw i64 %i.hh, 3
  %i.hj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hi) #24
          to label %.noexc212 unwind label %bb.be ; 4 uses

.noexc212:                                        ; preds = %_ZNKSt6vectorIP10AMFTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i205
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 %i.hb ; 2 uses
  store ptr %i.gx, ptr %i.hk, align 8
  %i.hl = icmp sgt i64 %i.hb, 0
  br i1 %i.hl, label %bb.bc, label %_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i208

bb.bc:                                            ; preds = %.noexc212
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hj, ptr align 8 %.sroa.0284.2, i64 %i.hb, i1 false)
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i208

_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i208: ; preds = %bb.bc, %.noexc212
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.not.i17.i.i.i209 = icmp eq ptr %.sroa.0284.2, null
  br i1 %.not.i17.i.i.i209, label %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i208
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0284.2, i64 noundef %i.hb) #23
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210

_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210: ; preds = %bb.bd, %_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i208
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hh
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213

bb.be:                                            ; preds = %_ZNKSt6vectorIP10AMFTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i205, %bb.bb
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213: ; preds = %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit203, %bb.az, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210
  %.sroa.12.0 = phi ptr [ %i.gx, %bb.az ], [ %i.gx, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210 ], [ null, %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit203 ] ; 5 uses
  %.sroa.0284.3 = phi ptr [ %.sroa.0284.2, %bb.az ], [ %i.hj, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210 ], [ %.sroa.0284.2, %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit203 ] ; 9 uses
  %.sroa.27.2 = phi ptr [ %i.gy, %bb.az ], [ %i.hm, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210 ], [ %.sroa.27.1, %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit203 ] ; 6 uses
  %.sroa.46.3 = phi ptr [ %.sroa.46.2, %bb.az ], [ %i.hn, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i210 ], [ %.sroa.46.2, %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit203 ] ; 5 uses
  %i.hp = load i64, ptr %i.l, align 8
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit223, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213
  %i.hr = invoke noundef zeroext i1 @_ZNK6Assimp11AMFImporter16Find_NodeElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18AMFNodeElementBase5ETypeEPPS9_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 12, ptr noundef nonnull %i.b)
          to label %bb.bg unwind label %bb.ah

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.hr, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZNK6Assimp11AMFImporter17Throw_ID_NotFoundERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #22
          to label %bb.bi unwind label %bb.ah

bb.bi:                                            ; preds = %bb.bh
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.hs = load ptr, ptr %i.b, align 8             ; 4 uses
  %.not.i.i214 = icmp eq ptr %.sroa.27.2, %.sroa.46.3
  br i1 %.not.i.i214, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.hs, ptr %.sroa.27.2, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.27.2, i64 8
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit223

bb.bl:                                            ; preds = %bb.bj
  %i.hu = ptrtoint ptr %.sroa.27.2 to i64
  %i.hv = ptrtoint ptr %.sroa.0284.3 to i64
  %i.hw = sub i64 %i.hu, %i.hv                    ; 6 uses
  %i.hx = icmp eq i64 %i.hw, 9223372036854775800
  br i1 %i.hx, label %bb.bm, label %_ZNKSt6vectorIP10AMFTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i215

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc221 unwind label %bb.bp

.noexc221:                                        ; preds = %bb.bm
  unreachable

_ZNKSt6vectorIP10AMFTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i215: ; preds = %bb.bl
  %i.hy = ashr exact i64 %i.hw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i216 = call i64 @llvm.umax.i64(i64 %i.hy, i64 1)
  %i.hz = add nsw i64 %.sroa.speculated.i.i.i.i216, %i.hy ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %i.hy
  %i.ib = call i64 @llvm.umin.i64(i64 %i.hz, i64 1152921504606846975)
  %i.ic = select i1 %i.ia, i64 1152921504606846975, i64 %i.ib ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.ic, 0
  call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.id = shl nuw nsw i64 %i.ic, 3
  %i.ie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #24
          to label %.noexc222 unwind label %bb.bp ; 4 uses

.noexc222:                                        ; preds = %_ZNKSt6vectorIP10AMFTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i215
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 %i.hw ; 2 uses
  store ptr %i.hs, ptr %i.if, align 8
  %i.ig = icmp sgt i64 %i.hw, 0
  br i1 %i.ig, label %bb.bn, label %_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i218

bb.bn:                                            ; preds = %.noexc222
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ie, ptr align 8 %.sroa.0284.3, i64 %i.hw, i1 false)
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i218

_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i218: ; preds = %bb.bn, %.noexc222
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.not.i17.i.i.i219 = icmp eq ptr %.sroa.0284.3, null
  br i1 %.not.i17.i.i.i219, label %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i220, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i218
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0284.3, i64 noundef %i.hw) #23
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i220

_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i220: ; preds = %bb.bo, %_ZNSt6vectorIP10AMFTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i218
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ic
  br label %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit223

bb.bp:                                            ; preds = %_ZNKSt6vectorIP10AMFTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i215, %bb.bm
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit223: ; preds = %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213, %bb.bk, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i220
  %.sroa.16.0 = phi ptr [ %i.hs, %bb.bk ], [ %i.hs, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i220 ], [ null, %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213 ] ; 5 uses
  %.sroa.0284.4 = phi ptr [ %.sroa.0284.3, %bb.bk ], [ %i.ie, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i220 ], [ %.sroa.0284.3, %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213 ] ; 14 uses
  %.sroa.27.3 = phi ptr [ %i.ht, %bb.bk ], [ %i.ih, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i220 ], [ %.sroa.27.2, %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213 ] ; 2 uses
  %.sroa.46.4 = phi ptr [ %.sroa.46.3, %bb.bk ], [ %i.ii, %_ZNSt6vectorIP10AMFTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i220 ], [ %.sroa.46.3, %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit213 ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ik = ptrtoint ptr %.sroa.27.3 to i64
  %i.il = ptrtoint ptr %.sroa.0284.4 to i64       ; 2 uses
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 3                 ; 3 uses
  %i.io = icmp ugt i64 %i.in, 1
  br i1 %i.io, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit223
  %i.ip = add nsw i64 %i.in, -1                   ; 2 uses
  %exitcond.not495 = icmp eq i64 %i.ip, 0
  br i1 %exitcond.not495, label %.loopexit, label %.lr.ph498

bb.br:                                            ; preds = %bb.bu
  %exitcond.not = icmp eq i64 %i.iu, %i.ip
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph498, !llvm.loop !34

bb.bs:                                            ; preds = %bb.bp, %bb.be, %bb.at, %bb.aj, %bb.ah
  %.sroa.0284.5 = phi ptr [ %.sroa.0284.3, %bb.bp ], [ %.sroa.0284.0, %bb.ah ], [ %.sroa.0284.2, %bb.be ], [ %.sroa.0284.1, %bb.at ], [ null, %bb.aj ]
  %.sroa.46.5 = phi ptr [ %.sroa.27.2, %bb.bp ], [ %.sroa.46.0, %bb.ah ], [ %.sroa.27.1, %bb.be ], [ %.sroa.27.0, %bb.at ], [ null, %bb.aj ]
  %.pn121 = phi { ptr, i32 } [ %i.ij, %bb.bp ], [ %i.fv, %bb.ah ], [ %i.ho, %bb.be ], [ %i.gt, %bb.at ], [ %i.fz, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.body

.lr.ph498:                                        ; preds = %bb.bq, %bb.br
  %.088496 = phi i64 [ %i.iu, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0284.4, i64 %.088496
  %i.ir = load ptr, ptr %i.iq, align 8            ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 80
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = add i64 %.088496, 1                     ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0284.4, i64 %i.iu
  %i.iw = load ptr, ptr %i.iv, align 8            ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 80
  %i.iy = load i64, ptr %i.ix, align 8
  %.not = icmp eq i64 %i.it, %i.iy
  br i1 %.not, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %.lr.ph498
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 88
  %i.ja = load i64, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 88
  %i.jc = load i64, ptr %i.jb, align 8
  %.not126 = icmp eq i64 %i.ja, %i.jc
  br i1 %.not126, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ir, i64 96
  %i.je = load i64, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  %i.jg = load i64, ptr %i.jf, align 8
  %.not127 = icmp eq i64 %i.je, %i.jg
  br i1 %.not127, label %bb.br, label %bb.bv, !llvm.loop !34

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %.lr.ph498
  %i.jh = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull @.str.4)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @__cxa_throw(ptr nonnull %i.jh, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.cw unwind label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jh) #21
  br label %.body

bb.by:                                            ; preds = %bb.bw
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.br, %bb.bq, %_ZNSt6vectorIP10AMFTextureSaIS1_EE9push_backEOS1_.exit223
  %i.jk = load ptr, ptr %.sroa.0284.4, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 80
  %i.jm = load i64, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store i64 %i.jm, ptr %i.jn, align 8
  %i.jo = load ptr, ptr %.sroa.0284.4, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 88
  %i.jq = load i64, ptr %i.jp, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %i.jq, ptr %i.jr, align 8
  %i.js = load ptr, ptr %.sroa.0284.4, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 96
  %i.ju = load i64, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 %i.ju, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store i8 0, ptr %i.jw, align 8
  %.not388 = icmp eq ptr %.sroa.27.3, %.sroa.0284.4
  br i1 %.not388, label %._crit_edge387, label %.lr.ph386

._crit_edge387:                                   ; preds = %.lr.ph386, %.loopexit
  %i.jx = getelementptr inbounds nuw i8, ptr %11, i64 57
  store i64 3472328297053054834, ptr %i.jx, align 1
  %i.jy = load i64, ptr %i.c, align 8
  %i.jz = icmp eq i64 %i.jy, 0                    ; 2 uses
  br i1 %i.jz, label %bb.ca, label %bb.bz

.lr.ph386:                                        ; preds = %.loopexit, %.lr.ph386
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph386 ], [ 0, %.loopexit ] ; 2 uses
  %i.ka = phi i8 [ %i.kf, %.lr.ph386 ], [ 0, %.loopexit ]
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0284.4, i64 %indvars.iv
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 128
  %i.ke = load i8, ptr %i.kd, align 8, !range !8, !noundef !9
  %i.kf = or i8 %i.ka, %i.ke                      ; 2 uses
  store i8 %i.kf, ptr %i.jw, align 8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.kg = and i64 %indvars.iv.next, 255
  %i.kh = icmp ugt i64 %i.in, %i.kg
  br i1 %i.kh, label %.lr.ph386, label %._crit_edge387, !llvm.loop !35

bb.bz:                                            ; preds = %._crit_edge387
  %i.ki = getelementptr inbounds nuw i8, ptr %11, i64 61
  store i8 56, ptr %i.ki, align 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge387
  %i.kj = load i64, ptr %i.f, align 8
  %i.kk = icmp eq i64 %i.kj, 0                    ; 2 uses
  br i1 %i.kk, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 62
  store i8 56, ptr %i.kl, align 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.km = load i64, ptr %i.i, align 8
  %i.kn = icmp eq i64 %i.km, 0                    ; 2 uses
  br i1 %i.kn, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 63
  store i8 56, ptr %i.ko, align 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.kp = load i64, ptr %i.l, align 8
  %i.kq = icmp eq i64 %i.kp, 0                    ; 2 uses
  br i1 %i.kq, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kr = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i8 56, ptr %i.kr, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ks = icmp eq ptr %.sroa.0.0, null
  %or.cond.not = select i1 %i.jz, i1 true, i1 %i.ks
  br i1 %or.cond.not, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 104
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 112
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = load ptr, ptr %i.kt, align 8
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = sub i64 %i.kx, %i.ky
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0342 = phi i64 [ 0, %bb.cg ], [ %i.kz, %bb.ch ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.cg ], [ 1, %bb.ch ]      ; 4 uses
  %i.la = icmp eq ptr %.sroa.8.0, null
  %or.cond7.not = select i1 %i.kk, i1 true, i1 %i.la
  br i1 %or.cond7.not, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 104
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 112
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = load ptr, ptr %i.lb, align 8
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = add i64 %.0342, %i.lf
  %i.li = sub i64 %i.lh, %i.lg
  %i.lj = add nuw nsw i64 %.0, 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.1343 = phi i64 [ %.0342, %bb.ci ], [ %i.li, %bb.cj ] ; 2 uses
  %.186 = phi i64 [ %.0, %bb.ci ], [ %i.lj, %bb.cj ] ; 4 uses
  %i.lk = icmp eq ptr %.sroa.12.0, null
  %or.cond11.not = select i1 %i.kn, i1 true, i1 %i.lk
  br i1 %or.cond11.not, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 104
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 112
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = load ptr, ptr %i.ll, align 8
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = add i64 %.1343, %i.lp
  %i.ls = sub i64 %i.lr, %i.lq
  %i.lt = add nuw nsw i64 %.186, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.2344 = phi i64 [ %.1343, %bb.ck ], [ %i.ls, %bb.cl ] ; 2 uses
  %.2 = phi i64 [ %.186, %bb.ck ], [ %i.lt, %bb.cl ] ; 2 uses
  %i.lu = icmp eq ptr %.sroa.16.0, null
  %or.cond15.not = select i1 %i.kq, i1 true, i1 %i.lu
  br i1 %or.cond15.not, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.16.0, i64 104
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.16.0, i64 112
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = load ptr, ptr %i.lv, align 8
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = add i64 %.2344, %i.lz
  %i.mc = sub i64 %i.mb, %i.ma
  %i.md = add nuw nsw i64 %.2, 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.3345 = phi i64 [ %.2344, %bb.cm ], [ %i.mc, %bb.cn ] ; 9 uses
  %.3 = phi i64 [ %.2, %bb.cm ], [ %i.md, %bb.cn ] ; 5 uses
  %i.me = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.3345) #24
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.mf = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 5 uses
  store ptr %i.me, ptr %i.mf, align 8
  %.val136 = load i64, ptr %i.c, align 8
  %i.mg = icmp ne i64 %.val136, 0
  %i.mh = icmp ne i64 %.3345, 0
  %or.cond360 = and i1 %i.mh, %i.mg
  br i1 %or.cond360, label %.lr.ph.i.preheader, label %"_ZZN6Assimp11AMFImporter40PostprocessHelper_GetTextureID_Or_CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_ENK3$_0clES8_mmh.exit"

.lr.ph.i.preheader:                               ; preds = %bb.cp
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 104
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 112
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt6vectorIhSaIhEE2atEm.exit.i
  %.03.i = phi i64 [ %i.mt, %_ZNSt6vectorIhSaIhEE2atEm.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.0102.i = phi i64 [ %i.mu, %_ZNSt6vectorIhSaIhEE2atEm.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = load ptr, ptr %i.mi, align 8            ; 2 uses
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn                    ; 2 uses
  %.not.i.i.i = icmp ult i64 %.0102.i, %i.mo
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE2atEm.exit.i, label %.invoke

_ZNSt6vectorIhSaIhEE2atEm.exit.i:                 ; preds = %.lr.ph.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.0102.i
  %i.mq = load i8, ptr %i.mp, align 1
  %i.mr = load ptr, ptr %i.mf, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.03.i
  store i8 %i.mq, ptr %i.ms, align 1
  %i.mt = add i64 %.03.i, %.3                     ; 2 uses
  %i.mu = add nuw i64 %.0102.i, 1
  %i.mv = icmp ult i64 %i.mt, %.3345
  br i1 %i.mv, label %.lr.ph.i, label %"_ZZN6Assimp11AMFImporter40PostprocessHelper_GetTextureID_Or_CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_ENK3$_0clES8_mmh.exit", !llvm.loop !36

"_ZZN6Assimp11AMFImporter40PostprocessHelper_GetTextureID_Or_CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_ENK3$_0clES8_mmh.exit": ; preds = %_ZNSt6vectorIhSaIhEE2atEm.exit.i, %bb.cp
  %.val135 = load i64, ptr %i.f, align 8
  %i.mw = icmp ne i64 %.val135, 0
  %i.mx = icmp ult i64 %.0, %.3345
  %or.cond361 = and i1 %i.mx, %i.mw
  br i1 %or.cond361, label %.lr.ph.i226.preheader, label %"_ZZN6Assimp11AMFImporter40PostprocessHelper_GetTextureID_Or_CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_ENK3$_0clES8_mmh.exit232"

.lr.ph.i226.preheader:                            ; preds = %"_ZZN6Assimp11AMFImporter40PostprocessHelper_GetTextureID_Or_CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_ENK3$_0clES8_mmh.exit"
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 104
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 112
end_hunk_0
