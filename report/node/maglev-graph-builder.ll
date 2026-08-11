inline.NumInlined: 39756
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 385
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryBuildInlineCallEPNS1_9ValueNodeES4_S4_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS9_15FeedbackCellRefERNS1_13CallArgumentsERKNS9_14FeedbackSourceE:bb.a
bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 88), align 8
  %spec.select.i = select i1 %i.aw, i32 50, i32 %i.be
  %i.bf = icmp sgt i32 %i.bd, %spec.select.i
  br i1 %i.bf, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 160), align 32, !range !10, !noundef !11
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.p, label %.critedge41

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.bb, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 103
  %i.bk = load i8, ptr %i.bj, align 1, !range !10, !noundef !11
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.q, label %.critedge41, !prof !6

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @_ZN2v88internal12StdoutStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %15)
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull @.str.56, i64 noundef 16) #33 ; 0 uses
  %.sroa.0.0.copyload.i46 = load ptr, ptr %11, align 8
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr %.sroa.0.0.copyload.i46) #33 ; 0 uses
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull @.str.37, i64 noundef 2) #33 ; 0 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull @.str.69, i64 noundef 16) #33 ; 0 uses
  %i.bq = load ptr, ptr %i.ba, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(88) %15, i32 noundef %i.bs) #33 ; 0 uses
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull @.str.72, i64 noundef 22) #33 ; 0 uses
  %i.bv = load i8, ptr %i.au, align 8, !range !10, !noundef !11
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 88), align 8
  %spec.select.i47 = select i1 %i.bw, i32 50, i32 %i.bx
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(88) %15, i32 noundef %spec.select.i47) #33 ; 0 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull @.str.62, i64 noundef 1) #33 ; 0 uses
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %15) #33, !inline_history !12 ; 0 uses
  call void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %.critedge41

bb.r:                                             ; preds = %bb.n
  %i.cb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 134), align 2, !range !10
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 133), align 1, !range !10
  %.0.v.i = select i1 %i.aw, i8 %i.cb, i8 %i.cc
  %.0.i48 = trunc nuw i8 %.0.v.i to i1
  br i1 %.0.i48, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 876 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 564), align 4
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 100), align 4
  %.0.i49 = select i1 %i.aw, i32 %i.ch, i32 %i.ci
  %.not = icmp slt i32 %i.cg, %.0.i49
  br i1 %.not, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.bb, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 102
  store i8 1, ptr %i.ck, align 2
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 160), align 32, !range !10, !noundef !11
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.u, label %.critedge41

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.ba, align 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 103
  %i.cq = load i8, ptr %i.cp, align 1, !range !10, !noundef !11
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.v, label %.critedge41, !prof !6

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @_ZN2v88internal12StdoutStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %16)
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull @.str.56, i64 noundef 16) #33 ; 0 uses
  %.sroa.0.0.copyload.i50 = load ptr, ptr %11, align 8
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.sroa.0.0.copyload.i50) #33 ; 0 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull @.str.37, i64 noundef 2) #33 ; 0 uses
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull @.str.73, i64 noundef 29) #33 ; 0 uses
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %16) #33, !inline_history !12 ; 0 uses
  call void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %16) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %.critedge41

bb.w:                                             ; preds = %bb.s
  %i.cx = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #33
  %i.cy = load i32, ptr %i.cf, align 4
  %i.cz = add nsw i32 %i.cy, %i.cx
  store i32 %i.cz, ptr %i.cf, align 4
  %.sroa.09.0.copyload = load ptr, ptr %11, align 8
  %.sroa.08.0.copyload = load ptr, ptr %12, align 8
  %i.da = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildEagerInlineCallEPNS1_9ValueNodeES4_S4_NS0_8compiler21SharedFunctionInfoRefENS5_15FeedbackCellRefERNS1_13CallArgumentsEf(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %.sroa.09.0.copyload, ptr %.sroa.08.0.copyload, ptr noundef nonnull align 8 dereferenceable(100) %7, float noundef %.0.i)
  br label %.critedge41

bb.x:                                             ; preds = %bb.r
  %i.db = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 160), align 32, !range !10, !noundef !11
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.y, label %.critedge45

