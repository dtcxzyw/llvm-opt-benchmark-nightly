Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/object_tracker?download=true
inline.NumInlined: 1371
inline.NumDeleted: 259
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@main:bb.a

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit: ; preds = %._crit_edge.i.i327
  %i.aq = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ag
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.au, ptr %9, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.au, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 3, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 3, ptr %i.av, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 19
  store i8 0, ptr %i.aw, align 1, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.ax, ptr %8, align 8, !tbaa !18, !alias.scope !267
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !17, !alias.scope !267
  store i8 0, ptr %i.ax, align 8, !tbaa !19, !alias.scope !267
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull align 8 %8)
          to label %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit343 unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %8, align 8, !tbaa !20, !alias.scope !267 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ax
  br i1 %i.bb, label %.body341, label %.body341.sink.split

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  invoke void @_Z8findFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit343
  %i.bc = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ax
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %bb.j
  %i.be = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  %i.bg = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.au
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346
  %i.bi = load i64, ptr %i.au, align 8, !tbaa !19
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  invoke fastcc void @_ZL10loadParserRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN2cv17CommandLineParserC1EiPKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) @_Z4keysB5cxx11)
          to label %bb.l unwind label %bb.ab

bb.l:                                             ; preds = %bb.k
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv17CommandLineParseraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.m unwind label %bb.ac      ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  invoke fastcc void @_ZL13createTrackerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN2cv17CommandLineParserERNS7_3PtrINS7_7TrackerEEE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %._crit_edge.i.i350 unwind label %bb.ae

._crit_edge.i.i350:                               ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !18
  store i64 5138124812476043860, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 8, ptr %i.bm, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i8 0, ptr %i.bn, align 8, !tbaa !19
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 0)
          to label %._crit_edge.i.i354 unwind label %bb.af

._crit_edge.i.i354:                               ; preds = %._crit_edge.i.i350
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.bo, ptr %14, align 8, !tbaa !18
  store i32 1936613747, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 4, ptr %i.bp, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i8 0, ptr %i.bq, align 4, !tbaa !19
  invoke void @_ZN2cv8FontFaceC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.n unwind label %bb.ag

bb.n:                                             ; preds = %._crit_edge.i.i354
  %i.br = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bo
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %bb.n
  %i.bt = load i64, ptr %i.bo, align 8, !tbaa !19
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.bv, ptr %17, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bv, ptr noundef nonnull align 1 dereferenceable(5) @.str.71, i64 5, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 5, ptr %i.bw, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 21
  store i8 0, ptr %i.bx, align 1, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  store ptr %i.by, ptr %16, align 8, !tbaa !18, !alias.scope !268
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !17, !alias.scope !268
  store i8 0, ptr %i.by, align 8, !tbaa !19, !alias.scope !268
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %17, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull align 8 %16)
          to label %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit370 unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %16, align 8, !tbaa !20, !alias.scope !268 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.by
  br i1 %i.cc, label %.body368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i365: ; preds = %bb.o
  %i.cd = load i64, ptr %i.by, align 8, !tbaa !19, !alias.scope !268
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #27
  br label %.body368

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit370: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
  %i.cf = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bv
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit370
  %i.ch = load i64, ptr %i.bv, align 8, !tbaa !19
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit370, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.cj, ptr %18, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 52, ptr %i.d, align 8, !tbaa !21
  %i.ck = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc376 unwind label %bb.ah ; 3 uses

.noexc376:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373
  store ptr %i.ck, ptr %18, align 8, !tbaa !20
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !21  ; 3 uses
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.ck, ptr noundef nonnull align 1 dereferenceable(52) @.str.72, i64 52, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  store i8 0, ptr %i.cn, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN2cv12VideoCaptureC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %19)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %.noexc376
  %i.co = load i64, ptr %i.bz, align 8, !tbaa !17 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.thread702, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %16, align 8, !tbaa !20
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !19
  %74 = sext i8 %i.cr to i32
  %isdigittmp = add nsw i32 %74, -48              ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.cs = icmp eq i64 %i.co, 1
  %or.cond704 = and i1 %i.cs, %isdigit
  br i1 %or.cond704, label %.thread702, label %bb.ak

