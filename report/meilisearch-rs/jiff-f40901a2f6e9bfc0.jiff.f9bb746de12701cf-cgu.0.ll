Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4jiff3fmt4util23fractional_time_to_span17hcddd8f45863956c7E:bb.a
  %.sroa.11378.0.copyload = load i16, ptr %.sroa.11378.0..sroa_idx, align 8
  %.sroa.12379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 58 ; 2 uses
  %.sroa.12379.0.copyload = load i16, ptr %.sroa.12379.0..sroa_idx, align 2 ; 2 uses
  %.sroa.13380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %.sroa.13380.0.copyload = load i8, ptr %.sroa.13380.0..sroa_idx, align 4 ; 3 uses
  %.sroa.14381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19501)
  %i.dv = add nsw i64 %.sroa.077.0, -10518456961
  %or.cond.i.i174 = icmp ult i64 %i.dv, -21036913921
  br i1 %or.cond.i.i174, label %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread, label %_ZN4jiff4util1b6Bounds5check17h8da6e230eb19f992E.exit.i

_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread: ; preds = %bb.bf
  %i.dw = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 29), !noalias !2352
  %i.dx = ptrtoint ptr %i.dw to i64
  br label %bb.bj

_ZN4jiff4util1b6Bounds5check17h8da6e230eb19f992E.exit.i: ; preds = %bb.bf
  %i.dy = icmp slt i64 %.sroa.077.0, 0
  %.sroa.011.0.i = tail call i64 @llvm.abs.i64(i64 %.sroa.077.0, i1 true) ; 2 uses
  %i.dz = icmp eq i64 %.sroa.077.0, 0             ; 2 uses
  %i.ea = and i16 %.sroa.11378.0.copyload, -17
  %masksel.i175 = select i1 %i.dz, i16 0, i16 16
  %.sroa.013.0.i176 = or disjoint i16 %i.ea, %masksel.i175
  br i1 %i.dy, label %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread671, label %bb.bg

bb.bg:                                            ; preds = %_ZN4jiff4util1b6Bounds5check17h8da6e230eb19f992E.exit.i
  br i1 %i.dz, label %bb.bh, label %.thread.i.i177

bb.bh:                                            ; preds = %bb.bg
  %i.eb = icmp eq i16 %.sroa.12379.0.copyload, 0
  %i.ec = icmp eq i32 %.sroa.7374.0.copyload, 0
  %or.cond.i14.i = select i1 %i.eb, i1 %i.ec, i1 false
  %i.ed = icmp eq i32 %.sroa.8375.0.copyload, 0
  %or.cond5.i.i183 = select i1 %or.cond.i14.i, i1 %i.ed, i1 false
  %i.ee = icmp eq i32 %.sroa.9376.0.copyload, 0
  %or.cond8.i.i184 = select i1 %or.cond5.i.i183, i1 %i.ee, i1 false
  %i.ef = icmp eq i32 %.sroa.10377.0.copyload, 0
  %or.cond11.i.i185 = select i1 %or.cond8.i.i184, i1 %i.ef, i1 false
  %i.eg = icmp eq i64 %.sroa.3.0.copyload, 0
  %or.cond16.i.i186 = select i1 %or.cond11.i.i185, i1 %i.eg, i1 false
  %i.eh = icmp eq i64 %.sroa.4371.0.copyload, 0
  %or.cond19.i.i187 = select i1 %or.cond16.i.i186, i1 %i.eh, i1 false
  %i.ei = icmp eq i64 %.sroa.5372.0.copyload, 0
  %or.cond22.i.i188 = select i1 %or.cond19.i.i187, i1 %i.ei, i1 false
  %i.ej = icmp eq i64 %.sroa.6373.0.copyload, 0
  %or.cond4.i.i189 = select i1 %or.cond22.i.i188, i1 %i.ej, i1 false
  br i1 %or.cond4.i.i189, label %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread671, label %.thread.i.i177

