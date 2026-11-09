Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-graph-builder?download=true
inline.NumInlined: 39752
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 141
loop-unroll.NumUnrolled: 386
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryBuildInlineCallEPNS1_9ValueNodeES4_S4_NS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEENS0_8compiler21SharedFunctionInfoRefENS9_15FeedbackCellRefERNS1_13CallArgumentsERKNS9_14FeedbackSourceE:bb.a

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
  %i.bv = load i8, ptr %i.au, align 8, !range !283, !noundef !284
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 88), align 8
  %spec.select.i47 = select i1 %i.bw, i32 50, i32 %i.bx
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(88) %15, i32 noundef %spec.select.i47) #33 ; 0 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull @.str.62, i64 noundef 1) #33 ; 0 uses
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %15) #33, !inline_history !2 ; 0 uses
  call void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %.critedge41

bb.r:                                             ; preds = %bb.n
  %i.cb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 134), align 2, !range !283
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 133), align 1, !range !283
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
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 160), align 32, !range !283, !noundef !284
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.u, label %.critedge41

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.ba, align 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 103
  %i.cq = load i8, ptr %i.cp, align 1, !range !283, !noundef !284
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.v, label %.critedge41, !prof !281

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @_ZN2v88internal12StdoutStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %16)
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull @.str.56, i64 noundef 16) #33 ; 0 uses
  %.sroa.0.0.copyload.i50 = load ptr, ptr %11, align 8
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.sroa.0.0.copyload.i50) #33 ; 0 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull @.str.37, i64 noundef 2) #33 ; 0 uses
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull @.str.73, i64 noundef 29) #33 ; 0 uses
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %16) #33, !inline_history !2 ; 0 uses
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
  %i.db = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 160), align 32, !range !283, !noundef !284
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.y, label %.critedge45

bb.y:                                             ; preds = %bb.x
  %i.dd = load ptr, ptr %i.bb, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 103
  %i.df = load i8, ptr %i.de, align 1, !range !283, !noundef !284
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.z, label %.critedge45, !prof !281

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  call void @_ZN2v88internal12StdoutStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %17)
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %17, ptr noundef nonnull @.str.74, i64 noundef 14) #33 ; 0 uses
  %.sroa.0.0.copyload.i51 = load ptr, ptr %11, align 8
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(88) %17, ptr %.sroa.0.0.copyload.i51) #33 ; 0 uses
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %17, ptr noundef nonnull @.str.75, i64 noundef 13) #33 ; 0 uses
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %17) #33, !inline_history !2 ; 0 uses
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
  %i.fp = icmp ne i32 %i.fo, -2
  %.sroa.4.8.insert.ext.i = zext i1 %i.fp to i64
  %.sroa.4.9.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.ext.i, 256
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit

bb.ab:                                            ; preds = %.critedge45
  %i.fq = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not15.i = icmp eq ptr %i.fq, null
  br i1 %.not15.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 104
  %.sroa.0.0.copyload.i53 = load ptr, ptr %i.fr, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 112
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.4.9.insert.mask10.i = and i64 %.sroa.4.0.copyload.i, -65281
  %.sroa.4.9.insert.insert11.i = or disjoint i64 %.sroa.4.9.insert.mask10.i, 256
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  %.sroa.0.0.i = phi ptr [ %i.fm, %bb.aa ], [ %.sroa.0.0.copyload.i53, %bb.ac ], [ null, %bb.ab ]
  %.sroa.4.0.i = phi i64 [ %.sroa.4.9.insert.insert.i, %bb.aa ], [ %.sroa.4.9.insert.insert11.i, %bb.ac ], [ 0, %bb.ab ]
  %.sroa.4.12.insert.ext = add i64 %.sroa.4.0.i, 4294967296
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
  br i1 %i.gw, label %bb.ad, label %_ZNK2v88internal6maglev16KnownNodeAspects5CloneEPNS0_4ZoneE.exit, !prof !281

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
  store i64 %.sroa.4.12.insert.ext, ptr %.sroa.4.0..sroa_idx, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.ht = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.ht, null
  br i1 %.not5.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects5CloneEPNS0_4ZoneE.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 120
  %i.hv = load i8, ptr %i.hu, align 8, !range !283, !noundef !284
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
  %i.ir = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 59), align 1, !range !283, !noundef !284
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
  br i1 %i.jc, label %bb.aj, label %_ZN2v88internal4Zone8AllocateINS0_6maglev18MaglevCallSiteInfoEEEPvm.exit.i, !prof !281

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
  store i64 %i.jp, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i64 16, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.je, i64 96 ; 4 uses
  store ptr null, ptr %i.jr, align 8
  %i.js = icmp eq ptr %i.jj, %i.hq
  br i1 %i.js, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN2v88internal4Zone8AllocateINS0_6maglev18MaglevCallSiteInfoEEEPvm.exit.i
  store ptr %i.jr, ptr %i.ji, align 8
  %i.jt = load ptr, ptr %i.hq, align 8
  store ptr %i.jt, ptr %i.jr, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN2v88internal4Zone8AllocateINS0_6maglev18MaglevCallSiteInfoEEEPvm.exit.i
  %i.ju = phi ptr [ %i.jr, %bb.ak ], [ %i.jj, %_ZN2v88internal4Zone8AllocateINS0_6maglev18MaglevCallSiteInfoEEEPvm.exit.i ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal4Zone3NewINS0_6maglev18MaglevCallSiteInfoEJNS3_19MaglevCallerDetailsERPNS3_19CallKnownJSFunctionERNS0_8compiler15FeedbackCellRefERfiEEEPT_DpOT0_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = urem i64 %i.jw, %i.jl
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jx
  store ptr %i.jm, ptr %i.jy, align 8
  br label %_ZN2v88internal4Zone3NewINS0_6maglev18MaglevCallSiteInfoEJNS3_19MaglevCallerDetailsERPNS3_19CallKnownJSFunctionERNS0_8compiler15FeedbackCellRefERfiEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_6maglev18MaglevCallSiteInfoEJNS3_19MaglevCallerDetailsERPNS3_19CallKnownJSFunctionERNS0_8compiler15FeedbackCellRefERfiEEEPT_DpOT0_.exit: ; preds = %bb.al, %bb.am
  %i.jz = getelementptr inbounds nuw i8, ptr %19, i64 88
  store i64 0, ptr %i.jz, align 8
  store i64 1, ptr %i.hh, align 8
  store ptr %i.hq, ptr %i.hg, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i8 0, i64 16, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.je, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 24, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.je, i64 128
  store ptr %i.do, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.je, i64 136
  %i.kd = load i64, ptr %12, align 8
  store i64 %i.kd, ptr %i.kc, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.je, i64 144
  store float %i.fu, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.je, i64 148
  store i32 %i.iw, ptr %i.kf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.kh = load ptr, ptr %i.kg, align 8            ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 584 ; 4 uses
  %i.kj = load ptr, ptr %i.ki, align 8            ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 592
  %i.kl = load ptr, ptr %i.kk, align 8            ; 2 uses
  %i.km = icmp ult ptr %i.kj, %i.kl
  br i1 %i.km, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev18MaglevCallSiteInfoEE9push_backERKS4_.exit.i, label %bb.an, !prof !280

bb.an:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_6maglev18MaglevCallSiteInfoEJNS3_19MaglevCallerDetailsERPNS3_19CallKnownJSFunctionERNS0_8compiler15FeedbackCellRefERfiEEEPT_DpOT0_.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 568
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 576
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = ptrtoint ptr %i.kl to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ashr exact i64 %i.ks, 3
  %i.ku = add nsw i64 %i.kt, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev18MaglevCallSiteInfoEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(33) %i.kn, i64 noundef %i.ku)
  %.pre.i.i56 = load ptr, ptr %i.ki, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev18MaglevCallSiteInfoEE9push_backERKS4_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev18MaglevCallSiteInfoEE9push_backERKS4_.exit.i: ; preds = %bb.an, %_ZN2v88internal4Zone3NewINS0_6maglev18MaglevCallSiteInfoEJNS3_19MaglevCallerDetailsERPNS3_19CallKnownJSFunctionERNS0_8compiler15FeedbackCellRefERfiEEEPT_DpOT0_.exit
  %i.kv = phi ptr [ %i.kj, %_ZN2v88internal4Zone3NewINS0_6maglev18MaglevCallSiteInfoEJNS3_19MaglevCallerDetailsERPNS3_19CallKnownJSFunctionERNS0_8compiler15FeedbackCellRefERfiEEEPT_DpOT0_.exit ], [ %.pre.i.i56, %bb.an ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store ptr %i.kw, ptr %i.ki, align 8
  store ptr %i.je, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kh, i64 576
  %i.ky = load ptr, ptr %i.kx, align 8            ; 4 uses
  %i.kz = load ptr, ptr %i.ki, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 -8
  %i.lb = load ptr, ptr %i.la, align 8            ; 2 uses
  %i.lc = ptrtoint ptr %i.kz to i64
  %i.ld = ptrtoint ptr %i.ky to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = ashr exact i64 %i.le, 3                 ; 2 uses
  %i.lg = add nsw i64 %i.lf, -1                   ; 2 uses
  %i.lh = icmp sgt i64 %i.lf, 1
  br i1 %i.lh, label %.lr.ph.i.i.i, label %_ZNSt14priority_queueIPN2v88internal6maglev18MaglevCallSiteInfoENS1_10ZoneVectorIS4_EENS2_25MaglevCallSiteInfoCompareEE4pushERKS4_.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev18MaglevCallSiteInfoEE9push_backERKS4_.exit.i, %bb.ao
  %.01317.i.i.i = phi i64 [ %.018.i56.i.i, %bb.ao ], [ %i.lg, %_ZN2v88internal10ZoneVectorIPNS0_6maglev18MaglevCallSiteInfoEE9push_backERKS4_.exit.i ] ; 3 uses
  %.018.in.i.i.i = add nsw i64 %.01317.i.i.i, -1
  %.018.i56.i.i = lshr i64 %.018.in.i.i.i, 1      ; 3 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %.018.i56.i.i ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = call noundef zeroext i1 @_ZN2v88internal6maglev25MaglevCallSiteInfoCompareclEPKNS1_18MaglevCallSiteInfoES5_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %i.lj, ptr noundef %i.lb) #33
  br i1 %i.lk, label %bb.ao, label %_ZNSt14priority_queueIPN2v88internal6maglev18MaglevCallSiteInfoENS1_10ZoneVectorIS4_EENS2_25MaglevCallSiteInfoCompareEE4pushERKS4_.exit

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.ll = load ptr, ptr %i.li, align 8
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %.01317.i.i.i
  store ptr %i.ll, ptr %i.lm, align 8
  %.not.i.i = icmp eq i64 %.018.i56.i.i, 0
  br i1 %.not.i.i, label %_ZNSt14priority_queueIPN2v88internal6maglev18MaglevCallSiteInfoENS1_10ZoneVectorIS4_EENS2_25MaglevCallSiteInfoCompareEE4pushERKS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !826

