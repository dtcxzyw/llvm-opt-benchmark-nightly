Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_test?download=true
inline.NumInlined: 17618
inline.NumDeleted: 3825
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN30CordTest_ExpectedChecksum_Test8TestBodyEv:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %94, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %98, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %102, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %106, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %109, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %113, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %112, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %117, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %118, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %122, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %125, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %129, i64 8 ; 18 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %130, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %135, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %138, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %138, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %142, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %141, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %142, i64 16 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %129, i64 1 ; 14 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %76, i64 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %143, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %146, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %149, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %153, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %153, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %152, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %156, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %160, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %160, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %159, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %164, i64 1
  %i.ei = getelementptr inbounds nuw i8, ptr %164, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %163, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %168, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %168, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %167, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %171, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %175, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %174, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %175, i64 16 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %177, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %177, i64 16 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %176, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %180, i64 16 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %180, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %181, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %184, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %184, i64 24 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %184, i64 32 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %184, i64 40 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %184, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %184, i64 56 ; 9 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %184, i64 44 ; 9 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %185, i64 8 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %185, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %189, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %188, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %189, i64 16 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %190, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %190, i64 24 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %190, i64 32 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %190, i64 40 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i1793 = getelementptr inbounds nuw i8, ptr %190, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %190, i64 56 ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %190, i64 44 ; 9 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %191, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %195, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %195, i64 24 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %195, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %195, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i1148 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %195, i64 56 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %195, i64 44 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %194, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %194, i64 16 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %199, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %198, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %199, i64 16 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %201, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %201, i64 24 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %201, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %201, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i1876 = getelementptr inbounds nuw i8, ptr %201, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %201, i64 56 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %201, i64 44 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %200, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %204, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %204, i64 24 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %204, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %204, i64 40 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i1931 = getelementptr inbounds nuw i8, ptr %204, i64 8 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %204, i64 56 ; 7 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %204, i64 44 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %206, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %205, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %209, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %212, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %212, i64 24 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %212, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %212, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i2001 = getelementptr inbounds nuw i8, ptr %212, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %212, i64 56 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %212, i64 44 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %213, i64 8 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %213, i64 16 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %217, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %216, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %217, i64 16 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %218, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %221, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %65, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i1340 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %224, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i1369 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %227, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %134, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %134, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.aon
  %.0.idx3397 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.aon ] ; 2 uses
  %.0.ptr3398 = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_114cord_factoriesE, i64 %.0.idx3397 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #38
  %.0.ptr.val = load i64, ptr %.0.ptr3398, align 8, !tbaa !77
  %i.ih = getelementptr i8, ptr %.0.ptr3398, i64 8
  %.0.ptr.val505 = load ptr, ptr %i.ih, align 8, !tbaa !140
  store i64 %.0.ptr.val, ptr %72, align 8
  store ptr %.0.ptr.val505, ptr %i.as, align 8
  call void @_ZN7testing11ScopedTraceC2ISt17basic_string_viewIcSt11char_traitsIcEEEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %71, ptr noundef nonnull @.str.1, i32 noundef 3160, ptr noundef nonnull align 8 dereferenceable(16) %72)
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #38
  %i.ii = getelementptr i8, ptr %.0.ptr3398, i64 16 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit1404
  br i1 %.not262, label %bb.aon, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not262 = phi i1 [ false, %bb.b ], [ true, %bb.c ]
  %.080.idx3396.sroa.phi.sroa.speculated = phi i8 [ 0, %bb.b ], [ 1, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.d
  %230 = trunc nuw i8 %.080.idx3396.sroa.phi.sroa.speculated to i1 ; 2 uses
  %i.ij = select i1 %230, ptr @.str.38, ptr @.str.37
  %i.ik = load ptr, ptr %70, align 8, !tbaa !115
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = select i1 %230, i64 4, i64 5
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef nonnull %i.ij, i64 noundef %i.im)
          to label %_ZN7testing7MessagelsEb.exit.i unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsEb.exit.i:                   ; preds = %.noexc
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN7testing7MessagelsEb.exit.i
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %73, ptr noundef nonnull @.str.1, i32 noundef 3162, ptr noundef nonnull align 8 %69)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.io = load ptr, ptr %69, align 8, !tbaa !74   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.at
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.iq = load i64, ptr %i.at, align 8, !tbaa !78
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.is = load ptr, ptr %70, align 8, !tbaa !115  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !73
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(128) %i.is) #38, !inline_history !1876
  br label %bb.i