.thread.i.i177:                                   ; preds = %bb.bh, %bb.bg
  %.sroa.026.0.in.i.i178 = icmp eq i8 %.sroa.13380.0.copyload, 0
  br i1 %.sroa.026.0.in.i.i178, label %bb.bi, label %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit

bb.bi:                                            ; preds = %.thread.i.i177
  %i.ek = icmp ne i64 %.sroa.077.0, 0
  %spec.select.i.i182 = zext i1 %i.ek to i8
  br label %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread671

_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread671: ; preds = %_ZN4jiff4util1b6Bounds5check17h8da6e230eb19f992E.exit.i, %bb.bh, %bb.bi
  %.sroa.0.1.i.i180.ph = phi i8 [ %spec.select.i.i182, %bb.bi ], [ 0, %bb.bh ], [ -1, %_ZN4jiff4util1b6Bounds5check17h8da6e230eb19f992E.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19501, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14381.0..sroa_idx, i64 3, i1 false)
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit191"

_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit: ; preds = %.thread.i.i177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19501, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14381.0..sroa_idx, i64 3, i1 false)
  %i.el = icmp eq i8 %.sroa.13380.0.copyload, 2
  br i1 %i.el, label %bb.bj, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit191", !prof !58

bb.bj:                                            ; preds = %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread, %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit
  %.sroa.0489.0670 = phi i64 [ %i.dx, %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread ], [ %.sroa.011.0.i, %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2353
  %i.em = inttoptr i64 %.sroa.0489.0670 to ptr
  store ptr %i.em, ptr %i.d, align 8, !noalias !2353
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @110, i64 noundef 34, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #45
          to label %bb.bn unwind label %bb.bk, !noalias !2354

bb.bk:                                            ; preds = %bb.bj
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  %i.eo = load ptr, ptr %i.d, align 8, !alias.scope !2356, !noalias !2353, !noundef !11 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %common.resume, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eq = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !noalias !2357
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.bm, label %common.resume

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d)
          to label %common.resume unwind label %bb.bo, !noalias !2354, !inline_history !25

bb.bn:                                            ; preds = %bb.bj
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !2354
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit191": ; preds = %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread671, %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit
  %.sroa.0.1.i.i180673 = phi i8 [ %.sroa.0.1.i.i180.ph, %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit.thread671 ], [ %.sroa.13380.0.copyload, %_ZN4jiff4span4Span11try_minutes17h41b4db5d66d48be7E.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14381.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19501, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19501)
  store i64 %.sroa.011.0.i, ptr %4, align 8
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx370, align 8
  store i64 %.sroa.4371.0.copyload, ptr %.sroa.4371.0..sroa_idx, align 8
  store i64 %.sroa.5372.0.copyload, ptr %.sroa.5372.0..sroa_idx, align 8
  store i64 %.sroa.6373.0.copyload, ptr %.sroa.6373.0..sroa_idx, align 8
  store i32 %.sroa.7374.0.copyload, ptr %.sroa.7374.0..sroa_idx, align 8
  store i32 %.sroa.8375.0.copyload, ptr %.sroa.8375.0..sroa_idx, align 4
  store i32 %.sroa.9376.0.copyload, ptr %.sroa.9376.0..sroa_idx, align 8
  store i32 %.sroa.10377.0.copyload, ptr %.sroa.10377.0..sroa_idx, align 4
  store i16 %.sroa.013.0.i176, ptr %.sroa.11378.0..sroa_idx, align 8
  store i16 %.sroa.12379.0.copyload, ptr %.sroa.12379.0..sroa_idx, align 2
  store i8 %.sroa.0.1.i.i180673, ptr %.sroa.13380.0..sroa_idx, align 4
  br label %.thread648