bb.y:                                             ; preds = %bb.x
  %i.dd = load ptr, ptr %i.bb, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 103
  %i.df = load i8, ptr %i.de, align 1, !range !10, !noundef !11
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.z, label %.critedge45, !prof !6

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  call void @_ZN2v88internal12StdoutStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %17)
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %17, ptr noundef nonnull @.str.74, i64 noundef 14) #33 ; 0 uses
  %.sroa.0.0.copyload.i51 = load ptr, ptr %11, align 8
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(88) %17, ptr %.sroa.0.0.copyload.i51) #33 ; 0 uses
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %17, ptr noundef nonnull @.str.75, i64 noundef 13) #33 ; 0 uses
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %17) #33, !inline_history !12 ; 0 uses
  call void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %.critedge45

.critedge45:                                      ; preds = %bb.x, %bb.z, %bb.y
  %.sroa.03.0.copyload = load ptr, ptr %11, align 8
  %i.dl = call { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder31GetArgumentsAsArrayOfValueNodesENS0_8compiler21SharedFunctionInfoRefERKNS1_13CallArgumentsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %.sroa.03.0.copyload, ptr noundef nonnull align 8 dereferenceable(100) %7) ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dl, 0      ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dl, 1      ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %11, align 8
  store ptr %i.dm, ptr %18, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.dn, ptr %.sroa.5.0..sroa_idx, align 8
  %i.do = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder24BuildCallKnownJSFunctionEPNS1_9ValueNodeES4_S4_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS5_6VectorIS4_EE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4, ptr %.sroa.01.0.copyload, ptr noundef nonnull byval(%"class.v8::base::Vector.75") align 8 %18) ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3
  %i.eb = icmp ne ptr %i.du, null
  %.neg.i.i.i.i.i = sext i1 %i.eb to i64
  %i.ec = add nsw i64 %i.ea, %.neg.i.i.i.i.i
  %i.ed = shl nsw i64 %i.ec, 6
  %i.ee = load ptr, ptr %i.dr, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 3
  %i.el = add nsw i64 %i.ed, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = load ptr, ptr %i.ds, align 8
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 3
  %i.et = sub nsw i64 0, %i.es
  %.not.i52 = icmp eq i64 %i.el, %i.et
  br i1 %.not.i52, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge45
  %i.eu = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.ev = lshr i64 %i.eu, 32
  %i.ew = trunc i64 %i.ev to i16                  ; 3 uses
  %i.ex = and i16 %i.ew, 6
  %i.ey = icmp eq i16 %i.ex, 4
  %.neg2.i.i.i.i = select i1 %i.ey, i64 -56, i64 0
  %i.ez = lshr i64 %i.eu, 41
  %i.fa = and i64 %i.ez, 8
  %.neg3.i.i.i.i = sub nsw i64 %.neg2.i.i.i.i, %i.fa
  %i.fb = and i16 %i.ew, 2
  %.not.i.i.i.i.i = icmp eq i16 %i.fb, 0
  %.neg.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 -48
  %i.fc = add nsw i64 %.neg3.i.i.i.i, %.neg.i.i.i.i
  %i.fd = and i16 %i.ew, 14
  %i.fe = icmp eq i16 %i.fd, 12
  %.neg.i.i = select i1 %i.fe, i64 -32, i64 0
  %i.ff = add nsw i64 %i.fc, %.neg.i.i
  %i.fg = trunc i64 %i.eu to i32
  %i.fh = lshr i32 %i.fg, 16
  %narrow.i.i.i.i.i = sub nsw i32 1, %i.fh
  %i.fi = sext i32 %narrow.i.i.i.i.i to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.fi
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = add i64 %i.ff, %i.fk
  %i.fm = inttoptr i64 %i.fl to ptr               ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load i32, ptr %i.fn, align 8
  %20 = icmp eq i32 %i.fo, -2
  %.sroa.4.8.insert.ext.i = zext i1 %20 to i64
  %.sroa.4.9.insert.insert.i = xor i64 %.sroa.4.8.insert.ext.i, 257
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit

bb.ab:                                            ; preds = %.critedge45
  %i.fp = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not15.i = icmp eq ptr %i.fp, null
  br i1 %.not15.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  %.sroa.0.0.copyload.i53 = load ptr, ptr %i.fq, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 112
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.4.9.insert.mask10.i = and i64 %.sroa.4.0.copyload.i, -65281
  %.sroa.4.9.insert.insert11.i = or disjoint i64 %.sroa.4.9.insert.mask10.i, 256
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  %.sroa.0.0.i = phi ptr [ %i.fm, %bb.aa ], [ %.sroa.0.0.copyload.i53, %bb.ac ], [ null, %bb.ab ]
  %.sroa.4.0.i = phi i64 [ %.sroa.4.9.insert.insert.i, %bb.aa ], [ %.sroa.4.9.insert.insert11.i, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.fr = and i64 %.sroa.4.0.i, -4294967296
  %.sroa.4.12.insert.ext = add i64 %i.fr, 4294967296
  %.sroa.4.12.insert.mask = and i64 %.sroa.4.0.i, 4294967295
  %.sroa.4.12.insert.insert = or disjoint i64 %.sroa.4.12.insert.ext, %.sroa.4.12.insert.mask
  %i.fs = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #33
  %i.ft = sitofp i32 %i.fs to float
  %i.fu = fdiv float %.0.i, %i.ft
  %i.fv = load ptr, ptr %i.ba, align 8
  %i.fw = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.fv) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  store ptr %i.dm, ptr %19, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.dn, ptr %.sroa.5.0..sroa_idx6, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.fy = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.fz = lshr i64 %i.fy, 32
  %i.ga = trunc i64 %i.fz to i16                  ; 2 uses
  %i.gb = and i16 %i.ga, 2
  %.not.i.i.i = icmp eq i16 %i.gb, 0
  %.neg.i.i54 = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.gc = and i16 %i.ga, 6
  %i.gd = icmp eq i16 %i.gc, 4
  %.neg2.i.i = select i1 %i.gd, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i54, %.neg2.i.i
  %i.ge = trunc i64 %i.fy to i32
  %i.gf = lshr i32 %i.ge, 16
  %narrow.i.i.i = sub nsw i32 1, %i.gf
  %i.gg = sext i32 %narrow.i.i.i to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.gg
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = add i64 %.neg3.i.i, %i.gi
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = load ptr, ptr %i.gk, align 8
  store ptr %i.gl, ptr %i.fx, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = load ptr, ptr %i.ba, align 8
  %i.gq = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.gp) #33 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 3 uses
  %i.gu = load i64, ptr %i.gt, align 8            ; 2 uses
  %i.gv = sub i64 %i.gs, %i.gu
  %i.gw = icmp ult i64 %i.gv, 352
  br i1 %i.gw, label %bb.ad, label %_ZNK2v88internal6maglev16KnownNodeAspects5CloneEPNS0_4ZoneE.exit, !prof !6

bb.ad:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gq, i64 noundef 352) #33
  %.pre.i.i.i = load i64, ptr %i.gt, align 8
  br label %_ZNK2v88internal6maglev16KnownNodeAspects5CloneEPNS0_4ZoneE.exit

