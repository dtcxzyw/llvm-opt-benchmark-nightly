Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lkdemo?download=true
inline.NumInlined: 323
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 27
  store i8 0, ptr %i.am, align 1, !tbaa !47
  invoke void @_ZN2cv17CommandLineParserC1EiPKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZL4helpv.exit
  %i.an = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ak
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !47
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ar, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.as, align 8, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.at, align 2, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.au, ptr %5, align 8, !tbaa !50, !alias.scope !54
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.av, align 8, !tbaa !52, !alias.scope !54
  store i8 0, ptr %i.au, align 8, !tbaa !47, !alias.scope !54
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull align 8 %5)
          to label %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %5, align 8, !tbaa !53, !alias.scope !54 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.au
  br i1 %i.ay, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.az = load i64, ptr %i.au, align 8, !tbaa !47, !alias.scope !54
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #15
  br label %.body

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ar
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit
  %i.bd = load i64, ptr %i.ar, align 8, !tbaa !47
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !52
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.bh = load ptr, ptr %5, align 8, !tbaa !53
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !47
  %i.bj = sext i8 %i.bi to i32
  %isdigittmp = add nsw i32 %i.bj, -48            ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bk = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef %isdigittmp, i32 noundef 0)
          to label %bb.n unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %.invoke, %.noexc130, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5.i, %.noexc128, %bb.e, %.noexc125, %.noexc124, %.noexc123, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i, %.noexc121, %bb.c, %.noexc, %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.k:                                             ; preds = %_ZL4helpv.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ak
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.k
  %i.bp = load i64, ptr %i.ak, align 8, !tbaa !47
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.cq

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.br = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ar
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %.body
  %i.bt = load i64, ptr %i.ar, align 8, !tbaa !47
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.l:                                             ; preds = %bb.p, %bb.n, %bb.m, %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.m:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.bw = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.n unwind label %bb.l       ; 0 uses

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.bx = invoke noundef zeroext i1 @_ZNK2cv12VideoCapture8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  br i1 %i.bx, label %._crit_edge.i.i147, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

._crit_edge.i.i147:                               ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bz, ptr %7, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bz, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.ca, align 8, !tbaa !52
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.cb, align 1, !tbaa !47
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 1)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %._crit_edge.i.i147
  %i.cc = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bz
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.q
  %i.ce = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cg, ptr %8, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cg, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 7, ptr %i.ch, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 23
  store i8 0, ptr %i.ci, align 1, !tbaa !47
  invoke void @_ZN2cv16setMouseCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFviiiiPvES8_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @_ZL7onMouseiiiiPv, ptr noundef null)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.cj = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cg
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.r
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !47
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %13, i8 0, i64 48, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.cz = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.dc = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.df = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 13 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %32, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 12 uses
  %i.do = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.eb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.ee = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %37, i64 20
  %i.el = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %40, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %39, i64 23
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211
  %.064 = phi i1 [ %.165, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ] ; 6 uses
  %.061 = phi i1 [ %.162, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ]
  %i.ev = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZN2cv12VideoCapturersERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.t unwind label %bb.x       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ew = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  br i1 %i.ew, label %.thread, label %bb.y

bb.v:                                             ; preds = %._crit_edge.i.i147
  %i.ex = landingpad { ptr, i32 }
          cleanup
  %i.ey = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.bz
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.v
  %i.fa = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.cp

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.cg
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.w
  %i.ff = load i64, ptr %i.cg, align 8, !tbaa !47
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.cp

bb.x:                                             ; preds = %bb.t, %bb.s
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store i64 0, ptr %i.co, align 8
  store i32 33619968, ptr %14, align 8, !tbaa !57
  store ptr %11, ptr %i.cn, align 8, !tbaa !58
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  store i32 0, ptr %i.cp, align 8, !tbaa !59
  store i32 0, ptr %i.cq, align 4, !tbaa !60
  store i32 16842752, ptr %15, align 8, !tbaa !57
  store ptr %11, ptr %i.cr, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store i64 0, ptr %i.ct, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !57
  store ptr %9, ptr %i.cs, align 8, !tbaa !58
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br i1 %.064, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  %i.fi = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ac unwind label %bb.af     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.ag

bb.ad:                                            ; preds = %bb.y
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.cm

bb.ae:                                            ; preds = %bb.z
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.cm

bb.af:                                            ; preds = %bb.ab
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.cm

