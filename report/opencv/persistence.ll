Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/persistence?download=true
inline.NumInlined: 2260
inline.NumDeleted: 815
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv11FileStorage4Impl13Base64Decoder8readMoreEi:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK2cv11FileStorage4Impl13Base64Decoder9getParserEv.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !113
  %.pre9.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !145
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ct = phi ptr [ %.pre9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %i.cu = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dr, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %.07.i.i.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i ], [ %i.dt, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %i.ds, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !31
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !31
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !113
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 2 uses
  store ptr %i.cx, ptr %i.cr, align 8, !tbaa !113
  %.pre8.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !145
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cy = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 4 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 7 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775807
  br i1 %i.dc, label %bb.x, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #39
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dd = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.db ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.db
  %i.df = call i64 @llvm.umin.i64(i64 %i.dd, i64 9223372036854775807)
  %i.dg = select i1 %i.de, i64 9223372036854775807, i64 %i.df ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #42 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.db ; 2 uses
  %i.dj = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !31
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !31
  %i.dk = icmp sgt i64 %i.db, 0
  br i1 %i.dk, label %bb.y, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr align 1 %i.cy, i64 %i.db, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !145
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.do) #40
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  store ptr %i.dh, ptr %i.cm, align 8, !tbaa !112
  store ptr %i.dl, ptr %i.cr, align 8, !tbaa !113
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg ; 2 uses
  store ptr %i.dp, ptr %i.cs, align 8, !tbaa !145
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.v
  %i.dq = phi ptr [ %.pre8.i.i.i.i.i, %bb.v ], [ %i.dp, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.dr = phi ptr [ %i.cx, %bb.v ], [ %i.dl, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.dt = add nsw i64 %.07.i.i.i.i.i, -1
  %i.du = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.du, label %bb.u, label %_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit.loopexit, !llvm.loop !374

_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i
  %.pre131 = load ptr, ptr %i.b, align 8, !tbaa !39 ; 2 uses
  %.pre132 = load ptr, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %.pre146 = ptrtoint ptr %.pre131 to i64
  %.pre148 = ptrtoint ptr %.pre132 to i64
  %.pre150 = sub i64 %.pre146, %.pre148
  br label %_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit

_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit: ; preds = %_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit.loopexit, %_ZNK2cv11FileStorage4Impl13Base64Decoder9getParserEv.exit
  %.pre-phi151 = phi i64 [ %.pre150, %_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit.loopexit ], [ %i.cp, %_ZNK2cv11FileStorage4Impl13Base64Decoder9getParserEv.exit ]
  %i.dv = phi ptr [ %.pre132, %_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit.loopexit ], [ %i.cl, %_ZNK2cv11FileStorage4Impl13Base64Decoder9getParserEv.exit ]
  %i.dw = phi ptr [ %.pre131, %_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit.loopexit ], [ %i.ck, %_ZNK2cv11FileStorage4Impl13Base64Decoder9getParserEv.exit ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !380
  %i.dz = add i64 %.pre-phi151, %i.dy             ; 3 uses
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !380
  %i.ea = icmp ne ptr %i.dv, %i.dw
  %or.cond.not = select i1 %i.cj, i1 %i.ea, i1 false
  br i1 %or.cond.not, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit
  store i8 1, ptr %i.c, align 8, !tbaa !224
  %i.eb = and i64 %i.dz, 3
  %.not70114 = icmp eq i64 %i.eb, 0
  br i1 %.not70114, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre133 = load ptr, ptr %i.ec, align 8, !tbaa !113
  %.pre135 = load ptr, ptr %i.ed, align 8, !tbaa !145
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph117, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.ee = phi ptr [ %.pre135, %.lr.ph117 ], [ %i.ez, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %i.ef = phi ptr [ %.pre133, %.lr.ph117 ], [ %i.fa, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ] ; 2 uses
  %.058115 = phi i64 [ %i.dz, %.lr.ph117 ], [ %i.fb, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ]
  %.not.i.i76 = icmp eq ptr %i.ef, %i.ee
  br i1 %.not.i.i76, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 61, ptr %i.ef, align 1, !tbaa !31
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !113
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 2 uses
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !113
  %.pre134 = load ptr, ptr %i.ed, align 8, !tbaa !145
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 4 uses
  %i.ej = ptrtoint ptr %i.ee to i64
  %i.ek = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 7 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775807
  br i1 %i.em, label %bb.ae, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #39
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.en = add i64 %.sroa.speculated.i.i.i.i, %i.el ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.el
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 9223372036854775807)
  %i.eq = select i1 %i.eo, i64 9223372036854775807, i64 %i.ep ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.er = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #42 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.el ; 2 uses
  store i8 61, ptr %i.es, align 1, !tbaa !31
  %i.et = icmp sgt i64 %i.el, 0
  br i1 %i.et, label %bb.af, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.af:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.er, ptr align 1 %i.ei, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.af, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.ev = load ptr, ptr %i.ed, align 8, !tbaa !145
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %i.ew, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.ex) #40
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.er, ptr %i.cm, align 8, !tbaa !112
  store ptr %i.eu, ptr %i.ec, align 8, !tbaa !113
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq ; 2 uses
  store ptr %i.ey, ptr %i.ed, align 8, !tbaa !145
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %bb.ac, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i
  %i.ez = phi ptr [ %.pre134, %bb.ac ], [ %i.ey, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ]
  %i.fa = phi ptr [ %i.eh, %bb.ac ], [ %i.eu, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ]
  %i.fb = add i64 %.058115, 1                     ; 2 uses
  %i.fc = and i64 %i.fb, 3
  %.not70 = icmp eq i64 %i.fc, 0
  br i1 %.not70, label %.loopexit, label %bb.ab, !llvm.loop !375

.loopexit:                                        ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %bb.aa, %_ZSt4copyIPcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S7_S6_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !113
  %i.ff = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = trunc i64 %i.fi to i32                  ; 2 uses
  %or.cond = icmp slt i32 %i.fj, 4
  br i1 %or.cond, label %.thread, label %.lr.ph120

.lr.ph120:                                        ; preds = %.loopexit
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %8 = shl i64 %i.fi, 32
  %sext = add nsw i64 %8, -17179869184
  %9 = ashr exact i64 %sext, 32
  %.pre136 = load ptr, ptr %i.g, align 8, !tbaa !209
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph120, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit96
  %i.fl = phi ptr [ %.pre136, %.lr.ph120 ], [ %i.iy, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit96 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit96 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 %indvars.iv ; 4 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !31
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @_ZZN2cv11FileStorage4Impl13Base64Decoder8readMoreEiE9base64tab, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !31
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !31
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZZN2cv11FileStorage4Impl13Base64Decoder8readMoreEiE9base64tab, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !31  ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !31
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZZN2cv11FileStorage4Impl13Base64Decoder8readMoreEiE9base64tab, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !31  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !31
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @_ZZN2cv11FileStorage4Impl13Base64Decoder8readMoreEiE9base64tab, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !31
  %i.gg = shl i8 %i.fq, 2
  %i.gh = lshr i8 %i.fv, 4
  %i.gi = or i8 %i.gh, %i.gg                      ; 2 uses
  %i.gj = load ptr, ptr %i.fk, align 8, !tbaa !151
  %.not.i.i77 = icmp eq ptr %i.fl, %i.gj
  br i1 %.not.i.i77, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 %i.gi, ptr %i.fl, align 1, !tbaa !31
  %i.gk = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 2 uses
  store ptr %i.gl, ptr %i.g, align 8, !tbaa !209
  %.pre137 = load ptr, ptr %i.fk, align 8, !tbaa !151
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gm = load ptr, ptr %i.f, align 8, !tbaa !150 ; 4 uses
  %i.gn = ptrtoint ptr %i.fl to i64
  %i.go = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.gp = sub i64 %i.gn, %i.go                    ; 7 uses
  %i.gq = icmp eq i64 %i.gp, 9223372036854775807
  br i1 %i.gq, label %bb.ak, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #39
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %.sroa.speculated.i.i.i.i78 = call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gr = add i64 %.sroa.speculated.i.i.i.i78, %i.gp ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.gp
  %i.gt = call i64 @llvm.umin.i64(i64 %i.gr, i64 9223372036854775807)
  %i.gu = select i1 %i.gs, i64 9223372036854775807, i64 %i.gt ; 3 uses
  %.not.i.i.i.i79 = icmp ne i64 %i.gu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i79)
  %i.gv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #42 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gp ; 2 uses
  store i8 %i.gi, ptr %i.gw, align 1, !tbaa !31
  %i.gx = icmp sgt i64 %i.gp, 0
  br i1 %i.gx, label %bb.al, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.al:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gv, ptr align 1 %i.gm, i64 %i.gp, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.al, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 1 ; 2 uses
  %.not.i17.i.i.i80 = icmp eq ptr %i.gm, null
  br i1 %.not.i17.i.i.i80, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.gz = load ptr, ptr %i.fk, align 8, !tbaa !151
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.ha, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.hb) #40
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.am, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.gv, ptr %i.f, align 8, !tbaa !150
  store ptr %i.gy, ptr %i.g, align 8, !tbaa !209
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gu ; 2 uses
  store ptr %i.hc, ptr %i.fk, align 8, !tbaa !151
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.ai, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.hd = phi ptr [ %.pre137, %bb.ai ], [ %i.hc, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.he = phi ptr [ %i.gl, %bb.ai ], [ %i.gy, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.hf = shl i8 %i.fv, 4
  %i.hg = lshr i8 %i.ga, 2
  %i.hh = or i8 %i.hg, %i.hf                      ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.he, %i.hd
  br i1 %.not.i.i81, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  store i8 %i.hh, ptr %i.he, align 1, !tbaa !31
  %i.hi = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1 ; 2 uses
  store ptr %i.hj, ptr %i.g, align 8, !tbaa !209
  %.pre138 = load ptr, ptr %i.fk, align 8, !tbaa !151
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit88

bb.ao:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.hk = load ptr, ptr %i.f, align 8, !tbaa !150 ; 4 uses
  %i.hl = ptrtoint ptr %i.hd to i64
  %i.hm = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm                    ; 7 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775807
  br i1 %i.ho, label %bb.ap, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i82

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #39
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i82: ; preds = %bb.ao
  %.sroa.speculated.i.i.i.i83 = call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.hp = add i64 %.sroa.speculated.i.i.i.i83, %i.hn ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.hn
  %i.hr = call i64 @llvm.umin.i64(i64 %i.hp, i64 9223372036854775807)
  %i.hs = select i1 %i.hq, i64 9223372036854775807, i64 %i.hr ; 3 uses
  %.not.i.i.i.i84 = icmp ne i64 %i.hs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i84)
  %i.ht = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #42 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hn ; 2 uses
  store i8 %i.hh, ptr %i.hu, align 1, !tbaa !31
  %i.hv = icmp sgt i64 %i.hn, 0
  br i1 %i.hv, label %bb.aq, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i85

bb.aq:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ht, ptr align 1 %i.hk, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i85

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i85: ; preds = %bb.aq, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i82
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 2 uses
  %.not.i17.i.i.i86 = icmp eq ptr %i.hk, null
  br i1 %.not.i17.i.i.i86, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i87, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i85
  %i.hx = load ptr, ptr %i.fk, align 8, !tbaa !151
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = sub i64 %i.hy, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hz) #40
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i87

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i87: ; preds = %bb.ar, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i85
  store ptr %i.ht, ptr %i.f, align 8, !tbaa !150
  store ptr %i.hw, ptr %i.g, align 8, !tbaa !209
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hs ; 2 uses
  store ptr %i.ia, ptr %i.fk, align 8, !tbaa !151
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit88

_ZNSt6vectorIhSaIhEE9push_backEOh.exit88:         ; preds = %bb.an, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i87
  %i.ib = phi ptr [ %.pre138, %bb.an ], [ %i.ia, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i87 ] ; 2 uses
  %i.ic = phi ptr [ %i.hj, %bb.an ], [ %i.hw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i87 ] ; 2 uses
  %i.id = shl i8 %i.ga, 6
  %i.ie = or i8 %i.gf, %i.id                      ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.ic, %i.ib
  br i1 %.not.i.i89, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit88
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !31
  %i.if = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1 ; 2 uses
  store ptr %i.ig, ptr %i.g, align 8, !tbaa !209
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit96

bb.at:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit88
  %i.ih = load ptr, ptr %i.f, align 8, !tbaa !150 ; 4 uses
  %i.ii = ptrtoint ptr %i.ib to i64
  %i.ij = ptrtoint ptr %i.ih to i64               ; 2 uses
  %i.ik = sub i64 %i.ii, %i.ij                    ; 7 uses
  %i.il = icmp eq i64 %i.ik, 9223372036854775807
  br i1 %i.il, label %bb.au, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i90

bb.au:                                            ; preds = %bb.at
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #39
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i90: ; preds = %bb.at
  %.sroa.speculated.i.i.i.i91 = call i64 @llvm.umax.i64(i64 %i.ik, i64 1)
  %i.im = add i64 %.sroa.speculated.i.i.i.i91, %i.ik ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.ik
  %i.io = call i64 @llvm.umin.i64(i64 %i.im, i64 9223372036854775807)
  %i.ip = select i1 %i.in, i64 9223372036854775807, i64 %i.io ; 3 uses
  %.not.i.i.i.i92 = icmp ne i64 %i.ip, 0
  call void @llvm.assume(i1 %.not.i.i.i.i92)
  %i.iq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #42 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ik ; 2 uses
  store i8 %i.ie, ptr %i.ir, align 1, !tbaa !31
  %i.is = icmp sgt i64 %i.ik, 0
  br i1 %i.is, label %bb.av, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i93

bb.av:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i90
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr align 1 %i.ih, i64 %i.ik, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i93

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i93: ; preds = %bb.av, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i90
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 1 ; 2 uses
  %.not.i17.i.i.i94 = icmp eq ptr %i.ih, null
  br i1 %.not.i17.i.i.i94, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i95, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i93
  %i.iu = load ptr, ptr %i.fk, align 8, !tbaa !151
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = sub i64 %i.iv, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.iw) #40
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i95

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i95: ; preds = %bb.aw, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i93
  store ptr %i.iq, ptr %i.f, align 8, !tbaa !150
  store ptr %i.it, ptr %i.g, align 8, !tbaa !209
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ip
  store ptr %i.ix, ptr %i.fk, align 8, !tbaa !151
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit96

