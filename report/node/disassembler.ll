inline.NumInlined: 896
inline.NumDeleted: 542
begin_hunk_0_@_ZN2v88internalL8DecodeItEPNS0_7IsolateEPNS0_24ExternalReferenceEncoderERSoNS0_13CodeReferenceERKNS0_15V8NameConverterEPhSA_mm:bb.a
bb.i:                                             ; preds = %.lr.ph318, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit
  %.0317 = phi ptr [ %5, %.lr.ph318 ], [ %.2, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ] ; 14 uses
  %.098316 = phi i32 [ -1, %.lr.ph318 ], [ %.2100, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ] ; 5 uses
  %i.cu = icmp sgt i32 %.098316, 0                ; 2 uses
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.037.0.copyload = load ptr, ptr %9, align 8
  %.sroa.238.0.copyload = load i64, ptr %i.d, align 8
  %.0.copyload.i = load i32, ptr %.0317, align 1
  %i.cv = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.037.0.copyload, i64 %.sroa.238.0.copyload, ptr noundef nonnull @.str.9, i32 noundef %.0.copyload.i) #15 ; 0 uses
  %i.cw = add nsw i32 %.098316, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %.0317, i64 4
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.cy = call noundef i32 @_ZN6disasm12Disassembler18ConstantPoolSizeAtEPh(ptr noundef nonnull align 8 dereferenceable(9) %11, ptr noundef %.0317) #15 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, -1
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.032.0.copyload = load ptr, ptr %9, align 8
  %.sroa.233.0.copyload = load i64, ptr %i.d, align 8
  %.0.copyload.i133 = load i32, ptr %.0317, align 1
  %i.da = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.032.0.copyload, i64 %.sroa.233.0.copyload, ptr noundef nonnull @.str.10, i32 noundef %.0.copyload.i133, i32 noundef %i.cy) #15 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0317, i64 4
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.dc = load i8, ptr %i.ch, align 8, !range !21, !noundef !22
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = load i64, ptr %i.ci, align 8
  %i.df = ptrtoint ptr %.0317 to i64
  %i.dg = icmp eq i64 %i.de, %i.df
  %i.dh = load i8, ptr %i.cj, align 8
  %i.di = icmp eq i8 %i.dh, 10
  %or.cond246 = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %or.cond246, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i134 = load ptr, ptr %.0317, align 1
  %.sroa.028.0.copyload = load ptr, ptr %9, align 8
  %.sroa.229.0.copyload = load i64, ptr %i.d, align 8
  %i.dj = ptrtoint ptr %.0.copyload.i134 to i64   ; 2 uses
  %i.dk = sub i64 %i.dj, %i.ck
  %i.dl = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.028.0.copyload, i64 %.sroa.229.0.copyload, ptr noundef nonnull @.str.11, i64 noundef %i.dj, i64 noundef %i.dk) #15 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0317, i64 8
  br label %bb.u