_ZNSt14priority_queueIPN2v88internal6maglev18MaglevCallSiteInfoENS1_10ZoneVectorIS4_EENS2_25MaglevCallSiteInfoCompareEE4pushERKS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.ao, %_ZN2v88internal10ZoneVectorIPNS0_6maglev18MaglevCallSiteInfoEE9push_backERKS4_.exit.i
  %.013.lcssa.i.i.i = phi i64 [ %i.lg, %_ZN2v88internal10ZoneVectorIPNS0_6maglev18MaglevCallSiteInfoEE9push_backERKS4_.exit.i ], [ %.01317.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.ao ]
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %.013.lcssa.i.i.i
  store ptr %i.lb, ptr %i.ln, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.lo = ptrtoint ptr %i.do to i64
  br label %.critedge41

.critedge41:                                      ; preds = %bb.u, %bb.v, %bb.t, %bb.p, %bb.q, %bb.o, %bb.m, %_ZNSt14priority_queueIPN2v88internal6maglev18MaglevCallSiteInfoENS1_10ZoneVectorIS4_EENS2_25MaglevCallSiteInfoCompareEE4pushERKS4_.exit, %bb.w, %bb.k
  %.sroa.063.0 = phi i64 [ %i.at, %bb.k ], [ 3, %bb.m ], [ %i.lo, %_ZNSt14priority_queueIPN2v88internal6maglev18MaglevCallSiteInfoENS1_10ZoneVectorIS4_EENS2_25MaglevCallSiteInfoCompareEE4pushERKS4_.exit ], [ %i.da, %bb.w ], [ 3, %bb.p ], [ 3, %bb.o ], [ 3, %bb.q ], [ 3, %bb.t ], [ 3, %bb.v ], [ 3, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentCallFrequencyEv.exit, %bb.d, %bb.c, %bb.b, %.critedge41
  %.sroa.063.1 = phi i64 [ %.sroa.063.0, %.critedge41 ], [ 3, %bb.d ], [ 3, %bb.b ], [ 3, %bb.c ], [ 3, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentCallFrequencyEv.exit ]
  ret i64 %.sroa.063.1
}

