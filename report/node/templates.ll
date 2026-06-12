inline.NumInlined: 1117
inline.NumDeleted: 582
begin_hunk_0_@_ZNK2v88internal20FunctionTemplateInfo13IsTemplateForENS0_6TaggedINS0_3MapEEE:bb.a
  %i.aj = add nsw i64 %.sroa.06.0.lcssa.i.i.i, -1
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = load atomic volatile i64, ptr %i.ak monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp eq i16 %i.ao, 171
  br i1 %i.ap, label %bb.f, label %_ZNK2v88internal3Map14GetConstructorEv.exit

bb.f:                                             ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  br label %_ZNK2v88internal3Map14GetConstructorEv.exit

_ZNK2v88internal3Map14GetConstructorEv.exit:      ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.f
  %.sroa.04.0.i.i = phi i64 [ %i.ar, %bb.f ], [ %.sroa.06.0.lcssa.i.i.i, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %.sroa.06.0.lcssa.i.i.i, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i ] ; 4 uses
  %i.as = trunc i64 %.sroa.04.0.i.i to i1
  br i1 %i.as, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal3Map14GetConstructorEv.exit
  %i.at = add nsw i64 %.sroa.04.0.i.i, -1
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %i.az = add i16 %i.ay, -2065
  %i.ba = icmp ult i16 %i.az, 17
  br i1 %i.ba, label %bb.g, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit23

bb.g:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bb = add i64 %.sroa.04.0.i.i, 31
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, 15
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = trunc i64 %i.bg to i1
  br i1 %i.bh, label %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit, label %.critedge

_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit: ; preds = %bb.g
  %i.bi = add nsw i64 %i.bg, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %i.bl = add i64 %i.bk, 11
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i16, ptr %i.bm monotonic, align 2
  %i.bo = icmp eq i16 %i.bn, 248
  br i1 %i.bo, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit
  %i.bp = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.bq = add i64 %i.bp, 15
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i64, ptr %i.br acquire, align 8
  br label %bb.i

_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit23: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bt = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = icmp eq i16 %i.bw, 248
  br i1 %i.bx, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit23, %bb.h
  %.sroa.039.0 = phi i64 [ %i.bs, %bb.h ], [ %.sroa.04.0.i.i, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit23 ] ; 2 uses
  %i.by = trunc i64 %.sroa.039.0 to i1
  br i1 %i.by, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.i, %_ZNK2v88internal20FunctionTemplateInfo17GetParentTemplateEv.exit
  %.sroa.039.193 = phi i64 [ %.sroa.08.0.i.i, %_ZNK2v88internal20FunctionTemplateInfo17GetParentTemplateEv.exit ], [ %.sroa.039.0, %bb.i ] ; 3 uses
  %i.bz = add nsw i64 %.sroa.039.193, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 11
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load atomic volatile i16, ptr %i.cd monotonic, align 2
  %i.cf = icmp eq i16 %i.ce, 248
  br i1 %i.cf, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.04.0.copyload = load i64, ptr %0, align 8
  %i.cg = icmp eq i64 %.sroa.039.193, %.sroa.04.0.copyload
  br i1 %i.cg, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = add i64 %.sroa.039.193, 63
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load atomic volatile i64, ptr %i.ci acquire, align 8 ; 3 uses
  %i.ck = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 10624
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = icmp eq i64 %i.cj, %i.co
  br i1 %i.cp, label %_ZNK2v88internal20FunctionTemplateInfo17GetParentTemplateEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = add i64 %i.cj, 23
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load i64, ptr %i.cr, align 8
  br label %_ZNK2v88internal20FunctionTemplateInfo17GetParentTemplateEv.exit