bb.p:                                             ; preds = %bb.n, %bb.m
  br i1 %.not247, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = call noundef zeroext i1 @_ZNK2v88internal21JumpTableInfoIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0221.0) #15
  br i1 %i.dn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.do = call noundef i32 @_ZNK2v88internal21JumpTableInfoIterator11GetPCOffsetEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0221.0) #15
  %i.dp = ptrtoint ptr %.0317 to i64
  %i.dq = sub i64 %i.dp, %i.ck
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = icmp eq i32 %i.do, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dt = call noundef i32 @_ZNK2v88internal21JumpTableInfoIterator9GetTargetEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0221.0) #15
  %.sroa.025.0.copyload = load ptr, ptr %9, align 8
  %.sroa.226.0.copyload = load i64, ptr %i.d, align 8
  %i.du = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.025.0.copyload, i64 %.sroa.226.0.copyload, ptr noundef nonnull @.str.12, i32 noundef %i.dt) #15 ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0317, i64 4
  call void @_ZN2v88internal21JumpTableInfoIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0221.0) #15
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.dw = load ptr, ptr %9, align 8
  store i8 0, ptr %i.dw, align 1
  %.sroa.024.0.copyload = load ptr, ptr %9, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.d, align 8
  %i.dx = call noundef i32 @_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh(ptr noundef nonnull align 8 dereferenceable(9) %11, ptr %.sroa.024.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %.0317) #15
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %.0317, i64 %i.dy
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.s, %bb.t, %bb.o, %bb.j
  %.2100 = phi i32 [ %i.cw, %bb.j ], [ %i.cy, %bb.l ], [ %.098316, %bb.s ], [ %.098316, %bb.t ], [ %.098316, %bb.o ]
  %.2 = phi ptr [ %i.cx, %bb.j ], [ %i.db, %bb.l ], [ %i.dv, %bb.s ], [ %i.dz, %bb.t ], [ %i.dm, %bb.o ] ; 5 uses
  %i.ea = ptrtoint ptr %.2 to i64                 ; 4 uses
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = icmp ult i64 %i.cl, %i.ea
  br i1 %i.eb, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not112 = icmp ult i64 %i.cm, %i.ea
  br i1 %.not112, label %bb.x, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, !llvm.loop !23

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.ec = load i8, ptr %i.ch, align 8, !range !21, !noundef !22
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %.sroa.0184.0283 = phi ptr [ %.sroa.0184.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 6 uses
  %.sroa.9.0282 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 5 uses
  %.sroa.15.0281 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 3 uses
  %.sroa.0177.0280 = phi ptr [ %.sroa.0177.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 6 uses
  %.sroa.11.0279 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 4 uses
  %.sroa.7.0278 = phi ptr [ %.sroa.7.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 3 uses
  %.sroa.0172.0277 = phi ptr [ %.sroa.0172.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 6 uses
  %.sroa.11182.0276 = phi ptr [ %.sroa.11182.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 4 uses
  %.sroa.7180.0275 = phi ptr [ %.sroa.7180.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ null, %bb.x ] ; 3 uses
  %i.ee = load i64, ptr %i.ci, align 8            ; 3 uses
  %i.ef = icmp ult i64 %i.ee, %i.ea
  br i1 %i.ef, label %bb.y, label %.critedge2.loopexit

bb.y:                                             ; preds = %.lr.ph
  %.not.i.i135 = icmp eq ptr %.sroa.9.0282, %.sroa.15.0281
  br i1 %.not.i.i135, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.ee, ptr %.sroa.9.0282, align 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.aa:                                            ; preds = %bb.y
  %i.eg = ptrtoint ptr %.sroa.9.0282 to i64
  %i.eh = ptrtoint ptr %.sroa.0184.0283 to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 6 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775800
  br i1 %i.ej, label %bb.ab, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.ek = ashr exact i64 %i.ei, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.el = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ek ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.el, i64 1152921504606846975)
  %i.eo = select i1 %i.em, i64 1152921504606846975, i64 %i.en ; 3 uses
  %.not.i.i.i.i136 = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i136)
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #18 ; 4 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ei ; 2 uses
  store i64 %i.ee, ptr %i.er, align 8
  %i.es = icmp sgt i64 %i.ei, 0
  br i1 %i.es, label %bb.ac, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr align 8 %.sroa.0184.0283, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ac, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0184.0283, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.0283, i64 noundef %i.ei) #16
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.z, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.sroa.15.1 = phi ptr [ %i.et, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.15.0281, %bb.z ] ; 2 uses
  %.pn = phi ptr [ %i.er, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0282, %bb.z ]
  %.sroa.0184.1 = phi ptr [ %i.eq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0184.0283, %bb.z ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.eu = load i8, ptr %i.cj, align 8             ; 2 uses
  %.not.i.i137 = icmp eq ptr %.sroa.7180.0275, %.sroa.11182.0276
  br i1 %.not.i.i137, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  store i8 %i.eu, ptr %.sroa.7180.0275, align 1
  br label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.ev = ptrtoint ptr %.sroa.11182.0276 to i64
  %i.ew = ptrtoint ptr %.sroa.0177.0280 to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 8 uses
  %i.ey = icmp eq i64 %i.ex, 9223372036854775807
  br i1 %i.ey, label %bb.ag, label %_ZNKSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

_ZNKSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %.sroa.speculated.i.i.i.i138 = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ez = add i64 %.sroa.speculated.i.i.i.i138, %i.ex ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ex
  %i.fb = call i64 @llvm.umin.i64(i64 %i.ez, i64 9223372036854775807)
  %i.fc = select i1 %i.fa, i64 9223372036854775807, i64 %i.fb ; 3 uses
  %.not.i.i.i.i139 = icmp ne i64 %i.fc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i139)
  %16 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #18 ; 4 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %i.ex ; 2 uses
  store i8 %i.eu, ptr %17, align 1
  %18 = icmp sgt i64 %i.ex, 0
  br i1 %18, label %bb.ah, label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.ah:                                            ; preds = %_ZNKSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %.sroa.0177.0280, i64 %i.ex, i1 false)
  br label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.ah, %_ZNKSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i140 = icmp eq ptr %.sroa.0177.0280, null
  br i1 %.not.i17.i.i.i140, label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.0280, i64 noundef %i.ex) #16
  br label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 %i.fc
  br label %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ae, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.pn248 = phi ptr [ %17, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.7180.0275, %bb.ae ]
  %.sroa.11182.1 = phi ptr [ %i.fd, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.11182.0276, %bb.ae ] ; 2 uses
  %.sroa.0177.1 = phi ptr [ %16, %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0177.0280, %bb.ae ] ; 2 uses
  %.sroa.7180.1 = getelementptr inbounds nuw i8, ptr %.pn248, i64 1
  %i.fe = load i64, ptr %i.cn, align 8            ; 2 uses
  %.not.i.i141 = icmp eq ptr %.sroa.7.0278, %.sroa.11.0279
  br i1 %.not.i.i141, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit
  store i64 %i.fe, ptr %.sroa.7.0278, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.ak:                                            ; preds = %_ZNSt6vectorIN2v88internal9RelocInfo4ModeESaIS3_EE9push_backEOS3_.exit
  %i.ff = ptrtoint ptr %.sroa.11.0279 to i64
  %i.fg = ptrtoint ptr %.sroa.0172.0277 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 6 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775800
  br i1 %i.fi, label %bb.al, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ak
  %i.fj = ashr exact i64 %i.fh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i142 = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i.i142, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 1152921504606846975)
  %i.fn = select i1 %i.fl, i64 1152921504606846975, i64 %i.fm ; 3 uses
  %.not.i.i.i.i143 = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i143)
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #18 ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fh ; 2 uses
  store i64 %i.fe, ptr %i.fq, align 8
  %i.fr = icmp sgt i64 %i.fh, 0
  br i1 %i.fr, label %bb.am, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.am:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr align 8 %.sroa.0172.0277, i64 %i.fh, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.am, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i144 = icmp eq ptr %.sroa.0172.0277, null
  br i1 %.not.i17.i.i.i144, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0172.0277, i64 noundef %i.fh) #16
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.an, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fn
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.aj, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i
  %.sroa.0172.1 = phi ptr [ %i.fp, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %.sroa.0172.0277, %bb.aj ] ; 2 uses
  %.pn249 = phi ptr [ %i.fq, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %.sroa.7.0278, %bb.aj ]
  %.sroa.11.1 = phi ptr [ %i.fs, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %.sroa.11.0279, %bb.aj ] ; 2 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn249, i64 8
  call void @_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(56) %12) #15
  %i.ft = load i8, ptr %i.ch, align 8, !range !21, !noundef !22
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %.critedge2.loopexit, label %.lr.ph, !llvm.loop !24