bb.bp:                                            ; preds = %bb.aq
  %i.et = mul nuw nsw i64 %i.ct, 60
  %i.eu = or disjoint i64 %i.cu, -631107417600
  %i.ev = add nsw i64 %i.eu, %i.et                ; 4 uses
  br i1 %i.cs, label %bb.bf, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ew = icmp sgt i32 %.sroa.41.0619, 999999999
  br i1 %i.ew, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ex = icmp slt i32 %.sroa.41.0619, -999999999
  br i1 %i.ex, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ey = add nsw i64 %i.ev, -1
  %i.ez = add nsw i32 %.sroa.41.0619, 1000000000
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %bb.bs, %bb.br
  %.sroa.010.1.i192 = phi i32 [ %i.fd, %bb.bu ], [ %i.ez, %bb.bs ], [ %.sroa.41.0619, %bb.br ] ; 6 uses
  %.sroa.0.1.i193 = phi i64 [ %i.fc, %bb.bu ], [ %i.ey, %bb.bs ], [ %i.ev, %bb.br ] ; 7 uses
  %i.fa = icmp eq i64 %.sroa.0.1.i193, 0
  %i.fb = icmp eq i32 %.sroa.010.1.i192, 0
  %or.cond.i194 = select i1 %i.fa, i1 true, i1 %i.fb
  br i1 %or.cond.i194, label %bb.bf, label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.fc = add nsw i64 %i.ev, 1
  %i.fd = add nsw i32 %.sroa.41.0619, -1000000000
  br label %bb.bt

bb.bv:                                            ; preds = %bb.bt
  %i.fe = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i193, i64 0)
  %i.ff = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i192, i32 0)
  %.not.i195 = icmp eq i64 %i.fe, %i.ff
  br i1 %.not.i195, label %bb.bf, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fg = icmp slt i64 %.sroa.0.1.i193, 0
  br i1 %i.fg, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fh = add nsw i64 %.sroa.0.1.i193, -1
  %i.fi = add nsw i32 %.sroa.010.1.i192, 1000000000
  br label %bb.bf

bb.by:                                            ; preds = %bb.bw
  %i.fj = add nsw i64 %.sroa.0.1.i193, 1
  %i.fk = add nsw i32 %.sroa.010.1.i192, -1000000000
  br label %bb.bf

bb.bz:                                            ; preds = %bb.ap
  switch i8 %1, label %.thread712 [
    i8 2, label %.thread680
    i8 0, label %bb.dm
  ]