bb.g:                                             ; preds = %_ZN7testing7MessagelsEb.exit.i, %.noexc
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

bb.h:                                             ; preds = %bb.e
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = load ptr, ptr %69, align 8, !tbaa !74   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.at
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.h
  %i.ja = load i64, ptr %i.at, align 8, !tbaa !78
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.iw, %bb.g ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ %i.ix, %bb.h ]
  %i.jc = load ptr, ptr %70, align 8, !tbaa !115  ; 3 uses
  %.not.i.i10.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i10.i, label %_ZN7testing7MessageD2Ev.exit12.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !73
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(128) %i.jc) #38, !inline_history !1876
  br label %_ZN7testing7MessageD2Ev.exit12.i

_ZN7testing7MessageD2Ev.exit12.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #38
  br label %.body

bb.i:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #38
  %.0.ptr.val508 = load ptr, ptr %i.ii, align 8, !tbaa !2013
  invoke void %.0.ptr.val508(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %74)
          to label %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit unwind label %bb.ag, !inline_history !1877

_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #38
  store i8 %.080.idx3396.sroa.phi.sroa.speculated, ptr %75, align 8, !tbaa !2019
  %i.jg = load i8, ptr %74, align 8, !tbaa !78
  %i.jh = trunc i8 %i.jg to i1
  %i.ji = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not6.i.i = icmp ne ptr %i.ji, null
  %.not.not.i.i = select i1 %i.jh, i1 %.not6.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = atomicrmw add ptr %i.jj, i32 2 monotonic, align 4 ; 0 uses
  store ptr %i.ji, ptr %i.aw, align 8, !tbaa !78
  store i64 1, ptr %i.au, align 8, !tbaa !78
  %i.jl = load i64, ptr %74, align 8, !tbaa !78
  %.not.i.i.i514 = icmp ult i64 %i.jl, 2
  br i1 %.not.i.i.i514, label %_ZN4absl12lts_202605264CordC2ERKS1_.exit, label %bb.k, !prof !127

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %74, i32 noundef 8)
          to label %_ZN4absl12lts_202605264CordC2ERKS1_.exit unwind label %bb.ah

bb.l:                                             ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %74, i64 16, i1 false), !tbaa.struct !132
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit

_ZN4absl12lts_202605264CordC2ERKS1_.exit:         ; preds = %bb.l, %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %.0.ptr3398, i64 24, i1 false), !tbaa.struct !2020
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #38
  %.0.ptr.val507 = load ptr, ptr %i.ii, align 8, !tbaa !2013
  invoke void %.0.ptr.val507(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %76)
          to label %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit517 unwind label %bb.ai, !inline_history !1877

_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit517: ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #38
  %.0.ptr.val506 = load ptr, ptr %i.ii, align 8, !tbaa !2013
  invoke void %.0.ptr.val506(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %78)
          to label %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit519 unwind label %bb.aj, !inline_history !1877

_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit519: ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit517
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  %i.jm = load i8, ptr %78, align 8, !tbaa !78    ; 2 uses
  %i.jn = trunc i8 %i.jm to i1                    ; 3 uses
  %i.jo = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.jp = icmp ne ptr %i.jo, null
  %.not3.i = select i1 %i.jn, i1 %i.jp, i1 false
  br i1 %.not3.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit519
  %spec.select.i.i = select i1 %i.jn, ptr null, ptr %i.az
  br i1 %i.jn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !129
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.jr = sext i8 %i.jm to i64
  %i.js = lshr exact i64 %i.jr, 1
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i

_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i: ; preds = %bb.o, %bb.n
  %i.jt = phi i64 [ %i.jq, %bb.n ], [ %i.js, %bb.o ]
  %i.ju = insertvalue { i64, ptr } poison, i64 %i.jt, 0
  %i.jv = insertvalue { i64, ptr } %i.ju, ptr %spec.select.i.i, 1
  br label %bb.r