.thread702:                                       ; preds = %bb.q, %bb.p
  %i.ct = phi i32 [ 0, %bb.p ], [ %isdigittmp, %bb.q ] ; 3 uses
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.73, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.thread702
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.ct)
          to label %bb.r unwind label %bb.aj      ; 4 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.74, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit380 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit380: ; preds = %bb.r
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !25
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr %i.cv, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 240
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !41 ; 6 uses
  %.not.i.i.i538 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i538, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit380
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !47
  %.not.i1.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i1.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 67
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !19
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dc)
          to label %.noexc540 unwind label %bb.aj

.noexc540:                                        ; preds = %bb.t
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = invoke noundef signext i8 %i.dj(ptr noundef nonnull align 8 dereferenceable(570) %i.dc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.aj, !inline_history !253

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc540, %bb.s
  %.0.i.i.i = phi i8 [ %i.dg, %bb.s ], [ %i.dk, %.noexc540 ]
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i8 noundef signext %.0.i.i.i)
          to label %.noexc542 unwind label %bb.aj

.noexc542:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dl)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.aj ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc542
  %i.dn = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25) %19, i32 noundef %i.ct, i32 noundef 0)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  br i1 %i.dn, label %.critedge311, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.75, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit383 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit383: ; preds = %bb.v
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.ct)
          to label %bb.w unwind label %bb.aj      ; 4 uses

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit383
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull @.str.76, i64 noundef 66)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385: ; preds = %bb.w
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !25
  %i.ds = getelementptr i8, ptr %i.dr, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %i.dp, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 240
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !41 ; 6 uses
  %.not.i.i.i544 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i544, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i545

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit380
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.cont unwind label %bb.aj

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i545: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !47
  %.not.i1.i.i546 = icmp eq i8 %i.dy, 0
  br i1 %.not.i1.i.i546, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i545
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 67
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !19
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i547

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i545
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dw)
          to label %.noexc550 unwind label %bb.aj

.noexc550:                                        ; preds = %bb.y
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef signext i8 %i.ed(ptr noundef nonnull align 8 dereferenceable(570) %i.dw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i547 unwind label %bb.aj, !inline_history !253

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i547: ; preds = %.noexc550, %bb.x
  %.0.i.i.i548 = phi i8 [ %i.ea, %bb.x ], [ %i.ee, %.noexc550 ]
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i8 noundef signext %.0.i.i.i548)
          to label %.noexc552 unwind label %bb.aj

.noexc552:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i547
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %_ZNSolsEPFRSoS_E.exit387 unwind label %bb.aj ; 0 uses

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.eh = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.ag
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %.body
  %i.ej = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537

bb.z:                                             ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit343
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ax
  br i1 %i.en, label %.body341, label %.body341.sink.split

.body341.sink.split:                              ; preds = %bb.z, %bb.i
  %.sink = phi ptr [ %i.ba, %bb.i ], [ %i.em, %bb.z ]
  %.pn204.ph = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.el, %bb.z ]
  %i.eo = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ep) #27
  br label %.body341

.body341:                                         ; preds = %.body341.sink.split, %bb.z, %bb.i
  %.pn204 = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.el, %bb.z ], [ %.pn204.ph, %.body341.sink.split ]
  %i.eq = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.au
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %.body341
  %i.es = load i64, ptr %i.au, align 8, !tbaa !19
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %.body341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.ab:                                            ; preds = %bb.k
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.l
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn207 = phi { ptr, i32 } [ %i.ew, %bb.ac ], [ %i.ev, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.gd

bb.ae:                                            ; preds = %bb.m
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.af:                                            ; preds = %._crit_edge.i.i350
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ag:                                            ; preds = %._crit_edge.i.i354
  %i.ez = landingpad { ptr, i32 }
          cleanup
end_hunk_0