.thread648:                                       ; preds = %bb.e, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit191", %.thread, %bb.ap
  %.sroa.0.2652 = phi i64 [ %.cast, %bb.ap ], [ %.sroa.0.3, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit191" ], [ 0, %.thread ], [ 0, %bb.e ] ; 10 uses
  %.sroa.41.2651 = phi i32 [ %i.l, %bb.ap ], [ %.sroa.41.3, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit191" ], [ 0, %.thread ], [ 0, %bb.e ] ; 12 uses
  %i.fl = icmp eq i64 %.sroa.0.2652, 0
  %i.fm = icmp eq i32 %.sroa.41.2651, 0           ; 3 uses
  %or.cond19 = and i1 %i.fl, %i.fm
  br i1 %or.cond19, label %.thread680, label %bb.ca

bb.ca:                                            ; preds = %.thread648
  %i.fn = icmp sgt i64 %.sroa.0.2652, 631107417600
  br i1 %i.fn, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fo = icmp slt i64 %.sroa.0.2652, -631107417600
  br i1 %i.fo, label %bb.cg, label %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i

bb.cc:                                            ; preds = %bb.ca
  %i.fp = add nsw i64 %.sroa.0.2652, -631107417600 ; 2 uses
  br i1 %i.fm, label %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fq = icmp sgt i32 %.sroa.41.2651, 999999999
  br i1 %i.fq, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fr = icmp slt i32 %.sroa.41.2651, -999999999 ; 2 uses
  %i.fs = add nsw i64 %.sroa.0.2652, -631107417601
  %i.ft = add nsw i32 %.sroa.41.2651, 1000000000
  %.sroa.010.1.i200 = select i1 %i.fr, i32 %i.ft, i32 %.sroa.41.2651
  %.sroa.0.1.i201 = select i1 %i.fr, i64 %i.fs, i64 %i.fp
  br label %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.fu = add nsw i64 %.sroa.0.2652, -631107417599
  %i.fv = add nsw i32 %.sroa.41.2651, -1000000000
  br label %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i

bb.cg:                                            ; preds = %bb.cb
  %i.fw = add nuw nsw i64 %.sroa.0.2652, 631107417600 ; 2 uses
  br i1 %i.fm, label %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fx = icmp sgt i32 %.sroa.41.2651, 999999999
  br i1 %i.fx, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fy = icmp slt i32 %.sroa.41.2651, -999999999
  br i1 %i.fy, label %.thread869, label %bb.cj

.thread869:                                       ; preds = %bb.ci
  %i.fz = add nuw nsw i64 %.sroa.0.2652, 631107417599
  %i.ga = add nsw i32 %.sroa.41.2651, 1000000000
  br label %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i

bb.cj:                                            ; preds = %bb.ck, %bb.ci
  %.sroa.010.1.i208 = phi i32 [ %i.ge, %bb.ck ], [ %.sroa.41.2651, %bb.ci ] ; 3 uses
  %.sroa.0.1.i209 = phi i64 [ %i.gd, %bb.ck ], [ %i.fw, %bb.ci ] ; 3 uses
  %i.gb = icmp eq i64 %.sroa.0.1.i209, 0
  %i.gc = icmp slt i32 %.sroa.010.1.i208, 1
  %or.cond840 = select i1 %i.gb, i1 true, i1 %i.gc
  br i1 %or.cond840, label %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i, label %bb.cl

bb.ck:                                            ; preds = %bb.ch
  %i.gd = add nsw i64 %.sroa.0.2652, 631107417601
  %i.ge = add nsw i32 %.sroa.41.2651, -1000000000
  br label %bb.cj

bb.cl:                                            ; preds = %bb.cj
  %i.gf = add nsw i64 %.sroa.0.1.i209, 1
  %i.gg = add nsw i32 %.sroa.010.1.i208, -1000000000
  br label %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i

_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i: ; preds = %bb.ce, %.thread869, %bb.cf, %bb.cc, %bb.cj, %bb.cg, %bb.cl, %bb.cb
  %.sroa.082.0 = phi i64 [ -631107417600, %bb.cj ], [ %.sroa.0.2652, %bb.cb ], [ -631107417600, %bb.cl ], [ -631107417600, %bb.cg ], [ 631107417600, %bb.ce ], [ 631107417600, %bb.cc ], [ -631107417600, %.thread869 ], [ 631107417600, %bb.cf ] ; 4 uses
  %.sroa.41.5 = phi i32 [ %.sroa.010.1.i208, %bb.cj ], [ %.sroa.41.2651, %bb.cb ], [ %i.gg, %bb.cl ], [ 0, %bb.cg ], [ %.sroa.010.1.i200, %bb.ce ], [ 0, %bb.cc ], [ %i.ga, %.thread869 ], [ %i.fv, %bb.cf ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.1.i209, %bb.cj ], [ 0, %bb.cb ], [ %i.gf, %bb.cl ], [ %i.fw, %bb.cg ], [ %.sroa.0.1.i201, %bb.ce ], [ %i.fp, %bb.cc ], [ %i.fz, %.thread869 ], [ %i.fu, %bb.cf ]
  %.sroa.0382.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.4384.0.copyload = load i64, ptr %.sroa.4384.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.5385.0.copyload = load i64, ptr %.sroa.5385.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.6386.0.copyload = load i64, ptr %.sroa.6386.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.7387.0.copyload = load i32, ptr %.sroa.7387.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %.sroa.8388.0.copyload = load i32, ptr %.sroa.8388.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.9389.0.copyload = load i32, ptr %.sroa.9389.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %.sroa.10390.0.copyload = load i32, ptr %.sroa.10390.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.11391.0.copyload = load i16, ptr %.sroa.11391.0..sroa_idx, align 8
  %.sroa.12392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 58 ; 2 uses
  %.sroa.12392.0.copyload = load i16, ptr %.sroa.12392.0..sroa_idx, align 2 ; 2 uses
  %.sroa.13393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %.sroa.13393.0.copyload = load i8, ptr %.sroa.13393.0..sroa_idx, align 4 ; 3 uses
  %.sroa.14394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19535)
  %i.gh = icmp slt i64 %.sroa.082.0, 0
  %.sroa.013.0.i225 = tail call i64 @llvm.abs.i64(i64 %.sroa.082.0, i1 true)
  %i.gi = icmp eq i64 %.sroa.082.0, 0             ; 2 uses
  %i.gj = and i16 %.sroa.11391.0.copyload, -9
  %masksel.i226 = select i1 %i.gi, i16 0, i16 8
  %.sroa.015.0.i227 = or disjoint i16 %i.gj, %masksel.i226
  br i1 %i.gh, label %_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit.thread708, label %bb.cm

bb.cm:                                            ; preds = %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i
  br i1 %i.gi, label %bb.cn, label %.thread.i.i228

bb.cn:                                            ; preds = %bb.cm
  %i.gk = icmp eq i16 %.sroa.12392.0.copyload, 0
  %i.gl = icmp eq i32 %.sroa.7387.0.copyload, 0
  %or.cond.i16.i = select i1 %i.gk, i1 %i.gl, i1 false
  %i.gm = icmp eq i32 %.sroa.8388.0.copyload, 0
  %or.cond5.i.i235 = select i1 %or.cond.i16.i, i1 %i.gm, i1 false
  %i.gn = icmp eq i32 %.sroa.9389.0.copyload, 0
  %or.cond8.i.i236 = select i1 %or.cond5.i.i235, i1 %i.gn, i1 false
  %i.go = icmp eq i32 %.sroa.10390.0.copyload, 0
  %or.cond11.i.i237 = select i1 %or.cond8.i.i236, i1 %i.go, i1 false
  %i.gp = icmp eq i64 %.sroa.0382.0.copyload, 0
  %or.cond16.i.i238 = select i1 %or.cond11.i.i237, i1 %i.gp, i1 false
  %i.gq = icmp eq i64 %.sroa.4384.0.copyload, 0
  %or.cond19.i.i239 = select i1 %or.cond16.i.i238, i1 %i.gq, i1 false
  %i.gr = icmp eq i64 %.sroa.5385.0.copyload, 0
  %or.cond22.i.i240 = select i1 %or.cond19.i.i239, i1 %i.gr, i1 false
  %i.gs = icmp eq i64 %.sroa.6386.0.copyload, 0
  %or.cond4.i.i241 = select i1 %or.cond22.i.i240, i1 %i.gs, i1 false
  br i1 %or.cond4.i.i241, label %_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit.thread708, label %.thread.i.i228

.thread.i.i228:                                   ; preds = %bb.cn, %bb.cm
  %.sroa.026.0.in.i.i229 = icmp eq i8 %.sroa.13393.0.copyload, 0
  br i1 %.sroa.026.0.in.i.i229, label %bb.co, label %_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit

bb.co:                                            ; preds = %.thread.i.i228
  %i.gt = icmp ne i64 %.sroa.082.0, 0
  %spec.select.i.i234 = zext i1 %i.gt to i8
  br label %_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit.thread708

_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit.thread708: ; preds = %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i, %bb.cn, %bb.co
  %.sroa.0.1.i.i231.ph = phi i8 [ %spec.select.i.i234, %bb.co ], [ 0, %bb.cn ], [ -1, %_ZN4jiff4util1b6Bounds5check17h63f6e413c3b0bd21E.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19535, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14394.0..sroa_idx, i64 3, i1 false)
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit243"

_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit: ; preds = %.thread.i.i228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19535, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14394.0..sroa_idx, i64 3, i1 false)
  %i.gu = icmp eq i8 %.sroa.13393.0.copyload, 2
  br i1 %i.gu, label %bb.cp, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit243", !prof !58