bb.p:                                             ; preds = %_ZNK12_GLOBAL__N_120PopulatedCordFactory8GenerateEv.exit519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false)
  %i.jw = invoke noundef zeroext i1 @_ZN4absl12lts_202605264Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull %i.jo, ptr noundef nonnull %68)
          to label %.noexc520 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc520:                                        ; preds = %bb.p
  br i1 %i.jw, label %._crit_edge.i, label %bb.q

._crit_edge.i:                                    ; preds = %.noexc520
  %.fca.0.load.pre.i = load i64, ptr %68, align 8
  %.fca.1.load.pre.i = load ptr, ptr %.fca.1.gep.phi.trans.insert.i, align 8
  %i.jx = insertvalue { i64, ptr } poison, i64 %.fca.0.load.pre.i, 0
  %i.jy = insertvalue { i64, ptr } %i.jx, ptr %.fca.1.load.pre.i, 1
  br label %bb.r

bb.q:                                             ; preds = %.noexc520
  %i.jz = invoke { i64, ptr } @_ZN4absl12lts_202605264Cord15FlattenSlowPathEv(ptr noundef nonnull align 8 dereferenceable(16) %78)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %._crit_edge.i, %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i, %bb.q
  %.fca.1.insert.merged.i = phi { i64, ptr } [ %i.jy, %._crit_edge.i ], [ %i.jv, %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i ], [ %i.jz, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68)
  %i.ka = extractvalue { i64, ptr } %.fca.1.insert.merged.i, 0 ; 5 uses
  %i.kb = extractvalue { i64, ptr } %.fca.1.insert.merged.i, 1 ; 3 uses
  store ptr %i.ba, ptr %77, align 8, !tbaa !75
  %i.kc = icmp eq ptr %i.kb, null
  %i.kd = icmp ne i64 %i.ka, 0
  %or.cond.i.i.i = and i1 %i.kd, %i.kc
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.556) #37
          to label %.noexc522 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc522:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 %i.ka, ptr %i.b, align 8, !tbaa !77
  %i.ke = icmp ugt i64 %i.ka, 15
  br i1 %i.ke, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.t
  %i.kf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc523 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc523:                                        ; preds = %.noexc.i.i.i
  store ptr %i.kf, ptr %77, align 8, !tbaa !74
  %i.kg = load i64, ptr %i.b, align 8, !tbaa !77
  store i64 %i.kg, ptr %i.ba, align 8, !tbaa !78
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc523, %bb.t
end_hunk_0
begin_hunk_1_@_ZN34CordTest_ChecksummedEmptyCord_Test8TestBodyEv:bb.a

bb.uv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit994, %bb.uk
  %.pn353.pn.pn.pn = phi { ptr, i32 } [ %.pn353.pn.pn, %_ZN7testing7MessageD2Ev.exit994 ], [ %i.aty, %bb.uk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #38
  br label %bb.yl

bb.uw:                                            ; preds = %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #38
  invoke void @_ZN4absl12lts_202605264Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %129, ptr noundef nonnull align 8 dereferenceable(16) %58)
          to label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit unwind label %bb.ux

_ZNK4absl12lts_202605264Cord10char_beginEv.exit:  ; preds = %bb.uw
  %i.auo = getelementptr inbounds nuw i8, ptr %129, i64 24
  %i.aup = load i64, ptr %i.auo, align 8, !tbaa !150
  %i.auq = icmp eq i64 %i.aup, 0                  ; 2 uses
  %i.aur = zext i1 %i.auq to i8
  store i8 %i.aur, ptr %128, align 8, !tbaa !110
  %i.aus = getelementptr inbounds nuw i8, ptr %128, i64 8 ; 2 uses
  store ptr null, ptr %i.aus, align 8, !tbaa !133
  %i.aut = getelementptr inbounds nuw i8, ptr %128, i64 16
  store i8 1, ptr %i.aut, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #38
  br i1 %i.auq, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1014, label %bb.uy

bb.ux:                                            ; preds = %bb.uw
  %i.auu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #38
  br label %bb.vr

bb.uy:                                            ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %130)
          to label %bb.uz unwind label %bb.vd

bb.uz:                                            ; preds = %bb.uy
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #38
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %133, ptr noundef nonnull align 8 dereferenceable(16) %128, ptr noundef nonnull @.str.524, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.va unwind label %bb.ve

