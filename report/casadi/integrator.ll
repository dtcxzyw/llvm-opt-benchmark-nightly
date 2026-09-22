Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/integrator?download=true
inline.NumInlined: 5918
inline.NumDeleted: 1143
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN6casadi10Integrator10map2oracleINS_6MatrixINS_6SXElemEEEEENS_8FunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapISB_T_St4lessISB_ESaISt4pairISC_SF_EEE:bb.a
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !34
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292, %bb.bo
  %.pn181.pn.pn.pn = phi { ptr, i32 } [ %i.gg, %bb.bo ], [ %.pn181.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %.pn181.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ] ; 2 uses
  %.468 = phi i1 [ true, %bb.bo ], [ %.367, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %.367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ] ; 2 uses
  %i.hf = load ptr, ptr %34, align 8, !tbaa !33   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !34
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %bb.bn
  %.pn181.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gf, %bb.bn ], [ %.pn181.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ], [ %.pn181.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ] ; 2 uses
  %.569 = phi i1 [ true, %bb.bn ], [ %.468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ], [ %.468, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ] ; 2 uses
  %i.hk = load ptr, ptr %38, align 8, !tbaa !33   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !34
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298, %bb.bm
  %.pn181.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.bm ], [ %.pn181.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %.pn181.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ] ; 2 uses
  %.670 = phi i1 [ true, %bb.bm ], [ %.569, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %.569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #35
  %i.hp = load ptr, ptr %35, align 8, !tbaa !33   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !34
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301, %bb.bl
  %.pn181.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.bl ], [ %.pn181.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301 ], [ %.pn181.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ] ; 2 uses
  %.771 = phi i1 [ true, %bb.bl ], [ %.670, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301 ], [ %.670, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ] ; 2 uses
  %i.hu = load ptr, ptr %36, align 8, !tbaa !33   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !34
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304, %bb.bk
  %.pn181.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gc, %bb.bk ], [ %.pn181.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304 ], [ %.pn181.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ] ; 2 uses
  %.872 = phi i1 [ true, %bb.bk ], [ %.771, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304 ], [ %.771, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ] ; 2 uses
  %i.hz = load ptr, ptr %37, align 8, !tbaa !33   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.ft
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  %i.ib = load i64, ptr %i.ft, align 8, !tbaa !34
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  %i.id = load ptr, ptr %27, align 8, !tbaa !33   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !34
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, %bb.bj
  %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gb, %bb.bj ], [ %.pn181.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310 ], [ %.pn181.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ] ; 4 uses
  %.1074 = phi i1 [ true, %bb.bj ], [ %.872, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310 ], [ %.872, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ] ; 2 uses
  %i.ii = load ptr, ptr %28, align 8, !tbaa !33   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !34
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  %i.in = load ptr, ptr %29, align 8, !tbaa !33   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315.thread: ; preds = %bb.ax
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %29, align 8, !tbaa !33   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %.sink.split797, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315.thread
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !34
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #36
  br label %.sink.split797

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
  %i.iw = load i64, ptr %i.io, align 8, !tbaa !34
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ix) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br i1 %.1074, label %bb.bt, label %bb.fd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br i1 %.1074, label %bb.bt, label %bb.fd

.sink.split797:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316.thread
  %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn501.ph = phi { ptr, i32 } [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316.thread ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318.thread ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split797, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn501 = phi { ptr, i32 } [ %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn501.ph, %.sink.split797 ]
  call void @__cxa_free_exception(ptr %i.fr) #35
  br label %bb.fd

bb.bu:                                            ; preds = %bb.at, %bb.av, %bb.v, %bb.x
  %i.iy = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_denseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %bb.bv unwind label %bb.aj

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.iy, label %bb.cn, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iz = call ptr @__cxa_allocate_exception(i64 40) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.322, ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %bb.bx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352.thread

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %bb.by unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.thread

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @.str.30)
          to label %switch.lookup834 unwind label %bb.cf