bb.cp:                                            ; preds = %_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2358
  %i.gv = inttoptr i64 %.sroa.0382.0.copyload to ptr
  store ptr %i.gv, ptr %i.c, align 8, !noalias !2358
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @112, i64 noundef 34, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #45
          to label %bb.ct unwind label %bb.cq, !noalias !2359

bb.cq:                                            ; preds = %bb.cp
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  %i.gx = load ptr, ptr %i.c, align 8, !alias.scope !2361, !noalias !2358, !noundef !11 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %common.resume, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gz = atomicrmw sub ptr %i.gx, i64 1 release, align 8, !noalias !2362
  %i.ha = icmp eq i64 %i.gz, 1
  br i1 %i.ha, label %bb.cs, label %common.resume

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %common.resume unwind label %bb.cu, !noalias !2359, !inline_history !25

bb.ct:                                            ; preds = %bb.cp
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !2359
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit243": ; preds = %_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit.thread708, %_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit
  %.sroa.0.1.i.i231710 = phi i8 [ %.sroa.0.1.i.i231.ph, %_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit.thread708 ], [ %.sroa.13393.0.copyload, %_ZN4jiff4span4Span11try_seconds17h48e2731acc17adb7E.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14394.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19535, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19535)
  store i64 %.sroa.0382.0.copyload, ptr %4, align 8
  store i64 %.sroa.013.0.i225, ptr %.sroa.4383.0..sroa_idx, align 8
  store i64 %.sroa.4384.0.copyload, ptr %.sroa.4384.0..sroa_idx, align 8
  store i64 %.sroa.5385.0.copyload, ptr %.sroa.5385.0..sroa_idx, align 8
  store i64 %.sroa.6386.0.copyload, ptr %.sroa.6386.0..sroa_idx, align 8
  store i32 %.sroa.7387.0.copyload, ptr %.sroa.7387.0..sroa_idx, align 8
  store i32 %.sroa.8388.0.copyload, ptr %.sroa.8388.0..sroa_idx, align 4
  store i32 %.sroa.9389.0.copyload, ptr %.sroa.9389.0..sroa_idx, align 8
  store i32 %.sroa.10390.0.copyload, ptr %.sroa.10390.0..sroa_idx, align 4
  store i16 %.sroa.015.0.i227, ptr %.sroa.11391.0..sroa_idx, align 8
  store i16 %.sroa.12392.0.copyload, ptr %.sroa.12392.0..sroa_idx, align 2
  store i8 %.sroa.0.1.i.i231710, ptr %.sroa.13393.0..sroa_idx, align 4
  br label %.thread680