bb.va:                                            ; preds = %bb.uz
  %i.auv = load ptr, ptr %133, align 8, !tbaa !74
  %i.auw = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !76
  store i64 %i.aux, ptr %132, align 8
  %i.auy = getelementptr inbounds nuw i8, ptr %132, i64 8
  store ptr %i.auv, ptr %i.auy, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %131, i32 noundef 1, i64 63, ptr nonnull @.str.1, i32 noundef 3375, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %132)
          to label %bb.vb unwind label %bb.vf

bb.vb:                                            ; preds = %bb.va
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef nonnull align 8 dereferenceable(8) %130)
          to label %bb.vc unwind label %bb.vg

bb.vc:                                            ; preds = %bb.vb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %131) #38
  %i.auz = load ptr, ptr %133, align 8, !tbaa !74 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %133, i64 16 ; 2 uses
  %i.avb = icmp eq ptr %i.auz, %i.ava
  br i1 %i.avb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1000, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i998

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i998: ; preds = %bb.vc
  %i.avc = load i64, ptr %i.ava, align 8, !tbaa !78
  %i.avd = add i64 %i.avc, 1
  call void @_ZdlPvm(ptr noundef %i.auz, i64 noundef %i.avd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1000

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1000: ; preds = %bb.vc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i998
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #38
  %i.ave = load ptr, ptr %130, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1001 = icmp eq ptr %i.ave, null
  br i1 %.not.i.i1001, label %bb.vi, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1002

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1002: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1000
  %i.avf = load ptr, ptr %i.ave, align 8, !tbaa !73
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 8
  %i.avh = load ptr, ptr %i.avg, align 8
  call void %i.avh(ptr noundef nonnull align 8 dereferenceable(128) %i.ave) #38, !inline_history !2
  br label %bb.vi

bb.vd:                                            ; preds = %bb.uy
  %i.avi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1009

bb.ve:                                            ; preds = %bb.uz
  %i.avj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006

bb.vf:                                            ; preds = %bb.va
  %i.avk = landingpad { ptr, i32 }
          cleanup
  br label %bb.vh

bb.vg:                                            ; preds = %bb.vb
  %i.avl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %131) #38
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %bb.vf
  %.pn359 = phi { ptr, i32 } [ %i.avl, %bb.vg ], [ %i.avk, %bb.vf ] ; 2 uses
  %i.avm = load ptr, ptr %133, align 8, !tbaa !74 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %133, i64 16 ; 2 uses
  %i.avo = icmp eq ptr %i.avm, %i.avn
  br i1 %i.avo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1004

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1004: ; preds = %bb.vh
  %i.avp = load i64, ptr %i.avn, align 8, !tbaa !78
  %i.avq = add i64 %i.avp, 1
  call void @_ZdlPvm(ptr noundef %i.avm, i64 noundef %i.avq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006: ; preds = %bb.vh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1004, %bb.ve
  %.pn359.pn = phi { ptr, i32 } [ %i.avj, %bb.ve ], [ %.pn359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1004 ], [ %.pn359, %bb.vh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #38
  %i.avr = load ptr, ptr %130, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1007 = icmp eq ptr %i.avr, null
  br i1 %.not.i.i1007, label %_ZN7testing7MessageD2Ev.exit1009, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1008

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1008: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006
  %i.avs = load ptr, ptr %i.avr, align 8, !tbaa !73
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 8
  %i.avu = load ptr, ptr %i.avt, align 8
  call void %i.avu(ptr noundef nonnull align 8 dereferenceable(128) %i.avr) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1009

_ZN7testing7MessageD2Ev.exit1009:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1008, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006, %bb.vd
  %.pn359.pn.pn = phi { ptr, i32 } [ %i.avi, %bb.vd ], [ %.pn359.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006 ], [ %.pn359.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1008 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #38
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %128) #38
  br label %bb.vr

bb.vi:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1002, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1000
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #38
  %.pre1233 = load ptr, ptr %i.aus, align 8, !tbaa !113 ; 4 uses
  %.not.i.i.i1010 = icmp eq ptr %.pre1233, null
  br i1 %.not.i.i.i1010, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1014, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.avv = load ptr, ptr %.pre1233, align 8, !tbaa !74 ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %.pre1233, i64 16 ; 2 uses
  %i.avx = icmp eq ptr %i.avv, %i.avw
  br i1 %i.avx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1012, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1011

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1011: ; preds = %bb.vj
  %i.avy = load i64, ptr %i.avw, align 8, !tbaa !78
  %i.avz = add i64 %i.avy, 1
  call void @_ZdlPvm(ptr noundef %i.avv, i64 noundef %i.avz) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1012

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1012: ; preds = %bb.vj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1011
  call void @_ZdlPvm(ptr noundef nonnull %.pre1233, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1014

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1014: ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit, %bb.vi, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1012
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  %i.awa = load i8, ptr %58, align 8, !tbaa !78, !noalias !2134 ; 2 uses
  %i.awb = trunc i8 %i.awa to i1                  ; 3 uses
  %i.awc = load ptr, ptr %i.aof, align 8, !noalias !2134 ; 3 uses
  %i.awd = icmp ne ptr %i.awc, null
  %.not3.i = select i1 %i.awb, i1 %i.awd, i1 false
  br i1 %.not3.i, label %bb.vn, label %bb.vk

bb.vk:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1014
  %i.awe = getelementptr inbounds nuw i8, ptr %58, i64 1
  %spec.select.i.i = select i1 %i.awb, ptr null, ptr %i.awe
  br i1 %i.awb, label %bb.vl, label %bb.vm

bb.vl:                                            ; preds = %bb.vk
  %i.awf = load i64, ptr %i.awc, align 8, !tbaa !129, !noalias !2134
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i

bb.vm:                                            ; preds = %bb.vk
  %i.awg = sext i8 %i.awa to i64
  %i.awh = lshr exact i64 %i.awg, 1
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i

_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i: ; preds = %bb.vm, %bb.vl
  %i.awi = phi i64 [ %i.awf, %bb.vl ], [ %i.awh, %bb.vm ] ; 2 uses
  store i64 %i.awi, ptr %135, align 8, !tbaa !77, !alias.scope !2134
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %135, i64 8
  store ptr %spec.select.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !140, !alias.scope !2134
  %i.awj = getelementptr inbounds nuw i8, ptr %135, i64 16
  store i8 1, ptr %i.awj, align 8, !tbaa !201, !alias.scope !2134
  br label %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit

bb.vn:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1014
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !2134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !2134
  %i.awk = invoke noundef zeroext i1 @_ZN4absl12lts_202605264Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull %i.awc, ptr noundef nonnull %3)
          to label %.noexc1015 unwind label %bb.vs

.noexc1015:                                       ; preds = %bb.vn
  br i1 %i.awk, label %bb.vo, label %bb.vp

bb.vo:                                            ; preds = %.noexc1015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %135, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !202
  br label %bb.vp

bb.vp:                                            ; preds = %bb.vo, %.noexc1015
  %.sink.i = phi i8 [ 1, %bb.vo ], [ 0, %.noexc1015 ] ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %135, i64 16
  store i8 %.sink.i, ptr %i.awl, align 8, !tbaa !201, !alias.scope !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !2134
  %.sroa.0.0.copyload.i.i.i.pre = load i64, ptr %135, align 8
  %145 = trunc nuw i8 %.sink.i to i1
  br label %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit

_ZNK4absl12lts_202605264Cord7TryFlatEv.exit:      ; preds = %bb.vp, %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.pre, %bb.vp ], [ %i.awi, %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i ]
  %i.awm = phi i1 [ %145, %bb.vp ], [ true, %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i ]
  %i.awn = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  %or.cond = select i1 %i.awm, i1 %i.awn, i1 false
  br i1 %or.cond, label %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEEA1_cENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS6_ESB_.exit.i.i, label %bb.vq

_ZSteqISt17basic_string_viewIcSt11char_traitsIcEEA1_cENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS6_ESB_.exit.i.i: ; preds = %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %134)
          to label %_ZN7testing8internal8EqHelper7CompareISt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEA1_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.vs