_ZNK2v88internal6maglev16KnownNodeAspects5CloneEPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit, %bb.ad
  %i.gx = phi i64 [ %.pre.i.i.i, %bb.ad ], [ %i.gu, %_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit ] ; 2 uses
  %i.gy = inttoptr i64 %i.gx to ptr               ; 2 uses
  %i.gz = add i64 %i.gx, 352
  store i64 %i.gz, ptr %i.gt, align 8
  call void @_ZN2v88internal6maglev16KnownNodeAspectsC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(352) %i.gy, ptr noundef nonnull align 8 dereferenceable(352) %i.go) #33
  store ptr %i.gy, ptr %i.gm, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.hc = load ptr, ptr %i.hb, align 8
  store ptr %i.hc, ptr %i.ha, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.he, align 8
  %i.hf = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i to i64
  store i64 %i.hf, ptr %i.hd, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 3 uses
  store ptr null, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.hj = load i64, ptr %i.hi, align 8
  store i64 %i.hj, ptr %i.hh, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 3 uses
  store ptr null, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.hn = load i64, ptr %i.hm, align 8
  store i64 %i.hn, ptr %i.hl, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.hp, i64 16, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 4 uses
  store ptr null, ptr %i.hq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr %i.hd, ptr %10, align 8
  call void @_ZNSt10_HashtableISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_PNS3_4NodeEENS2_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSQ_NSE_10_AllocNodeINSC_INSE_10_Hash_nodeISB_Lb1EEEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hd, ptr noundef nonnull align 8 dereferenceable(64) %i.he, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.hr = getelementptr inbounds nuw i8, ptr %19, i64 104 ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.hr, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 112
  store i64 %.sroa.4.12.insert.insert, ptr %.sroa.4.0..sroa_idx, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.ht = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.ht, null
  br i1 %.not5.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects5CloneEPNS0_4ZoneE.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 120
  %i.hv = load i8, ptr %i.hu, align 8, !range !10, !noundef !11
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK2v88internal6maglev16KnownNodeAspects5CloneEPNS0_4ZoneE.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = zext i32 %i.if to i64
  %i.ih = add i64 %i.id, %i.ig
  %i.ii = sub i64 %i.ic, %i.ih
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = call noundef i32 @_ZNK2v88internal8compiler16BytecodeAnalysis16GetLoopOffsetForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.hx, i32 noundef %i.ij) #33 ; 2 uses
  %.not.i55 = icmp eq i32 %i.ik, -1
  br i1 %.not.i55, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.il = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK2v88internal8compiler16BytecodeAnalysis14GetLoopInfoForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.hx, i32 noundef %i.ik) #33
  %i.im = load i32, ptr %i.il, align 8
  %i.in = icmp eq i32 %i.im, -1
  br i1 %i.in, label %bb.ah, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit

bb.ah:                                            ; preds = %bb.ag
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ip = load i32, ptr %i.io, align 8            ; 2 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %bb.ai, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ir = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 59), align 1, !range !10, !noundef !11
  %i.is = icmp eq i32 %i.ip, 1
  %i.it = select i1 %i.is, i8 %i.ir, i8 0
  br label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit

_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit: ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.2.i = phi i8 [ 1, %bb.ae ], [ 1, %bb.ag ], [ %i.it, %bb.ai ], [ 1, %bb.ah ], [ 0, %bb.af ]
  store i8 %.2.i, ptr %i.hs, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %19, i64 121
  store i8 0, ptr %i.iu, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %19, i64 124
  store float %.0.i, ptr %i.iv, align 4
  %i.iw = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #33
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 3 uses
  %i.ja = load i64, ptr %i.iz, align 8            ; 2 uses
  %i.jb = sub i64 %i.iy, %i.ja
  %i.jc = icmp ult i64 %i.jb, 152
  br i1 %i.jc, label %bb.aj, label %_ZN2v88internal4Zone8AllocateINS0_6maglev18MaglevCallSiteInfoEEEPvm.exit.i, !prof !6

bb.aj:                                            ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, i64 noundef 152) #33
  %.pre.i.i = load i64, ptr %i.iz, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_6maglev18MaglevCallSiteInfoEEEPvm.exit.i

_ZN2v88internal4Zone8AllocateINS0_6maglev18MaglevCallSiteInfoEEEPvm.exit.i: ; preds = %bb.aj, %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit
  %i.jd = phi i64 [ %.pre.i.i, %bb.aj ], [ %i.ja, %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit ] ; 2 uses
  %i.je = inttoptr i64 %i.jd to ptr               ; 14 uses
  %i.jf = add i64 %i.jd, 152
  store i64 %i.jf, ptr %i.iz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.je, ptr noundef nonnull align 8 dereferenceable(128) %19, i64 40, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.jh = load i64, ptr %i.hd, align 8
  store i64 %i.jh, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 48 ; 2 uses
  %i.jj = load ptr, ptr %i.hg, align 8            ; 3 uses
  store ptr %i.jj, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 56
  %i.jl = load i64, ptr %i.hh, align 8            ; 2 uses
  store i64 %i.jl, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 64 ; 2 uses
  %i.jn = load ptr, ptr %i.hk, align 8            ; 3 uses
  store ptr %i.jn, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  %i.jp = load i64, ptr %i.hl, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder31GetArgumentsAsArrayOfValueNodesENS0_8compiler21SharedFunctionInfoRefERKNS1_13CallArgumentsE:bb.a
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit, %_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.q, 1
  ret { ptr, i64 } %.fca.1.insert.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2v88internal6maglev13CallArgumentsixEm.exit ] ; 2 uses
  %i.ae = load i32, ptr %2, align 8
  %.not.i = icmp ne i32 %i.ae, 0
  %i.af = zext i1 %.not.i to i64
  %spec.select.i = add nuw nsw i64 %indvars.iv, %i.af ; 2 uses
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %.not5.i = icmp ult i64 %spec.select.i, %i.al
  br i1 %.not5.i, label %bb.e, label %_ZNK2v88internal6maglev13CallArgumentsixEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %spec.select.i
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal6maglev13CallArgumentsixEm.exit