_ZNSt6vectorIhSaIhEE9push_backEOh.exit96:         ; preds = %bb.as, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i95
  %i.iy = phi ptr [ %i.ig, %bb.as ], [ %i.it, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i95 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 4 uses
  %.not71 = icmp sgt i64 %indvars.iv.next, %9
  br i1 %.not71, label %._crit_edge121, label %bb.ah, !llvm.loop !376

._crit_edge121:                                   ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit96
  %10 = trunc nuw nsw i64 %indvars.iv.next to i32 ; 3 uses
  %i.iz = load ptr, ptr %i.cm, align 8, !tbaa !112
  %i.ja = getelementptr i8, ptr %i.iz, i64 %indvars.iv.next ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 -1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !31
  %i.jd = icmp eq i8 %i.jc, 61
  br i1 %i.jd, label %.threadcondstore.split, label %.thread

.threadcondstore.split:                           ; preds = %._crit_edge121
  %i.je = getelementptr i8, ptr %i.ja, i64 -2
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !31
  %i.jg = icmp eq i8 %i.jf, 61
  %.pre139 = load ptr, ptr %i.f, align 8, !tbaa !39 ; 2 uses
  %.pre140 = load ptr, ptr %i.g, align 8, !tbaa !39 ; 2 uses
  %i.jh = icmp ne ptr %.pre139, %.pre140
  %or.cond.not201 = and i1 %i.jg, %i.jh           ; 2 uses
  %.idx = sext i1 %or.cond.not201 to i64
  %i.ji = getelementptr inbounds i8, ptr %.pre140, i64 %.idx ; 2 uses
  %i.jj = icmp ne ptr %.pre139, %i.ji             ; 2 uses
  %i.jk = or i1 %or.cond.not201, %i.jj
  br i1 %i.jk, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %.threadcondstore.split
  %simplifycfg.merge.idx = sext i1 %i.jj to i64
  %simplifycfg.merge = getelementptr inbounds i8, ptr %i.ji, i64 %simplifycfg.merge.idx
  store ptr %simplifycfg.merge, ptr %i.g, align 8, !tbaa !209
  br label %.thread

.thread:                                          ; preds = %bb.ax, %.threadcondstore.split, %.loopexit, %._crit_edge121
  %.157107 = phi i32 [ 0, %.loopexit ], [ %10, %._crit_edge121 ], [ %10, %.threadcondstore.split ], [ %10, %bb.ax ] ; 2 uses
  %i.jl = sub nsw i32 %i.fj, %.157107             ; 4 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.lr.ph123.preheader, label %.thread.._crit_edge124_crit_edge

.thread.._crit_edge124_crit_edge:                 ; preds = %.thread
  %.pre152 = sext i32 %i.jl to i64
  br label %._crit_edge124

.lr.ph123.preheader:                              ; preds = %.thread
  %i.jn = zext i32 %.157107 to i64                ; 5 uses
  %i.jo = zext nneg i32 %i.jl to i64              ; 4 uses
  %xtraiter203 = and i64 %i.jo, 3                 ; 3 uses
  %i.jp = icmp ult i32 %i.jl, 4
  br i1 %i.jp, label %.lr.ph123.epil.preheader, label %.lr.ph123.preheader.new

.lr.ph123.preheader.new:                          ; preds = %.lr.ph123.preheader
  %unroll_iter207 = and i64 %i.jo, 2147483644
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123, %.lr.ph123.preheader.new
  %indvars.iv127 = phi i64 [ 0, %.lr.ph123.preheader.new ], [ %indvars.iv.next128.3, %.lr.ph123 ] ; 6 uses
  %niter208 = phi i64 [ 0, %.lr.ph123.preheader.new ], [ %niter208.next.3, %.lr.ph123 ]
  %i.jq = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv127
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jn
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !31
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv127
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !31
  %indvars.iv.next128 = or disjoint i64 %indvars.iv127, 1 ; 2 uses
  %i.jv = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %indvars.iv.next128
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jn
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !31
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 %indvars.iv.next128
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !31
  %indvars.iv.next128.1 = or disjoint i64 %indvars.iv127, 2 ; 2 uses
  %i.ka = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv.next128.1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jn
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !31
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv.next128.1
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !31
  %indvars.iv.next128.2 = or disjoint i64 %indvars.iv127, 3 ; 2 uses
  %i.kf = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %indvars.iv.next128.2
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.jn
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !31
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 %indvars.iv.next128.2
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !31
  %indvars.iv.next128.3 = add nuw nsw i64 %indvars.iv127, 4 ; 2 uses
  %niter208.next.3 = add i64 %niter208, 4         ; 2 uses
  %niter208.ncmp.3.not = icmp eq i64 %niter208.next.3, %unroll_iter207
  br i1 %niter208.ncmp.3.not, label %._crit_edge124.loopexit.unr-lcssa, label %.lr.ph123, !llvm.loop !377

._crit_edge124.loopexit.unr-lcssa:                ; preds = %.lr.ph123
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod205.not, label %._crit_edge124, label %.lr.ph123.epil.preheader

.lr.ph123.epil.preheader:                         ; preds = %._crit_edge124.loopexit.unr-lcssa, %.lr.ph123.preheader
  %indvars.iv127.epil.init = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next128.3, %._crit_edge124.loopexit.unr-lcssa ]
  %lcmp.mod206 = icmp ne i64 %xtraiter203, 0
  call void @llvm.assume(i1 %lcmp.mod206)
  br label %.lr.ph123.epil