bb.vq:                                            ; preds = %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEA1_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %134, ptr noundef nonnull @.str.525, ptr noundef nonnull @.str.251, ptr noundef nonnull align 8 dereferenceable(24) %135, ptr noundef nonnull align 1 dereferenceable(1) @.str.57)
          to label %_ZN7testing8internal8EqHelper7CompareISt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEA1_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.vs

_ZN7testing8internal8EqHelper7CompareISt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEA1_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEEA1_cENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS6_ESB_.exit.i.i, %bb.vq
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #38
  %i.awo = load i8, ptr %134, align 8, !tbaa !110, !range !111, !noundef !112
  %i.awp = trunc nuw i8 %i.awo to i1
  br i1 %i.awp, label %bb.wc, label %bb.vt

bb.vr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1009, %bb.ux
  %.pn359.pn.pn.pn = phi { ptr, i32 } [ %.pn359.pn.pn, %_ZN7testing7MessageD2Ev.exit1009 ], [ %i.auu, %bb.ux ]
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #38
  br label %bb.yl

bb.vs:                                            ; preds = %bb.vq, %_ZSteqISt17basic_string_viewIcSt11char_traitsIcEEA1_cENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS6_ESB_.exit.i.i, %bb.vn
  %i.awq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #38
  br label %bb.wn