_ZNK2v88internal6maglev13CallArgumentsixEm.exit:  ; preds = %.lr.ph, %bb.e
  %.04.i = phi ptr [ %i.an, %bb.e ], [ null, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  store ptr %.04.i, ptr %i.ao, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !171
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder24BuildCallKnownJSFunctionEPNS1_9ValueNodeES4_S4_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS5_6VectorIS4_EE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4, ptr %5, ptr nofree noundef readonly byval(%"class.v8::base::Vector.75") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = add i64 %i.b, 4294967295
  %i.e = shl i64 %i.b, 32
  %sext = add i64 %i.e, 12884901888               ; 2 uses
  %i.f = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %2, i32 noundef 0) ; 2 uses
  %i.g = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, i32 noundef 0) ; 2 uses
  %i.h = load ptr, ptr %6, align 8                ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.i, i32 noundef 0) ; 2 uses
  %i.k = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %3, i32 noundef 0) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = ashr exact i64 %sext, 29                 ; 2 uses
  %i.o = add nsw i64 %i.n, 96
  %i.p = add nsw i64 %i.n, 136                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.b, label %_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.p) #33
  %.pre.i.i = load i64, ptr %i.s, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i

_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i: ; preds = %bb.b, %bb.a
  %i.w = phi i64 [ %.pre.i.i, %bb.b ], [ %i.t, %bb.a ] ; 2 uses
  %i.x = add i64 %i.w, %i.p
  store i64 %i.x, ptr %i.s, align 8
  %i.y = add i64 %i.o, %i.w
  %i.z = inttoptr i64 %i.y to ptr                 ; 12 uses
  %i.aa = ashr exact i64 %sext, 16
  %i.ab = or i64 %i.aa, 18129056956496
  store ptr null, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i32 %4, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %5, ptr %i.af, align 8
  %i.ag = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 10688
  %i.ai = lshr i32 %4, 8
  %i.aj = load ptr, ptr %i.ah, align 8
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load atomic i64, ptr %i.al monotonic, align 8
  %i.an = icmp ugt i64 %i.am, -281474976710657
  br i1 %i.an, label %bb.c, label %_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.395) #32
  unreachable

_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %_ZN2v88internal4Zone8AllocateINS0_6maglev20NodeWithInlineInputsEEEPvm.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load atomic i64, ptr %i.ap monotonic, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 65535
  store i32 %i.as, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  store i8 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  store ptr %i.f, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.z, i64 -16
  store ptr %i.g, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.z, i64 -24
  store ptr %i.j, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.z, i64 -32
  store ptr %i.k, ptr %i.bj, align 8
  %i.bk = icmp sgt i32 %i.c, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.preheader, label %"_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_19CallKnownJSFunctionEZNS2_24BuildCallKnownJSFunctionEPNS1_9ValueNodeES6_S6_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS7_6VectorIS6_EEE3$_0JRSA_RSC_S6_S6_S6_S6_EEEPT_mOT0_DpOT1_.exit"

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.bl = and i64 %i.d, 4294967295
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.bn, i32 noundef 0) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8
  %i.bs = sub nuw nsw i64 -4, %indvars.iv.i.i.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bs
  store ptr %i.bo, ptr %i.bt, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i.i, %i.bl
  br i1 %exitcond.not, label %"_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_19CallKnownJSFunctionEZNS2_24BuildCallKnownJSFunctionEPNS1_9ValueNodeES6_S6_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS7_6VectorIS6_EEE3$_0JRSA_RSC_S6_S6_S6_S6_EEEPT_mOT0_DpOT1_.exit", label %.lr.ph.i.i.i, !llvm.loop !172