_ZNK2v88internal20FunctionTemplateInfo17GetParentTemplateEv.exit: ; preds = %bb.k, %bb.l
  %.sroa.08.0.i.i = phi i64 [ %i.cs, %bb.l ], [ %i.cj, %bb.k ] ; 2 uses
  %i.ct = trunc i64 %.sroa.08.0.i.i to i1
  br i1 %i.ct, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit, %bb.j, %_ZNK2v88internal20FunctionTemplateInfo17GetParentTemplateEv.exit, %bb.i, %bb.g, %_ZNK2v88internal3Map14GetConstructorEv.exit, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit23, %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit, %bb.c, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit23 ], [ false, %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit ], [ false, %_ZNK2v88internal3Map14GetConstructorEv.exit ], [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.j ], [ false, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZNK2v88internal20FunctionTemplateInfo17GetParentTemplateEv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal20FunctionTemplateInfo26IsLeafTemplateForApiObjectENS0_6TaggedINS0_6ObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.b = add nsw i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = add i16 %i.g, -1058
  %i.i = icmp ult i16 %i.h, 1001
  br i1 %i.i, label %bb.b, label %_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.k = add i64 %i.j, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = add i64 %i.j, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = trunc i64 %i.m to i1
  br i1 %i.q, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i

_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i: ; preds = %bb.b, %bb.c
  %.sroa.06.020.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = add nsw i64 %.sroa.06.020.i.i.i, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = icmp eq i64 %i.t, %i.p
  br i1 %i.u, label %bb.c, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i

bb.c:                                             ; preds = %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i
  %i.v = add i64 %.sroa.06.020.i.i.i, 31
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i, label %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i, !llvm.loop !9

_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i: ; preds = %bb.c, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i, %bb.b
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ %i.m, %bb.b ], [ %.sroa.06.020.i.i.i, %_ZN2v88internal3Map29ConcurrentIsHeapObjectWithMapENS0_16PtrComprCageBaseENS0_6TaggedINS0_6ObjectEEENS3_IS1_EE.exit.i.i.i ], [ %i.x, %bb.c ] ; 4 uses
  %i.z = trunc i64 %.sroa.06.0.lcssa.i.i.i to i1
  br i1 %i.z, label %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZNK2v88internal3Map14GetConstructorEv.exit

_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i
  %i.aa = add nsw i64 %.sroa.06.0.lcssa.i.i.i, -1
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  %i.ag = icmp eq i16 %i.af, 171
  br i1 %i.ag, label %bb.d, label %_ZNK2v88internal3Map14GetConstructorEv.exit

bb.d:                                             ; preds = %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  br label %_ZNK2v88internal3Map14GetConstructorEv.exit

_ZNK2v88internal3Map14GetConstructorEv.exit:      ; preds = %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.d
  %.sroa.04.0.i.i = phi i64 [ %i.ai, %bb.d ], [ %.sroa.06.0.lcssa.i.i.i, %_ZN2v88internal8IsTuple2ENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %.sroa.06.0.lcssa.i.i.i, %_ZNK2v88internal3Map17GetConstructorRawENS0_16PtrComprCageBaseE.exit.i.i ] ; 4 uses
  %i.aj = trunc i64 %.sroa.04.0.i.i to i1
  br i1 %i.aj, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal3Map14GetConstructorEv.exit
  %i.ak = add nsw i64 %.sroa.04.0.i.i, -1
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = add i16 %i.ap, -2065
  %i.ar = icmp ult i16 %i.aq, 17
  br i1 %i.ar, label %bb.e, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.as = add i64 %.sroa.04.0.i.i, 31
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = add i64 %i.au, 15
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i64, ptr %i.aw acquire, align 8
  br label %bb.f

_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ay = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp eq i16 %i.bb, 248
  br i1 %i.bc, label %bb.f, label %_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.f:                                             ; preds = %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit, %bb.e
  %.sink65 = phi i64 [ %i.ax, %bb.e ], [ %.sroa.04.0.i.i, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit ]
  %i.bd = load i64, ptr %0, align 8
  %i.be = icmp eq i64 %i.bd, %.sink65
  br label %_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.f, %_ZNK2v88internal3Map14GetConstructorEv.exit, %bb.a, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZN2v88internal13IsJSApiObjectENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZNK2v88internal3Map14GetConstructorEv.exit ], [ %i.be, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20FunctionTemplateInfo36SealAndPrepareForPromotionToReadOnlyEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = and i64 %i.d, 8589934592
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN2v88internal20FunctionTemplateInfo13set_publishedEb.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.a, -262144
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 262144
  %i.i = and i64 %i.h, 64
  %.not42 = icmp eq i64 %i.i, 0
  br i1 %.not42, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = and i64 %i.d, 9223372019674906624
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, -55464
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 9808 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = icmp ult i64 %i.q, 9223372032559808512
  %i.u = add nuw nsw i32 %i.s, 1
  %.0.i.i = select i1 %i.t, i32 %i.u, i32 1024    ; 2 uses
  %i.v = sext i32 %.0.i.i to i64
  %i.w = shl nsw i64 %i.v, 32
  store i64 %i.w, ptr %i.p, align 8
  %i.x = load i64, ptr %i.c, align 8
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = and i32 %i.z, -2147483645
  %i.ab = shl i32 %.0.i.i, 2
  %i.ac = or i32 %i.aa, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 32
  store atomic volatile i64 %i.ae, ptr %i.c monotonic, align 8
  br label %_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit

_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ag = tail call ptr @_ZN2v88internal20FunctionTemplateInfo29GetOrCreateSharedFunctionInfoEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_17MaybeDirectHandleINS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %i.af) ; 0 uses
  %i.ah = load i64, ptr %1, align 8
  %i.ai = add i64 %i.ah, 7
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -12884901888
  %i.am = or disjoint i64 %i.al, 8589934592
  store atomic volatile i64 %i.am, ptr %i.aj monotonic, align 8
  %i.an = load i64, ptr %1, align 8               ; 2 uses
  %i.ao = add i64 %i.an, 95
  %i.ap = inttoptr i64 %i.ao to ptr               ; 3 uses
  %i.aq = load atomic volatile i32, ptr %i.ap monotonic, align 4
  %i.ar = and i32 %i.aq, 128
  %.not.i10 = icmp eq i32 %i.ar, 0
  br i1 %.not.i10, label %bb.f, label %_ZN2v88internal20FunctionTemplateInfo13set_publishedEb.exit