bb.vt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEA1_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %136)
          to label %bb.vu unwind label %bb.vy

bb.vu:                                            ; preds = %bb.vt
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #38
  %i.awr = getelementptr inbounds nuw i8, ptr %134, i64 8
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !113 ; 2 uses
  %.not.i.i1018 = icmp eq ptr %i.aws, null
  br i1 %.not.i.i1018, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1019, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1019

_ZNK7testing15AssertionResult15failure_messageEv.exit1019: ; preds = %bb.vv, %bb.vu
  %i.awu = phi ptr [ %i.awt, %bb.vv ], [ @.str.57, %bb.vu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %137, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 3377, ptr noundef %i.awu)
          to label %bb.vw unwind label %bb.vz

bb.vw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1019
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %137, ptr noundef nonnull align 8 dereferenceable(8) %136)
          to label %bb.vx unwind label %bb.wa

bb.vx:                                            ; preds = %bb.vw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %137) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #38
  %i.awv = load ptr, ptr %136, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1020 = icmp eq ptr %i.awv, null
  br i1 %.not.i.i1020, label %_ZN7testing7MessageD2Ev.exit1022, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1021

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1021: ; preds = %bb.vx
  %i.aww = load ptr, ptr %i.awv, align 8, !tbaa !73
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 8
  %i.awy = load ptr, ptr %i.awx, align 8
  call void %i.awy(ptr noundef nonnull align 8 dereferenceable(128) %i.awv) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1022

_ZN7testing7MessageD2Ev.exit1022:                 ; preds = %bb.vx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1021
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #38
  br label %bb.wc

bb.vy:                                            ; preds = %bb.vt
  %i.awz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1025

bb.vz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1019
  %i.axa = landingpad { ptr, i32 }
          cleanup
  br label %bb.wb