switch.lookup834:                                 ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #35
  %i.ja = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  store ptr %i.ja, ptr %50, align 8, !tbaa !29, !alias.scope !419
  %i.jb = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %50, i64 17
  %i.jd = trunc nuw nsw i64 %.085577 to i40
  %switch.cast = shl nuw nsw i40 %i.jd, 3
  %switch.downshift836 = lshr i40 504398248052, %switch.cast
  %switch.masked837 = trunc i40 %switch.downshift836 to i8
  store i8 %switch.masked837, ptr %i.ja, align 8, !tbaa !34, !alias.scope !419
  store i64 1, ptr %i.jb, align 8, !tbaa !35, !alias.scope !419
  store i8 0, ptr %i.jc, align 1, !tbaa !34, !alias.scope !419
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %49, ptr noundef nonnull @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %bb.bz unwind label %bb.cg

bb.bz:                                            ; preds = %switch.lookup834
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @.str.120)
          to label %bb.ca unwind label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull @.str.118, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false), !alias.scope !420
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.cd unwind label %bb.ck

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.iz, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %bb.ce unwind label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  invoke void @__cxa_throw(ptr nonnull %i.iz, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #34
          to label %bb.ff unwind label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352.thread: ; preds = %bb.bw
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split799

bb.cf:                                            ; preds = %bb.by
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

bb.cg:                                            ; preds = %switch.lookup834
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

bb.ch:                                            ; preds = %bb.bz
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

bb.ci:                                            ; preds = %bb.ca
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

bb.cj:                                            ; preds = %bb.cb
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

bb.ck:                                            ; preds = %bb.cc
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

bb.cl:                                            ; preds = %bb.ce, %bb.cd
  %.054 = phi i1 [ false, %bb.ce ], [ true, %bb.cd ] ; 2 uses
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %41, align 8, !tbaa !33   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.cl
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !34
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326, %bb.ck
  %.pn203 = phi { ptr, i32 } [ %i.jk, %bb.ck ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %i.jl, %bb.cl ] ; 2 uses
  %.155 = phi i1 [ true, %bb.ck ], [ %.054, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %.054, %bb.cl ] ; 2 uses
  %i.jr = load ptr, ptr %46, align 8, !tbaa !33   ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !34
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329, %bb.cj
  %.pn203.pn = phi { ptr, i32 } [ %i.jj, %bb.cj ], [ %.pn203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %.pn203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ] ; 2 uses
  %.256 = phi i1 [ true, %bb.cj ], [ %.155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %.155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %51) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  %i.jw = load ptr, ptr %47, align 8, !tbaa !33   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !34
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332, %bb.ci
  %.pn203.pn.pn = phi { ptr, i32 } [ %i.ji, %bb.ci ], [ %.pn203.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ], [ %.pn203.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ] ; 2 uses
  %.357 = phi i1 [ true, %bb.ci ], [ %.256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ], [ %.256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ] ; 2 uses
  %i.kb = load ptr, ptr %48, align 8, !tbaa !33   ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !34
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.ch
  %.pn203.pn.pn.pn = phi { ptr, i32 } [ %i.jh, %bb.ch ], [ %.pn203.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ], [ %.pn203.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ] ; 2 uses
  %.458 = phi i1 [ true, %bb.ch ], [ %.357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ], [ %.357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ] ; 2 uses
  %i.kg = load ptr, ptr %49, align 8, !tbaa !33   ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !34
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338, %bb.cg
  %.pn203.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jg, %bb.cg ], [ %.pn203.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338 ], [ %.pn203.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ] ; 2 uses
  %.559 = phi i1 [ true, %bb.cg ], [ %.458, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338 ], [ %.458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ] ; 2 uses
  %i.kl = load ptr, ptr %50, align 8, !tbaa !33   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.ja
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340
  %i.kn = load i64, ptr %i.ja, align 8, !tbaa !34
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #35
  %i.kp = load ptr, ptr %42, align 8, !tbaa !33   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !34
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344, %bb.cf
  %.pn203.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jf, %bb.cf ], [ %.pn203.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344 ], [ %.pn203.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ] ; 4 uses
  %.761 = phi i1 [ true, %bb.cf ], [ %.559, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344 ], [ %.559, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ] ; 2 uses
  %i.ku = load ptr, ptr %43, align 8, !tbaa !33   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !34
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
  %i.kz = load ptr, ptr %44, align 8, !tbaa !33   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.thread: ; preds = %bb.bx
  %i.lc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ld = load ptr, ptr %44, align 8, !tbaa !33   ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %.sink.split799, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.thread
end_hunk_0