"_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_19CallKnownJSFunctionEZNS2_24BuildCallKnownJSFunctionEPNS1_9ValueNodeES6_S6_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS7_6VectorIS6_EEE3$_0JRSA_RSC_S6_S6_S6_S6_EEEPT_mOT0_DpOT1_.exit": ; preds = %.lr.ph.i.i.i, %_ZN2v88internal6maglev8NodeBase8AllocateINS1_19CallKnownJSFunctionEJRNS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEERNS0_8compiler21SharedFunctionInfoRefEPNS1_9ValueNodeESE_SE_SE_EEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.bu = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_19CallKnownJSFunctionEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.z)
  ret ptr %i.bu
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(953) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = sub nsw i64 0, %i.ab
  %.not = icmp eq i64 %i.u, %i.ac
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %2 = icmp eq i32 %i.ae, -2
  %.sroa.4.8.insert.ext = zext i1 %2 to i64
  %.sroa.4.9.insert.insert = xor i64 %.sroa.4.8.insert.ext, 257
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not15 = icmp eq ptr %i.ag, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.9.insert.mask10 = and i64 %.sroa.4.0.copyload, -65281
  %.sroa.4.9.insert.insert11 = or disjoint i64 %.sroa.4.9.insert.mask10, 256
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %1, %bb.b ], [ %.sroa.0.0.copyload, %bb.d ], [ null, %bb.c ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.9.insert.insert, %bb.b ], [ %.sroa.4.9.insert.insert11, %bb.d ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(953) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = sub nsw i64 0, %i.ab
  %.not = icmp eq i64 %i.u, %i.ac
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %i.n, %i.p
  br i1 %i.ad, label %bb.c, label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  br label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit

_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit: ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.c ], [ %i.n, %bb.b ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = sext i32 %i.aj to i64                   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.am
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 3
  %i.av = icmp eq i32 %i.au, 2
  %.sroa.4.8.insert.ext = zext i1 %i.av to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.not11 = icmp eq ptr %i.ax, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %.sroa.0.0.copyload = load ptr, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit ], [ %.sroa.0.0.copyload, %bb.e ], [ null, %bb.d ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.8.insert.ext, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit ], [ %.sroa.4.0.copyload, %bb.e ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZN2v88internal6maglev31MergePointInterpreterFrameState10MergeThrowEPNS1_18MaglevGraphBuilderEPKNS1_21MaglevCompilationUnitERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE17FlushNodesToBlockEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, %i.g
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = add nsw i64 %i.s, %i.k                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.q
  %i.y = ashr exact i64 %i.x, 3
  %.not.i.i = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.t)
  %.pre.i = load ptr, ptr %i.n, align 8
  %.pre = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.z = phi ptr [ %i.m, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.aa = phi ptr [ %i.o, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.t ; 2 uses
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i
  %i.ad = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ae = ptrtoaddr ptr %i.aa to i64
  %i.af = shl nuw nsw i64 %i.t, 3
  %i.ag = add nuw i64 %i.af, %i.ae
  %i.ah = add i64 %i.ad, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ah)
  %i.ai = xor i64 %i.ad, -1
  %i.aj = add i64 %umax.i, %i.ai
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.al, i1 false)
  %.pre46 = load ptr, ptr %i.n, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %i.am = phi ptr [ %i.aa, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i ], [ %.pre46, %.lr.ph.preheader.i ]
  store ptr %i.ab, ptr %i.l, align 8
  %i.an = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ao = load ptr, ptr %i.d, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.r ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp sgt i64 %i.as, 8
  br i1 %i.at, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ap, ptr align 8 %i.an, i64 %i.as, i1 false)
  br label %_ZSt4copyIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.f, label %_ZSt4copyIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.an, align 8
  store ptr %i.av, ptr %i.ap, align 8
  br label %_ZSt4copyIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit
end_hunk_1