bb.wa:                                            ; preds = %bb.vw
  %i.axb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %137) #38
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wa, %bb.vz
  %.pn364 = phi { ptr, i32 } [ %i.axb, %bb.wa ], [ %i.axa, %bb.vz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #38
  %i.axc = load ptr, ptr %136, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1023 = icmp eq ptr %i.axc, null
  br i1 %.not.i.i1023, label %_ZN7testing7MessageD2Ev.exit1025, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1024

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1024: ; preds = %bb.wb
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !73
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  %i.axf = load ptr, ptr %i.axe, align 8
  call void %i.axf(ptr noundef nonnull align 8 dereferenceable(128) %i.axc) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1025

_ZN7testing7MessageD2Ev.exit1025:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1024, %bb.wb, %bb.vy
  %.pn364.pn = phi { ptr, i32 } [ %i.awz, %bb.vy ], [ %.pn364, %bb.wb ], [ %.pn364, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1024 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %134) #38
  br label %bb.wn

bb.wc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt8optionalISt17basic_string_viewIcSt11char_traitsIcEEEA1_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit1022
  %i.axg = getelementptr inbounds nuw i8, ptr %134, i64 8
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !113 ; 4 uses
  %.not.i.i1026 = icmp eq ptr %i.axh, null
  br i1 %.not.i.i1026, label %_ZN7testing15AssertionResultD2Ev.exit1030, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !74 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axh, i64 16 ; 2 uses
  %i.axk = icmp eq ptr %i.axi, %i.axj
  br i1 %i.axk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1027

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1027: ; preds = %bb.wd
  %i.axl = load i64, ptr %i.axj, align 8, !tbaa !78
  %i.axm = add i64 %i.axl, 1
  call void @_ZdlPvm(ptr noundef %i.axi, i64 noundef %i.axm) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028: ; preds = %bb.wd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1027
  call void @_ZdlPvm(ptr noundef nonnull %i.axh, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit1030

_ZN7testing15AssertionResultD2Ev.exit1030:        ; preds = %bb.wc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #38
  %i.axn = load i8, ptr %58, align 8, !tbaa !78, !noalias !2135 ; 2 uses
  %i.axo = trunc i8 %i.axn to i1                  ; 2 uses
  %i.axp = load ptr, ptr %i.aof, align 8, !noalias !2135 ; 3 uses
  %i.axq = icmp ne ptr %i.axp, null
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.axo, i1 %i.axq, i1 false
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.wh, label %bb.we

bb.we:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1030
  br i1 %i.axo, label %bb.wf, label %bb.wg

bb.wf:                                            ; preds = %bb.we
  %i.axr = load i64, ptr %i.axp, align 8, !tbaa !129, !noalias !2135
  br label %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

bb.wg:                                            ; preds = %bb.we
  %i.axs = getelementptr inbounds nuw i8, ptr %58, i64 1
  %i.axt = sext i8 %i.axn to i64
  %i.axu = lshr exact i64 %i.axt, 1
  br label %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

bb.wh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1030
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !2135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !2135
  %i.axv = invoke noundef zeroext i1 @_ZN4absl12lts_202605264Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull %i.axp, ptr noundef nonnull %2)
          to label %.noexc1031 unwind label %bb.wo

.noexc1031:                                       ; preds = %bb.wh
  br i1 %i.axv, label %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread11.i.i.i.i.i.i.i.i.i.i.i, label %bb.wi

_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread11.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc1031
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !77
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !2135
  br label %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread11.i.i.i.i.i.i.i.i.i.i.i, %bb.wg, %bb.wf
  %.sroa.0.110.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread11.i.i.i.i.i.i.i.i.i.i.i ], [ %i.axu, %bb.wg ], [ %i.axr, %bb.wf ]
  %.sroa.5.19.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread11.i.i.i.i.i.i.i.i.i.i.i ], [ %i.axs, %bb.wg ], [ null, %bb.wf ]
  %i.axw = invoke i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.5.19.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.110.i.i.i.i.i.i.i.i.i.i.i)
          to label %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i1035 unwind label %bb.wo

bb.wi:                                            ; preds = %.noexc1031
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !2135
  %i.axx = invoke i64 @_ZNK4absl12lts_202605264Cord14HashFragmentedINS0_13hash_internal15MixingHashStateEEET_S5_(ptr noundef nonnull align 8 dereferenceable(16) %58, i64 ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64))
          to label %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i1035 unwind label %bb.wo

_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i1035: ; preds = %bb.wi, %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.axw, %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.axx, %bb.wi ]
  store i64 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %139, i8 0, i64 16, i1 false)
  %i.axy = getelementptr inbounds nuw i8, ptr %139, i64 1
  %i.axz = invoke i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull %i.axy, i64 noundef 0)
          to label %_ZN4absl12lts_202605266HashOfITpTnRiJEJNS0_4CordEEEEmDpRKT0_.exit1046 unwind label %bb.wp ; 2 uses

_ZN4absl12lts_202605266HashOfITpTnRiJEJNS0_4CordEEEEmDpRKT0_.exit1046: ; preds = %_ZNK4absl12lts_202605264Cord7TryFlatEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i1035
  store i64 %i.axz, ptr %i.ad, align 8, !tbaa !77
  %i.aya = load i64, ptr %i.ac, align 8, !tbaa !77, !noalias !2136
  %i.ayb = icmp eq i64 %i.aya, %i.axz
  br i1 %i.ayb, label %bb.wj, label %bb.wk

bb.wj:                                            ; preds = %_ZN4absl12lts_202605266HashOfITpTnRiJEJNS0_4CordEEEEmDpRKT0_.exit1046
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %138)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.wp
end_hunk_1