bb.ag:                                            ; preds = %bb.ac, %bb.aa
  br i1 %.061, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  store i32 0, ptr %i.du, align 8, !tbaa !59
  store i32 0, ptr %i.dv, align 4, !tbaa !60
  store i32 16842752, ptr %18, align 8, !tbaa !57
  store ptr %9, ptr %i.dw, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  store i64 0, ptr %i.dy, align 8
  store i32 -2113732571, ptr %19, align 8, !tbaa !57
  store ptr %i.dg, ptr %i.dx, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %21) #13
  store i32 0, ptr %i.dz, align 8, !tbaa !59
  store i32 0, ptr %i.ea, align 4, !tbaa !60
  store i32 16842752, ptr %20, align 8, !tbaa !57
  store ptr %21, ptr %i.eb, align 8, !tbaa !58
  invoke void @_ZN2cv19goodFeaturesToTrackERKNS_11_InputArrayERKNS_12_OutputArrayEiddS2_iibd(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 500, double noundef 1.000000e-02, double noundef 1.000000e+01, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 3, i32 noundef 3, i1 noundef zeroext false, double noundef 4.000000e-02)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  store i32 0, ptr %i.ec, align 8, !tbaa !59
  store i32 0, ptr %i.ed, align 4, !tbaa !60
  store i32 16842752, ptr %22, align 8, !tbaa !57
  store ptr %9, ptr %i.ee, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  store i64 0, ptr %i.eg, align 8
  store i32 -2096955355, ptr %23, align 8, !tbaa !57
  store ptr %i.dg, ptr %i.ef, align 8, !tbaa !58
  invoke void @_ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 42949672970, i64 -1, i64 85899345923, double 3.000000e-02)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  store i8 0, ptr @addRemovePt, align 1, !tbaa !10
  br label %bb.br

bb.ak:                                            ; preds = %bb.ah
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.cm

bb.al:                                            ; preds = %bb.ai
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %bb.cm

bb.am:                                            ; preds = %bb.ag
  %i.fo = load ptr, ptr %13, align 16, !tbaa !62
  %i.fp = load ptr, ptr %i.cu, align 8, !tbaa !62
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %bb.br, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.fr = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %i.fr, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  store i64 0, ptr %i.cw, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !57
  store ptr %10, ptr %i.cv, align 8, !tbaa !58
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.aq unwind label %bb.as

end_hunk_0
begin_hunk_1_@main:bb.a
  %i.kk = add nsw i64 %.sroa.speculated.i.i.i180, %i.kj ; 2 uses
  %i.kl = icmp ult i64 %i.kk, %i.kj
  %i.km = call i64 @llvm.umin.i64(i64 %i.kk, i64 1152921504606846975)
  %i.kn = select i1 %i.kl, i64 1152921504606846975, i64 %i.km ; 3 uses
  %.not.i.i.i181 = icmp ne i64 %i.kn, 0
  call void @llvm.assume(i1 %.not.i.i.i181)
  %i.ko = shl nuw nsw i64 %i.kn, 3
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #16
          to label %.noexc192 unwind label %.loopexit261 ; 5 uses

.noexc192:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i179
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kh
  %i.kr = load i64, ptr %i.jy, align 4
  store i64 %i.kr, ptr %i.kq, align 4
  %.not10.i.i.i.i.i182 = icmp eq ptr %i.ke, %i.jz
  br i1 %.not10.i.i.i.i.i182, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i187, label %.lr.ph.i.i.i.i.i183

.lr.ph.i.i.i.i.i183:                              ; preds = %.noexc192, %.lr.ph.i.i.i.i.i183
  %.012.i.i.i.i.i184 = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i183 ], [ %i.kp, %.noexc192 ] ; 2 uses
  %.0911.i.i.i.i.i185 = phi ptr [ %i.kt, %.lr.ph.i.i.i.i.i183 ], [ %i.ke, %.noexc192 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.ks = load i64, ptr %.0911.i.i.i.i.i185, align 4, !alias.scope !87, !noalias !86
  store i64 %i.ks, ptr %.012.i.i.i.i.i184, align 4, !alias.scope !86, !noalias !87
  %i.kt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i185, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i184, i64 8 ; 2 uses
  %.not.i.i.i.i.i186 = icmp eq ptr %i.kt, %i.jz
  br i1 %.not.i.i.i.i.i186, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i187, label %.lr.ph.i.i.i.i.i183, !llvm.loop !18

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i187: ; preds = %.lr.ph.i.i.i.i.i183, %.noexc192
  %.0.lcssa.i.i.i.i.i188 = phi ptr [ %i.kp, %.noexc192 ], [ %i.ku, %.lr.ph.i.i.i.i.i183 ]
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i188, i64 8
  %.not.i23.i.i189 = icmp eq ptr %i.ke, null
  br i1 %.not.i23.i.i189, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i190, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i187
  %i.kw = load ptr, ptr %i.dr, align 8, !tbaa !78
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = sub i64 %i.kx, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.ky) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i190

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i190: ; preds = %bb.bx, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i187
  store ptr %i.kp, ptr %i.dg, align 8, !tbaa !65
  store ptr %i.kv, ptr %i.dn, align 16, !tbaa !64
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.kn
  store ptr %i.kz, ptr %i.dr, align 8, !tbaa !78
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit193

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit193: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i190, %bb.bu
  store i8 0, ptr @addRemovePt, align 1, !tbaa !10
  %i.la = load ptr, ptr %36, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i194 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit193
  %i.lb = load ptr, ptr %i.ei, align 8, !tbaa !78
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.la to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.le) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit193, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #13
  br label %._crit_edge.i.i197