.critedge2.loopexit:                              ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, %.lr.ph
  %.sroa.11182.0.lcssa.ph = phi ptr [ %.sroa.11182.0276, %.lr.ph ], [ %.sroa.11182.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.0172.0.lcssa.ph = phi ptr [ %.sroa.0172.0277, %.lr.ph ], [ %.sroa.0172.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.11.0.lcssa.ph = phi ptr [ %.sroa.11.0279, %.lr.ph ], [ %.sroa.11.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.0177.0.lcssa.ph = phi ptr [ %.sroa.0177.0280, %.lr.ph ], [ %.sroa.0177.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.15.0.lcssa.ph = phi ptr [ %.sroa.15.0281, %.lr.ph ], [ %.sroa.15.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.9.0.lcssa.ph = phi ptr [ %.sroa.9.0282, %.lr.ph ], [ %.sroa.9.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %.sroa.0184.0.lcssa.ph = phi ptr [ %.sroa.0184.0283, %.lr.ph ], [ %.sroa.0184.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  %i.fv = ptrtoint ptr %.sroa.11.0.lcssa.ph to i64
  %i.fw = ptrtoint ptr %.sroa.11182.0.lcssa.ph to i64
  %i.fx = ptrtoint ptr %.sroa.15.0.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.x
  %.sroa.11182.0.lcssa = phi i64 [ 0, %bb.x ], [ %i.fw, %.critedge2.loopexit ]
  %.sroa.0172.0.lcssa = phi ptr [ null, %bb.x ], [ %.sroa.0172.0.lcssa.ph, %.critedge2.loopexit ] ; 4 uses
  %.sroa.11.0.lcssa = phi i64 [ 0, %bb.x ], [ %i.fv, %.critedge2.loopexit ]
  %.sroa.0177.0.lcssa = phi ptr [ null, %bb.x ], [ %.sroa.0177.0.lcssa.ph, %.critedge2.loopexit ] ; 4 uses
  %.sroa.15.0.lcssa = phi i64 [ 0, %bb.x ], [ %i.fx, %.critedge2.loopexit ]
  %.sroa.9.0.lcssa = phi ptr [ null, %bb.x ], [ %.sroa.9.0.lcssa.ph, %.critedge2.loopexit ] ; 2 uses
  %.sroa.0184.0.lcssa = phi ptr [ null, %bb.x ], [ %.sroa.0184.0.lcssa.ph, %.critedge2.loopexit ] ; 5 uses
  %i.fy = call noundef zeroext i1 @_ZNK2v88internal20CodeCommentsIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15
  br i1 %i.fy, label %.lr.ph301, label %._crit_edge

.lr.ph301:                                        ; preds = %.critedge2
  %i.fz = sub i64 %i.ea, %i.ck
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph301, %bb.aw
  %.sroa.0193.0300 = phi ptr [ null, %.lr.ph301 ], [ %.sroa.0193.1, %bb.aw ] ; 7 uses
  %.sroa.8.0299 = phi ptr [ null, %.lr.ph301 ], [ %.sroa.8.1, %bb.aw ] ; 6 uses
  %.sroa.13.0298 = phi ptr [ null, %.lr.ph301 ], [ %.sroa.13.1, %bb.aw ] ; 4 uses
  %i.ga = call noundef i32 @_ZNK2v88internal20CodeCommentsIterator11GetPCOffsetEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %.not113 = icmp ugt i64 %i.fz, %i.gb
  br i1 %.not113, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.gc = add i64 %8, %i.gb
  %i.gd = icmp ugt i64 %i.gc, %i.co
  %or.cond325 = or i1 %.not, %i.gd
  br i1 %or.cond325, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.ge = call noundef ptr @_ZNK2v88internal20CodeCommentsIterator10GetCommentEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15 ; 2 uses
  %.not.i.i145 = icmp eq ptr %.sroa.8.0299, %.sroa.13.0298
  br i1 %.not.i.i145, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ge, ptr %.sroa.8.0299, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.8.0299, i64 8
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.gg = ptrtoint ptr %.sroa.8.0299 to i64
  %i.gh = ptrtoint ptr %.sroa.0193.0300 to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 6 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775800
  br i1 %i.gj, label %bb.at, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i: ; preds = %bb.as
  %i.gk = ashr exact i64 %i.gi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i146 = call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i.i146, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gl, i64 1152921504606846975)
  %i.go = select i1 %i.gm, i64 1152921504606846975, i64 %i.gn ; 3 uses
  %.not.i.i.i.i147 = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i.i147)
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #18 ; 4 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gi ; 2 uses
  store ptr %i.ge, ptr %i.gr, align 8
  %i.gs = icmp sgt i64 %i.gi, 0
  br i1 %i.gs, label %bb.au, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.au:                                            ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr align 8 %.sroa.0193.0300, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.au, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.not.i17.i.i.i148 = icmp eq ptr %.sroa.0193.0300, null
  br i1 %.not.i17.i.i.i148, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0193.0300, i64 noundef %i.gi) #16
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.go
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ap, %bb.ar, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.13.1 = phi ptr [ %.sroa.13.0298, %bb.ap ], [ %i.gu, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.0298, %bb.ar ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0299, %bb.ap ], [ %i.gt, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.gf, %bb.ar ] ; 2 uses
  %.sroa.0193.1 = phi ptr [ %.sroa.0193.0300, %bb.ap ], [ %i.gq, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0193.0300, %bb.ar ] ; 2 uses
  call void @_ZN2v88internal20CodeCommentsIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15
  %i.gv = call noundef zeroext i1 @_ZNK2v88internal20CodeCommentsIterator10HasCurrentEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #15
  br i1 %i.gv, label %bb.ao, label %.thread

.thread:                                          ; preds = %bb.aw, %bb.ao
  %.sroa.13.0.lcssa.ph = phi ptr [ %.sroa.13.1, %bb.aw ], [ %.sroa.13.0298, %bb.ao ]
  %.sroa.8.0.lcssa.ph = phi ptr [ %.sroa.8.1, %bb.aw ], [ %.sroa.8.0299, %bb.ao ] ; 2 uses
  %.sroa.0193.0.lcssa.ph = phi ptr [ %.sroa.0193.1, %bb.aw ], [ %.sroa.0193.0300, %bb.ao ] ; 5 uses
  %i.gw = ptrtoint ptr %.sroa.13.0.lcssa.ph to i64 ; 2 uses
  %i.gx = ptrtoint ptr %.sroa.0193.0.lcssa.ph to i64 ; 3 uses
  %.not326 = icmp eq ptr %.sroa.8.0.lcssa.ph, %.sroa.0193.0.lcssa.ph
  br i1 %.not326, label %._crit_edge, label %.lr.ph310.preheader

.lr.ph310.preheader:                              ; preds = %.thread
  %i.gy = ptrtoint ptr %.sroa.8.0.lcssa.ph to i64
  %i.gz = sub i64 %i.gy, %i.gx
  %i.ha = ashr exact i64 %i.gz, 3
  br label %.lr.ph310

._crit_edge:                                      ; preds = %bb.bc, %.critedge2, %.thread
  %i.hb = phi i64 [ 0, %.critedge2 ], [ %i.gx, %.thread ], [ %i.gx, %bb.bc ]
  %.sroa.0193.0.lcssa374 = phi ptr [ null, %.critedge2 ], [ %.sroa.0193.0.lcssa.ph, %.thread ], [ %.sroa.0193.0.lcssa.ph, %bb.bc ] ; 2 uses
  %.sroa.13.0.lcssa373 = phi i64 [ 0, %.critedge2 ], [ %i.gw, %.thread ], [ %i.gw, %bb.bc ]
  %i.hc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1462), align 2, !range !21, !noundef !22
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = ptrtoint ptr %.0317 to i64              ; 3 uses
  %i.hf = icmp eq i64 %7, %i.he                   ; 2 uses
  %or.cond115 = and i1 %i.hf, %i.hd
  br i1 %or.cond115, label %bb.bd, label %bb.be

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %bb.bc
  %.0103309 = phi i64 [ %i.hy, %bb.bc ], [ 0, %.lr.ph310.preheader ] ; 2 uses
  %i.hg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1462), align 2, !range !21, !noundef !22
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph310
end_hunk_0