.thread680:                                       ; preds = %bb.bz, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit243", %.thread648
  %.sroa.0.4684 = phi i64 [ %.cast, %bb.bz ], [ %.sroa.0.5, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit243" ], [ 0, %.thread648 ] ; 2 uses
  %.sroa.41.4683 = phi i32 [ %i.l, %bb.bz ], [ %.sroa.41.5, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit243" ], [ 0, %.thread648 ] ; 3 uses
  %i.hc = icmp eq i64 %.sroa.0.4684, 0
  %i.hd = icmp eq i32 %.sroa.41.4683, 0
  %or.cond22 = select i1 %i.hc, i1 %i.hd, i1 false
  br i1 %or.cond22, label %.thread712, label %bb.cv

bb.cv:                                            ; preds = %.thread680
  %i.he = sext i64 %.sroa.0.4684 to i128
  %i.hf = mul nsw i128 %i.he, 1000
  %i.hg = sdiv i32 %.sroa.41.4683, 1000000
  %i.hh = sext i32 %i.hg to i128
  %i.hi = add nsw i128 %i.hf, %i.hh               ; 5 uses
  %i.hj = srem i32 %.sroa.41.4683, 1000000        ; 3 uses
  %i.hk = icmp sgt i128 %i.hi, 631107417600000
  br i1 %i.hk, label %bb.dj, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.hl = icmp slt i128 %i.hi, -631107417600000
  %extract.t = trunc nsw i128 %i.hi to i64
  br i1 %i.hl, label %bb.cx, label %.split

bb.cx:                                            ; preds = %bb.cw
  %.nonneg836 = sub nuw nsw i128 -631107417600000, %i.hi
  %.nonneg836.frozen = freeze i128 %.nonneg836    ; 2 uses
  %i.hm = udiv i128 %.nonneg836.frozen, 1000      ; 2 uses
  %i.hn = trunc nuw nsw i128 %i.hm to i64         ; 3 uses
  %i.ho = sub nsw i64 0, %i.hn                    ; 2 uses
  %i.hp = mul i128 %i.hm, 1000
  %.decomposed = sub i128 %.nonneg836.frozen, %i.hp
  %i.hq = trunc nuw nsw i128 %.decomposed to i32
  %i.hr = mul nsw i32 %i.hq, -1000000
  %i.hs = add nsw i32 %i.hr, %i.hj                ; 4 uses
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %.split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hu = icmp eq i64 %i.hn, 0
  %.not.i247 = icmp slt i32 %i.hs, 0
  %or.cond841 = or i1 %i.hu, %.not.i247
  br i1 %or.cond841, label %.split, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hv = sub nsw i64 1, %i.hn
  %i.hw = add nuw nsw i32 %i.hs, -1000000000
  br label %.split

.split:                                           ; preds = %bb.dl, %bb.dj, %bb.dk, %bb.cz, %bb.cx, %bb.cy, %bb.cw
  %.sroa.087.0.off0 = phi i64 [ 631107417600000, %bb.dl ], [ %extract.t, %bb.cw ], [ -631107417600000, %bb.cy ], [ -631107417600000, %bb.cx ], [ -631107417600000, %bb.cz ], [ 631107417600000, %bb.dk ], [ 631107417600000, %bb.dj ] ; 5 uses
  %.sroa.41.7 = phi i32 [ %i.jf, %bb.dl ], [ %i.hj, %bb.cw ], [ %i.hs, %bb.cy ], [ 0, %bb.cx ], [ %i.hw, %bb.cz ], [ %i.jb, %bb.dk ], [ 0, %bb.dj ]
  %.sroa.0.7 = phi i64 [ %i.je, %bb.dl ], [ 0, %bb.cw ], [ %i.ho, %bb.cy ], [ %i.ho, %bb.cx ], [ %i.hv, %bb.cz ], [ %i.ix, %bb.dk ], [ %i.ix, %bb.dj ]
  %.sroa.0395.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.4396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.4396.0.copyload = load i64, ptr %.sroa.4396.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.5398.0.copyload = load i64, ptr %.sroa.5398.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.6399.0.copyload = load i64, ptr %.sroa.6399.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.7400.0.copyload = load i32, ptr %.sroa.7400.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %.sroa.8401.0.copyload = load i32, ptr %.sroa.8401.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.9402.0.copyload = load i32, ptr %.sroa.9402.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %.sroa.10403.0.copyload = load i32, ptr %.sroa.10403.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.11404.0.copyload = load i16, ptr %.sroa.11404.0..sroa_idx, align 8
  %.sroa.12405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 58 ; 2 uses
  %.sroa.12405.0.copyload = load i16, ptr %.sroa.12405.0..sroa_idx, align 2 ; 2 uses
  %.sroa.13406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %.sroa.13406.0.copyload = load i8, ptr %.sroa.13406.0..sroa_idx, align 4 ; 3 uses
end_hunk_0