.loopexit261:                                     ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i179
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp262:                            ; preds = %bb.bw
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bz:                                            ; preds = %.noexc177
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #13
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit261, %.loopexit.split-lp262, %bb.bz
  %.pn105 = phi { ptr, i32 } [ %i.lf, %bb.bz ], [ %lpad.loopexit263, %.loopexit261 ], [ %lpad.loopexit.split-lp264, %.loopexit.split-lp262 ]
  %i.lg = load ptr, ptr %36, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit196, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lh = load ptr, ptr %i.ei, align 8, !tbaa !78
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lg to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.lk) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit196

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit196: ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #13
  br label %bb.cm

._crit_edge.i.i197:                               ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.bs, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #13
  store ptr %i.eo, ptr %39, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.eo, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  store i64 7, ptr %i.ep, align 8, !tbaa !52
  store i8 0, ptr %i.eu, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #13
  store i32 0, ptr %i.eq, align 8, !tbaa !59
  store i32 0, ptr %i.er, align 4, !tbaa !60
  store i32 16842752, ptr %40, align 8, !tbaa !57
  store ptr %11, ptr %i.es, align 8, !tbaa !58
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %._crit_edge.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #13
  %i.ll = load ptr, ptr %39, align 8, !tbaa !53   ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.eo
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %bb.cc
  %i.ln = load i64, ptr %i.eo, align 8, !tbaa !47
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #13
  %i.lp = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 10)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %sext = shl i32 %i.lp, 24                       ; 2 uses
  %i.lq = icmp eq i32 %sext, 452984832
  br i1 %i.lq, label %.thread, label %bb.cg

bb.ce:                                            ; preds = %._crit_edge.i.i197
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #13
  %i.ls = load ptr, ptr %39, align 8, !tbaa !53   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.eo
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.ce
  %i.lu = load i64, ptr %i.eo, align 8, !tbaa !47
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #13
  br label %bb.cm

bb.cf:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cg:                                            ; preds = %bb.cd
  %i.lx = ashr exact i32 %sext, 24
  switch i32 %i.lx, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211 [
    i32 114, label %bb.ch
    i32 99, label %bb.ci
    i32 110, label %bb.cj
  ]

bb.ch:                                            ; preds = %bb.cg
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211

bb.ci:                                            ; preds = %bb.cg
  %i.ly = load ptr, ptr %13, align 16, !tbaa !65  ; 2 uses
  %i.lz = load ptr, ptr %i.cu, align 8, !tbaa !64
  %.not.i.i207 = icmp eq ptr %i.lz, %i.ly
  br i1 %.not.i.i207, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i208

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i208: ; preds = %bb.ci
  store ptr %i.ly, ptr %i.cu, align 8, !tbaa !64
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit: ; preds = %bb.ci, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i208
  %i.ma = load ptr, ptr %i.dg, align 8, !tbaa !65 ; 2 uses
  %i.mb = load ptr, ptr %i.dn, align 16, !tbaa !64
  %.not.i.i209 = icmp eq ptr %i.mb, %i.ma
  br i1 %.not.i.i209, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i210

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i210: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit
  store ptr %i.ma, ptr %i.dn, align 16, !tbaa !64
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211