.lr.ph123.epil:                                   ; preds = %.lr.ph123.epil, %.lr.ph123.epil.preheader
  %indvars.iv127.epil = phi i64 [ %indvars.iv127.epil.init, %.lr.ph123.epil.preheader ], [ %indvars.iv.next128.epil, %.lr.ph123.epil ] ; 3 uses
  %epil.iter204 = phi i64 [ 0, %.lr.ph123.epil.preheader ], [ %epil.iter204.next, %.lr.ph123.epil ]
  %i.kk = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %indvars.iv127.epil
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.jn
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !31
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %indvars.iv127.epil
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !31
  %indvars.iv.next128.epil = add nuw nsw i64 %indvars.iv127.epil, 1
  %epil.iter204.next = add i64 %epil.iter204, 1   ; 2 uses
  %epil.iter204.cmp.not = icmp eq i64 %epil.iter204.next, %xtraiter203
  br i1 %epil.iter204.cmp.not, label %._crit_edge124, label %.lr.ph123.epil, !llvm.loop !378

._crit_edge124:                                   ; preds = %._crit_edge124.loopexit.unr-lcssa, %.lr.ph123.epil, %.thread.._crit_edge124_crit_edge
  %.pre-phi153 = phi i64 [ %.pre152, %.thread.._crit_edge124_crit_edge ], [ %i.jo, %.lr.ph123.epil ], [ %i.jo, %._crit_edge124.loopexit.unr-lcssa ] ; 4 uses
  %i.kp = load ptr, ptr %i.fd, align 8, !tbaa !113 ; 2 uses
  %i.kq = load ptr, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %.pre-phi153
  br i1 %i.ku, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge124
  %i.kv = sub nuw i64 %.pre-phi153, %i.kt
  call void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 noundef %i.kv)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.az:                                            ; preds = %._crit_edge124
  %i.kw = icmp ugt i64 %i.kt, %.pre-phi153
  br i1 %i.kw, label %bb.ba, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.ba:                                            ; preds = %bb.az
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 %.pre-phi153 ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.kp, %i.kx
  br i1 %.not.i.i97, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ba
  store ptr %i.kx, ptr %i.fd, align 8, !tbaa !113
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.ay, %bb.az, %bb.ba, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.ky = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.kz = load ptr, ptr %i.f, align 8, !tbaa !150
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = trunc i64 %i.lc to i32
  %i.le = icmp sle i32 %1, %i.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %.0 = phi i1 [ %i.le, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZN2cv11FileStorage4Impl13Base64Decoder8getUInt8Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !227  ; 2 uses
  %.not = icmp ult i64 %i.i, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN2cv11FileStorage4Impl13Base64Decoder8readMoreEi(ptr noundef nonnull align 8 dereferenceable(97) %0, i32 noundef 1)
  br i1 %i.j, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %i.h, align 8, !tbaa !227
  %.pre2 = load ptr, ptr %i.a, align 8, !tbaa !150
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi ptr [ %.pre2, %._crit_edge ], [ %i.d, %bb.a ]
  %i.l = phi i64 [ %.pre, %._crit_edge ], [ %i.i, %bb.a ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.h, align 8, !tbaa !227
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i8 [ %i.o, %bb.c ], [ 0, %bb.b ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i16 @_ZN2cv11FileStorage4Impl13Base64Decoder9getUInt16Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !227  ; 2 uses
  %i.j = add i64 %i.i, 2                          ; 2 uses
  %i.k = icmp ugt i64 %i.j, %i.g
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN2cv11FileStorage4Impl13Base64Decoder8readMoreEi(ptr noundef nonnull align 8 dereferenceable(97) %0, i32 noundef 2)
  br i1 %i.l, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %i.h, align 8, !tbaa !227 ; 2 uses
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !150
  %.pre4 = add i64 %.pre, 2
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi = phi i64 [ %.pre4, %._crit_edge ], [ %i.j, %bb.a ]
  %i.m = phi ptr [ %.pre3, %._crit_edge ], [ %i.d, %bb.a ]
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ %i.i, %bb.a ]
  %i.o = getelementptr i8, ptr %i.m, i64 %i.n     ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !31
  %i.q = zext i8 %i.p to i16
  %i.r = getelementptr i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31
  %i.t = zext i8 %i.s to i16
  %i.u = shl nuw i16 %i.t, 8
  %i.v = or disjoint i16 %i.u, %i.q
  store i64 %.pre-phi, ptr %i.h, align 8, !tbaa !227
end_hunk_0