bb.f:                                             ; preds = %_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit
  %i.as = and i64 %i.an, -262144
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 262144
  %i.av = and i64 %i.au, 64
  %.not3.i = icmp eq i64 %i.av, 0
  br i1 %.not3.i, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aw = load atomic volatile i32, ptr %i.ap monotonic, align 4
  %.0.i.i11 = or i32 %i.aw, 128
  store atomic volatile i32 %.0.i.i11, ptr %i.ap monotonic, align 4
  br label %_ZN2v88internal20FunctionTemplateInfo13set_publishedEb.exit

_ZN2v88internal20FunctionTemplateInfo13set_publishedEb.exit: ; preds = %bb.h, %_ZN2v88internal12TemplateInfo21EnsureHasSerialNumberEPNS0_7IsolateE.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal20FunctionTemplateInfo32AllocateFunctionTemplateRareDataEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE27NewFunctionTemplateRareDataEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #9 ; 2 uses
  %i.b = load i64, ptr %1, align 8                ; 4 uses
  %i.c = load i64, ptr %i.a, align 8              ; 5 uses
  %i.d = add i64 %i.b, 63                         ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr
  store atomic volatile i64 %i.c, ptr %i.e release, align 8
  %i.f = trunc i64 %i.c to i1
  br i1 %i.f, label %bb.b, label %_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE13set_rare_dataENS0_6TaggedINS0_5UnionIJNS0_24FunctionTemplateRareDataENS0_9UndefinedEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.b, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 262144         ; 2 uses
  %i.j = and i64 %i.i, 32
  %.not.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %i.i, 25
  %.not38.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not38.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %i.c, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.m, align 262144
  %i.n = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not39.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.b, i64 noundef %i.d, i64 %i.c) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i, label %_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE13set_rare_dataENS0_6TaggedINS0_5UnionIJNS0_24FunctionTemplateRareDataENS0_9UndefinedEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.b, i64 %i.d, i64 %i.c) #9
  br label %_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE13set_rare_dataENS0_6TaggedINS0_5UnionIJNS0_24FunctionTemplateRareDataENS0_9UndefinedEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal35TorqueGeneratedFunctionTemplateInfoINS0_20FunctionTemplateInfoENS0_26TemplateInfoWithPropertiesEE13set_rare_dataENS0_6TaggedINS0_5UnionIJNS0_24FunctionTemplateRareDataENS0_9UndefinedEEEEEENS_15ReleaseStoreTagENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.o = load i64, ptr %i.a, align 8
  ret i64 %i.o
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE27NewFunctionTemplateRareDataEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden { i64, i8 } @_ZN2v88internal20FunctionTemplateInfo24TryGetCachedPropertyNameEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr nofree noundef readonly captures(none) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.b = add nsw i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 248
  br i1 %i.h, label %bb.d, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.i = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = add i16 %i.l, -2065
  %i.n = icmp ult i16 %i.m, 17
  br i1 %i.n, label %bb.b, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit
  %i.o = add i64 %1, 31
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 15
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load atomic volatile i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit: ; preds = %bb.b
  %i.v = add nsw i64 %i.t, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 248
  br i1 %i.ab, label %bb.c, label %_ZN2v88internal12IsJSFunctionENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.c:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit
  %i.ac = load atomic volatile i64, ptr %i.s acquire, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %.sroa.026.1 = phi i64 [ %1, %_ZN2v88internal22IsFunctionTemplateInfoENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.ac, %bb.c ]
  %i.ad = add i64 %.sroa.026.1, 79
end_hunk_0
