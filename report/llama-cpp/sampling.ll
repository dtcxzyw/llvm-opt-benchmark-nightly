Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/sampling?download=true
inline.NumInlined: 2328
inline.NumDeleted: 1054
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@"_ZZ31common_sampler_types_from_namesRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_0clB5cxx11Ev":._crit_edge.i.i.i
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !86
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.1
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !85 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.1
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !86
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.2
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !85 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.2
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !86
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.3

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.3
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !85 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.4: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.3
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !86
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.4

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.4: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.4
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !85 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.5: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.4
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !86
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.5

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.5: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.5
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !85 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.6: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.5
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !86
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.6

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.6: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.6
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !85 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.7: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.6
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !86
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.7

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.7: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.7
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !85 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.8: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.7
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !86
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.8

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.8: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.8
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !85 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.9: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.8
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !86
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.9

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.9: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.9
  %i.gu = load ptr, ptr %1, align 8, !tbaa !85    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.10: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.9
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !86
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #31
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.10

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.10: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE19common_sampler_typeED2Ev.exit143.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141.10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.at

bb.b:                                             ; preds = %.lr.ph, %bb.ag
  %.sroa.014.069 = phi ptr [ %i.dv, %.lr.ph ], [ %i.pj, %bb.ag ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.014.069, i64 8 ; 3 uses
  %i.ha = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, i8 noundef signext 95, i64 noundef 0) #28
  %i.hb = icmp eq i64 %i.ha, -1
  br i1 %i.hb, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.dw, ptr %5, align 8, !tbaa !83
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !85 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.014.069, i64 16 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !87 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.he, ptr %i.d, align 8, !tbaa !84
  %i.hf = icmp ugt i64 %i.he, 15
  br i1 %i.hf, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.hg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc147 unwind label %bb.ah ; 2 uses

.noexc147:                                        ; preds = %.noexc.i
  store ptr %i.hg, ptr %5, align 8, !tbaa !85
  %i.hh = load i64, ptr %i.d, align 8, !tbaa !84
  store i64 %i.hh, ptr %i.dw, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc147, %bb.c
  %i.hi = phi ptr [ %i.hg, %.noexc147 ], [ %i.dw, %bb.c ] ; 2 uses
  switch i64 %i.he, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.hj = load i8, ptr %i.hc, align 1, !tbaa !86
  store i8 %i.hj, ptr %i.hi, align 1, !tbaa !86
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hi, ptr align 1 %i.hc, i64 %i.he, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.hk = load i64, ptr %i.d, align 8, !tbaa !84  ; 2 uses
  store i64 %i.hk, ptr %i.dx, align 8, !tbaa !87
  %i.hl = load ptr, ptr %5, align 8, !tbaa !85
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hk
  store i8 0, ptr %i.hm, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.hn = load ptr, ptr %5, align 8, !tbaa !85    ; 44 uses
  %i.ho = load i64, ptr %i.dx, align 8, !tbaa !87 ; 9 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho
  %.not6.i = icmp samesign eq i64 %i.ho, 0
  br i1 %.not6.i, label %._crit_edge.i.i.i148.thread, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.ho, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check168 = icmp ult i64 %i.ho, 32
  br i1 %min.iters.check168, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hq = and i64 %i.ho, 24
  %n.vec = and i64 %i.ho, -32                     ; 4 uses
  %i.hr = getelementptr i8, ptr %i.hn, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue262
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue262 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.hn, i64 %index ; 3 uses
  %i.hs = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep169 = getelementptr i8, ptr %i.hs, i64 1
  %i.ht = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep170 = getelementptr i8, ptr %i.ht, i64 2
  %i.hu = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep171 = getelementptr i8, ptr %i.hu, i64 3
  %i.hv = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep172 = getelementptr i8, ptr %i.hv, i64 4
  %i.hw = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep173 = getelementptr i8, ptr %i.hw, i64 5
  %i.hx = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep174 = getelementptr i8, ptr %i.hx, i64 6
  %i.hy = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep175 = getelementptr i8, ptr %i.hy, i64 7
  %i.hz = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep176 = getelementptr i8, ptr %i.hz, i64 8
  %i.ia = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep177 = getelementptr i8, ptr %i.ia, i64 9
  %i.ib = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep178 = getelementptr i8, ptr %i.ib, i64 10
  %i.ic = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep179 = getelementptr i8, ptr %i.ic, i64 11
  %i.id = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep180 = getelementptr i8, ptr %i.id, i64 12
  %i.ie = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep181 = getelementptr i8, ptr %i.ie, i64 13
  %i.if = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep182 = getelementptr i8, ptr %i.if, i64 14
  %i.ig = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep183 = getelementptr i8, ptr %i.ig, i64 15
  %i.ih = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep184 = getelementptr i8, ptr %i.ih, i64 16
  %i.ii = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep185 = getelementptr i8, ptr %i.ii, i64 17
  %i.ij = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep186 = getelementptr i8, ptr %i.ij, i64 18
  %i.ik = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep187 = getelementptr i8, ptr %i.ik, i64 19
  %i.il = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep188 = getelementptr i8, ptr %i.il, i64 20
  %i.im = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep189 = getelementptr i8, ptr %i.im, i64 21
  %i.in = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep190 = getelementptr i8, ptr %i.in, i64 22
  %i.io = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep191 = getelementptr i8, ptr %i.io, i64 23
  %i.ip = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep192 = getelementptr i8, ptr %i.ip, i64 24
  %i.iq = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep193 = getelementptr i8, ptr %i.iq, i64 25
  %i.ir = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep194 = getelementptr i8, ptr %i.ir, i64 26
  %i.is = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep195 = getelementptr i8, ptr %i.is, i64 27
  %i.it = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep196 = getelementptr i8, ptr %i.it, i64 28
  %i.iu = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep197 = getelementptr i8, ptr %i.iu, i64 29
  %i.iv = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep198 = getelementptr i8, ptr %i.iv, i64 30
  %i.iw = getelementptr i8, ptr %i.hn, i64 %index
  %next.gep199 = getelementptr i8, ptr %i.iw, i64 31
  %i.ix = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !86
  %wide.load200 = load <16 x i8>, ptr %i.ix, align 1, !tbaa !86
  %i.iy = icmp eq <16 x i8> %wide.load, splat (i8 95) ; 16 uses
  %i.iz = icmp eq <16 x i8> %wide.load200, splat (i8 95) ; 16 uses
  %i.ja = extractelement <16 x i1> %i.iy, i64 0
  br i1 %i.ja, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 45, ptr %next.gep, align 1, !tbaa !86
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.jb = extractelement <16 x i1> %i.iy, i64 1
  br i1 %i.jb, label %pred.store.if201, label %pred.store.continue202