declare ptr @_ZNK2v88internal8compiler15FeedbackCellRef15feedback_vectorEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 4 dereferenceable(5) ptr @_ZN2v88internal8compiler12JSHeapBroker18GetFeedbackForCallERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(8560), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(28) ptr @_ZNK2v88internal8compiler17ProcessedFeedback6AsCallEv(ptr noundef nonnull align 4 dereferenceable(5)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildEagerInlineCallEPNS1_9ValueNodeES4_S4_NS0_8compiler21SharedFunctionInfoRefENS5_15FeedbackCellRefERNS1_13CallArgumentsEf(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %6, float noundef %7) local_unnamed_addr #0 align 2 !guid !828 {
bb.a:
  %8 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
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
  %.not.i = icmp eq i64 %i.u, %i.ac
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %i.n, %i.p
  br i1 %i.ad, label %bb.c, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.ai, null
  br i1 %.not11.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit

_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aj, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %i.ak = icmp ne ptr %.sroa.0.0.copyload.i, null
  %i.al = trunc i64 %.sroa.4.0.copyload.i to i1
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread

_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41: ; preds = %bb.b, %bb.c
  %i.am = phi ptr [ %i.ag, %bb.c ], [ %i.n, %bb.b ]
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = sext i32 %i.ao to i64                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ar
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 3
  %i.ba = icmp eq i32 %i.az, 2                    ; 2 uses
  %.sroa.4.8.insert.ext.i = zext i1 %i.ba to i64  ; 2 uses
  %i.bb = icmp ne ptr %i.aq, null
  %or.cond44 = select i1 %i.bb, i1 %i.ba, i1 false
  br i1 %or.cond44, label %.thread, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread

.thread:                                          ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.n, %i.p
  br i1 %i.be, label %bb.e, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit

bb.e:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 512
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit

_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit: ; preds = %.thread, %bb.e
  %i.bi = phi ptr [ %i.bh, %bb.e ], [ %i.n, %.thread ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState10MergeThrowEPNS1_18MaglevGraphBuilderEPKNS1_21MaglevCompilationUnitERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(312) %i.bn, ptr noundef nonnull %0, ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(352) %i.br) #33
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit
  %.sroa.0.0.i4552 = phi ptr [ %i.as, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit ], [ %.sroa.0.0.copyload.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit ]
  %.sroa.4.0.i4650 = phi i64 [ %.sroa.4.8.insert.ext.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit ], [ %.sroa.4.0.copyload.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit ]
  %.sroa.426.12.insert.ext = add i64 %.sroa.4.0.i4650, 4294967296
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread

_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41, %bb.d, %bb.f, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit
  %.sroa.0.0.i34 = phi ptr [ %.sroa.0.0.i4552, %bb.f ], [ %.sroa.0.0.copyload.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit ], [ null, %bb.d ], [ %i.as, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41 ]
  %.sroa.426.0 = phi i64 [ %.sroa.426.12.insert.ext, %bb.f ], [ %.sroa.4.0.copyload.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit ], [ 0, %bb.d ], [ %.sroa.4.8.insert.ext.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.bt) #33 ; 3 uses
  %i.bv = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 2 uses
  %i.cb = sub i64 %i.by, %i.ca
  %i.cc = icmp ult i64 %i.cb, 56
  br i1 %i.cc, label %bb.g, label %_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit, !prof !281

bb.g:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, i64 noundef 56) #33
  %.pre.i.i.i = load i64, ptr %i.bz, align 8
  br label %_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit

_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread, %bb.g
  %i.cd = phi i64 [ %.pre.i.i.i, %bb.g ], [ %i.ca, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread ] ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 3 uses
  %i.cf = add i64 %i.cd, 56
  store i64 %i.cf, ptr %i.bz, align 8
  tail call void @_ZN2v88internal6maglev21MaglevCompilationUnitC1EPNS1_21MaglevCompilationInfoEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE(ptr noundef nonnull align 8 dereferenceable(52) %i.ce, ptr noundef %i.bw, ptr noundef nonnull %i.bv, ptr %4, ptr %5) #33
  %i.cg = tail call { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder31GetArgumentsAsArrayOfValueNodesENS0_8compiler21SharedFunctionInfoRefERKNS1_13CallArgumentsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(100) %6) ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0      ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder31GetDeoptFrameForLazyDeoptHelperENS0_11interpreter8RegisterEiPNS2_19LazyDeoptFrameScopeEb(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 2147483647, i32 noundef 0, ptr noundef %i.ck, i1 noundef zeroext true)
  %i.cm = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder31AddInlinedArgumentsToDeoptFrameEPNS1_10DeoptFrameEPKNS1_21MaglevCompilationUnitEPNS1_9ValueNodeENS_4base6VectorIS9_EE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.cl, ptr noundef nonnull %i.ce, ptr noundef %2, ptr %i.ch, i64 %i.ci)
  %i.cn = load ptr, ptr %i.bs, align 8
  %i.co = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.cn) #33 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.cu, null
  br i1 %.not5.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 120
  %i.cw = load i8, ptr %i.cv, align 8, !range !283, !noundef !284
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = zext i32 %i.dg to i64
  %i.di = add i64 %i.de, %i.dh
  %i.dj = sub i64 %i.dd, %i.di
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = tail call noundef i32 @_ZNK2v88internal8compiler16BytecodeAnalysis16GetLoopOffsetForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.cy, i32 noundef %i.dk) #33 ; 2 uses
  %.not.i19 = icmp eq i32 %i.dl, -1
  br i1 %.not.i19, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dm = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK2v88internal8compiler16BytecodeAnalysis14GetLoopInfoForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.cy, i32 noundef %i.dl) #33
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %bb.k, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit

bb.k:                                             ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dq = load i32, ptr %i.dp, align 8            ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.l, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ds = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 59), align 1, !range !283, !noundef !284
  %i.dt = icmp eq i32 %i.dq, 1
  %i.du = select i1 %i.dt, i8 %i.ds, i8 0
  br label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit

_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.2.i = phi i8 [ 1, %bb.h ], [ 1, %bb.j ], [ %i.du, %bb.l ], [ 1, %bb.k ], [ 0, %bb.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8            ; 2 uses
  %i.dz = sub i64 %i.dw, %i.dy
  %i.ea = icmp ult i64 %i.dz, 128
  br i1 %i.ea, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit, !prof !281

bb.m:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 noundef 128) #33
  %.pre.i.i = load i64, ptr %i.dx, align 8
  br label %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit: ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit, %bb.m
  %i.eb = phi i64 [ %.pre.i.i, %bb.m ], [ %i.dy, %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit ] ; 2 uses
  %i.ec = inttoptr i64 %i.eb to ptr               ; 18 uses
  %i.ed = add i64 %i.eb, 128
  store i64 %i.ed, ptr %i.dx, align 8
  store ptr %i.ch, ptr %i.ec, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.cm, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %i.cq, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.eh = load ptr, ptr %i.cr, align 8
  store ptr %i.eh, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.cs, align 8
  %i.ej = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  store i64 %i.ej, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  store ptr null, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.en = load i64, ptr %i.em, align 8
  store i64 %i.en, ptr %i.el, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  store ptr null, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.er = load i64, ptr %i.eq, align 8
  store i64 %i.er, ptr %i.ep, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 928
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  store ptr null, ptr %i.eu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store ptr %i.ei, ptr %8, align 8
  call void @_ZNSt10_HashtableISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_PNS3_4NodeEENS2_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSQ_NSE_10_AllocNodeINSC_INSE_10_Hash_nodeISB_Lb1EEEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ec, i64 104
  store ptr %.sroa.0.0.i34, ptr %i.ev, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 112
  store i64 %.sroa.426.0, ptr %.sroa.426.0..sroa_idx, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ec, i64 120
  store i8 %.2.i, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 121
  store i8 1, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ec, i64 124
  store float %7, ptr %i.ey, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fc = load ptr, ptr %i.fb, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilderC2EPNS0_12LocalIsolateEPNS1_21MaglevCompilationUnitEPNS1_5GraphEPNS1_19MaglevCallerDetailsE(ptr noundef nonnull align 8 dereferenceable(953) %9, ptr noundef %i.fa, ptr noundef nonnull %i.ce, ptr noundef %i.fc, ptr noundef nonnull %i.ec)
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE17FlushNodesToBlockEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store ptr %i.fe, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.fg, align 8
  %i.fh = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder19BuildInlineFunctionENS0_14SourcePositionEPNS1_9ValueNodeES5_S5_(ptr noundef nonnull align 8 dereferenceable(953) %9, i64 %.sroa.0.0.copyload.i20, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 888
  call void @_ZNSt10_HashtableISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_PNS3_4NodeEENS2_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSQ_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(64) %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr null, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr null, ptr %i.fk, align 8
  %i.fl = and i64 %i.fh, 7
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 728
  %i.fo = load ptr, ptr %i.fn, align 8
  store ptr %i.fo, ptr %i.cp, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 688
  %i.fq = load i8, ptr %i.fp, align 8, !range !283, !noundef !284
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i8 %i.fq, ptr %i.fr, align 8
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE17FlushNodesToBlockEv(ptr noundef nonnull align 8 dereferenceable(152) %9)
  %i.fs = load ptr, ptr %i.ff, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit, %bb.n
  %storemerge = phi ptr [ %i.fs, %bb.n ], [ null, %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit ]
  %.sroa.017.0 = phi i64 [ %i.fh, %bb.n ], [ 1, %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit ]
  store ptr %storemerge, ptr %i.fd, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(953) dereferenceable(953) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret i64 %.sroa.017.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder31GetArgumentsAsArrayOfValueNodesENS0_8compiler21SharedFunctionInfoRefERKNS1_13CallArgumentsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %2) local_unnamed_addr #0 align 2 !guid !830 {
bb.a:
  %i.a = load i32, ptr %2, align 8
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
end_hunk_0