bb.cj:                                            ; preds = %bb.cg
  %i.mc = xor i1 %.064, true
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit211: ; preds = %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i210, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit, %bb.cj, %bb.ch, %bb.cg
  %.165 = phi i1 [ %.064, %bb.cg ], [ %.064, %bb.ch ], [ %i.mc, %bb.cj ], [ %.064, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit ], [ %.064, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i210 ]
  %.162 = phi i1 [ false, %bb.cg ], [ true, %bb.ch ], [ false, %bb.cj ], [ false, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit ], [ false, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i210 ]
  %i.md = load ptr, ptr %i.dr, align 8, !tbaa !78
  %i.me = load ptr, ptr %i.et, align 16, !tbaa !78
  store ptr %i.me, ptr %i.dr, align 8, !tbaa !78
  %i.mf = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !62
  %i.mg = load <2 x ptr>, ptr %13, align 16, !tbaa !62
  store <2 x ptr> %i.mg, ptr %i.dg, align 8, !tbaa !62
  store <2 x ptr> %i.mf, ptr %13, align 16, !tbaa !62
  store ptr %i.md, ptr %i.et, align 16, !tbaa !78
  invoke void @_ZN2cv4swapERNS_3MatES1_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.s unwind label %bb.cf

.thread:                                          ; preds = %bb.cd, %bb.u
  %i.mh = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i212 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i212, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit213, label %bb.ck

bb.ck:                                            ; preds = %.thread
  %i.mj = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !78
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mi to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mn) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit213

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit213: ; preds = %.thread, %bb.ck
  %i.mo = load ptr, ptr %13, align 16, !tbaa !65  ; 3 uses
  %.not.i.i.i212.1 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i212.1, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit213.1, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit213
  %i.mp = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.mq = load ptr, ptr %i.mp, align 16, !tbaa !78
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mo to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.mt) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit213.1

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit213.1: ; preds = %bb.cl, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit213
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.cm:                                            ; preds = %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit196, %_ZNSt6vectorIhSaIhEED2Ev.exit173, %bb.al, %bb.ak, %bb.af, %bb.ae, %bb.ad, %bb.x
  %.pn110 = phi { ptr, i32 } [ %i.lw, %bb.cf ], [ %i.lr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.pn105, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit196 ], [ %i.fn, %bb.al ], [ %i.fm, %bb.ak ], [ %.pn90.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit173 ], [ %i.fl, %bb.af ], [ %i.fk, %bb.ae ], [ %i.fj, %bb.ad ], [ %i.fh, %bb.x ]
  %i.mu = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i214 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i214, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mw = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !78
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mv to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.na) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215: ; preds = %bb.cm, %bb.cn
  %i.nb = load ptr, ptr %13, align 16, !tbaa !65  ; 3 uses
  %.not.i.i.i214.1 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i214.1, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215.1, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215
  %i.nc = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.nd = load ptr, ptr %i.nc, align 16, !tbaa !78
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nb to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.ng) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215.1

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215.1: ; preds = %bb.co, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.cp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit213.1
  %i.nh = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.au
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.nj = load i64, ptr %i.au, align 8, !tbaa !47
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN2cv12VideoCaptureD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 0

bb.cp:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %bb.l
  %.pn110.pn = phi { ptr, i32 } [ %.pn110, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit215.1 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %i.bv, %bb.l ] ; 2 uses
  %i.nl = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.au
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.cp
  %i.nn = load i64, ptr %i.au, align 8, !tbaa !47
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %.pn110.pn.pn = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %.pn110.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %.pn110.pn, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %.pn110.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.j
  %.pn110.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn, %bb.cq ], [ %i.bl, %bb.j ]
  call void @_ZN2cv12VideoCaptureD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn110.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv12VideoCaptureC1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv17CommandLineParserC1EiPKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN2cv12VideoCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv12VideoCapture8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #2

declare void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv16setMouseCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFviiiiPvES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL7onMouseiiiiPv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) #3 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %2, i64 1
  %i.d = sitofp <2 x i32> %i.c to <2 x float>
  store <2 x float> %i.d, ptr @point, align 8
  store i8 1, ptr @addRemovePt, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(25) ptr @_ZN2cv12VideoCapturersERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN2cv19goodFeaturesToTrackERKNS_11_InputArrayERKNS_12_OutputArrayEiddS2_iibd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i1 noundef zeroext, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

declare void @_ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, i64, i64, double) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2cv20calcOpticalFlowPyrLKERKNS_11_InputArrayES2_S2_RKNS_17_InputOutputArrayERKNS_12_OutputArrayES8_NS_5Size_IiEEiNS_12TermCriteriaEid(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef byval(%"class.cv::TermCriteria") align 8, i32 noundef, double noundef) local_unnamed_addr #2

end_hunk_1