pred.store.if201:                                 ; preds = %pred.store.continue
  store i8 45, ptr %next.gep169, align 1, !tbaa !86
  br label %pred.store.continue202

pred.store.continue202:                           ; preds = %pred.store.if201, %pred.store.continue
  %i.jc = extractelement <16 x i1> %i.iy, i64 2
  br i1 %i.jc, label %pred.store.if203, label %pred.store.continue204

pred.store.if203:                                 ; preds = %pred.store.continue202
  store i8 45, ptr %next.gep170, align 1, !tbaa !86
  br label %pred.store.continue204

pred.store.continue204:                           ; preds = %pred.store.if203, %pred.store.continue202
  %i.jd = extractelement <16 x i1> %i.iy, i64 3
  br i1 %i.jd, label %pred.store.if205, label %pred.store.continue206

pred.store.if205:                                 ; preds = %pred.store.continue204
  store i8 45, ptr %next.gep171, align 1, !tbaa !86
  br label %pred.store.continue206

pred.store.continue206:                           ; preds = %pred.store.if205, %pred.store.continue204
  %i.je = extractelement <16 x i1> %i.iy, i64 4
  br i1 %i.je, label %pred.store.if207, label %pred.store.continue208

pred.store.if207:                                 ; preds = %pred.store.continue206
  store i8 45, ptr %next.gep172, align 1, !tbaa !86
  br label %pred.store.continue208

pred.store.continue208:                           ; preds = %pred.store.if207, %pred.store.continue206
  %i.jf = extractelement <16 x i1> %i.iy, i64 5
  br i1 %i.jf, label %pred.store.if209, label %pred.store.continue210

pred.store.if209:                                 ; preds = %pred.store.continue208
  store i8 45, ptr %next.gep173, align 1, !tbaa !86
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue208
  %i.jg = extractelement <16 x i1> %i.iy, i64 6
  br i1 %i.jg, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  store i8 45, ptr %next.gep174, align 1, !tbaa !86
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.jh = extractelement <16 x i1> %i.iy, i64 7
  br i1 %i.jh, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  store i8 45, ptr %next.gep175, align 1, !tbaa !86
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.ji = extractelement <16 x i1> %i.iy, i64 8
  br i1 %i.ji, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  store i8 45, ptr %next.gep176, align 1, !tbaa !86
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.jj = extractelement <16 x i1> %i.iy, i64 9
  br i1 %i.jj, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  store i8 45, ptr %next.gep177, align 1, !tbaa !86
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %i.jk = extractelement <16 x i1> %i.iy, i64 10
  br i1 %i.jk, label %pred.store.if219, label %pred.store.continue220

pred.store.if219:                                 ; preds = %pred.store.continue218
  store i8 45, ptr %next.gep178, align 1, !tbaa !86
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %i.jl = extractelement <16 x i1> %i.iy, i64 11
  br i1 %i.jl, label %pred.store.if221, label %pred.store.continue222

pred.store.if221:                                 ; preds = %pred.store.continue220
  store i8 45, ptr %next.gep179, align 1, !tbaa !86
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue220
  %i.jm = extractelement <16 x i1> %i.iy, i64 12
  br i1 %i.jm, label %pred.store.if223, label %pred.store.continue224

pred.store.if223:                                 ; preds = %pred.store.continue222
  store i8 45, ptr %next.gep180, align 1, !tbaa !86
  br label %pred.store.continue224

pred.store.continue224:                           ; preds = %pred.store.if223, %pred.store.continue222
  %i.jn = extractelement <16 x i1> %i.iy, i64 13
  br i1 %i.jn, label %pred.store.if225, label %pred.store.continue226

pred.store.if225:                                 ; preds = %pred.store.continue224
  store i8 45, ptr %next.gep181, align 1, !tbaa !86
  br label %pred.store.continue226

pred.store.continue226:                           ; preds = %pred.store.if225, %pred.store.continue224
  %i.jo = extractelement <16 x i1> %i.iy, i64 14
  br i1 %i.jo, label %pred.store.if227, label %pred.store.continue228

pred.store.if227:                                 ; preds = %pred.store.continue226
  store i8 45, ptr %next.gep182, align 1, !tbaa !86
  br label %pred.store.continue228

pred.store.continue228:                           ; preds = %pred.store.if227, %pred.store.continue226
  %i.jp = extractelement <16 x i1> %i.iy, i64 15
  br i1 %i.jp, label %pred.store.if229, label %pred.store.continue230

pred.store.if229:                                 ; preds = %pred.store.continue228
  store i8 45, ptr %next.gep183, align 1, !tbaa !86
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.if229, %pred.store.continue228
  %i.jq = extractelement <16 x i1> %i.iz, i64 0
  br i1 %i.jq, label %pred.store.if231, label %pred.store.continue232

end_hunk_0
