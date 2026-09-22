Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ItaniumDemangle?download=true
inline.NumInlined: 2019
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseNameEPNS4_9NameStateE:bb.a
_ZNK10StringView10startsWithES_.exit.i201:        ; preds = %_ZNK10StringView10startsWithES_.exit.i208, %bb.fk
  %i.qs = load i16, ptr %i.g, align 1
  %i.qt = icmp ne i16 29779, %i.qs
  %i.qu = zext i1 %i.qt to i32
  %.not9.i.i.i.i.i.i203 = icmp eq i32 %i.qu, 0
  br i1 %.not9.i.i.i.i.i.i203, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213: ; preds = %_ZNK10StringView10startsWithES_.exit.i201, %_ZNK10StringView10startsWithES_.exit.i208
  %.sink650 = phi i64 [ 3, %_ZNK10StringView10startsWithES_.exit.i208 ], [ 2, %_ZNK10StringView10startsWithES_.exit.i201 ]
  %i.qv = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink650
  store ptr %i.qv, ptr %0, align 16, !tbaa !33
  %i.qw = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnqualifiedNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef %1), !inline_history !259 ; 2 uses
  %i.qx = icmp eq ptr %i.qw, null
  br i1 %i.qx, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit, label %bb.fl

bb.fl:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 16, !tbaa !47 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !64 ; 2 uses
  %i.rc = add i64 %i.rb, -4048
  %i.rd = icmp ult i64 %i.rc, -4080
  br i1 %i.rd, label %bb.fm, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348

bb.fm:                                            ; preds = %bb.fl
  %i.re = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.fn, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199

bb.fn:                                            ; preds = %bb.fm
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199: ; preds = %bb.fm
  store ptr %i.qz, ptr %i.re, align 8, !tbaa !63
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store i64 0, ptr %i.rg, align 8, !tbaa !64
  store ptr %i.re, ptr %i.qy, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348: ; preds = %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199, %bb.fl
  %i.rh = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199 ], [ %i.rb, %bb.fl ] ; 2 uses
  %i.ri = phi ptr [ %i.re, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199 ], [ %i.qz, %bb.fl ] ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = add nsw i64 %i.rh, 32
  store i64 %i.rk, ptr %i.rj, align 8, !tbaa !64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rm = getelementptr inbounds i8, ptr %i.rl, i64 %i.rh ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  store <4 x i8> <i8 34, i8 1, i8 1, i8 1>, ptr %i.rn, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle16StdQualifiedNameE, i64 16), ptr %i.rm, align 8, !tbaa !57
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  store ptr %i.qw, ptr %i.ro, align 8, !tbaa !122
  br label %bb.fo

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit, %bb.fk, %_ZNK10StringView10startsWithES_.exit.i201
  %i.rp = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnqualifiedNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef %1), !inline_history !259 ; 2 uses
  %i.rq = icmp eq ptr %i.rp, null
  br i1 %i.rq, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit, label %bb.fo

bb.fo:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit
  %.1.i49350 = phi ptr [ %i.rm, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348 ], [ %i.rp, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit ] ; 4 uses
  %.val = load ptr, ptr %0, align 16, !tbaa !33   ; 2 uses
  %.val14 = load ptr, ptr %i.b, align 8, !tbaa !34
  %.not.i52.not = icmp eq ptr %.val14, %.val
  br i1 %.not.i52.not, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54: ; preds = %bb.fo
  %i.rr = load i8, ptr %.val, align 1, !tbaa !18
  %i.rs = icmp eq i8 %i.rr, 73
  br i1 %i.rs, label %bb.fp, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit

bb.fp:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 16, !tbaa !36 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !37
  %i.ry = icmp eq ptr %i.rv, %i.rx
  br i1 %i.ry, label %bb.fq, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

bb.fq:                                            ; preds = %bb.fp
  %i.rz = load ptr, ptr %i.rt, align 8, !tbaa !35 ; 5 uses
  %i.sa = ptrtoint ptr %i.rv to i64
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb                    ; 6 uses
  %i.sd = ashr exact i64 %i.sc, 2
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.sf = icmp eq ptr %i.rz, %i.se
  %i.sg = shl i64 %i.sc, 1                        ; 2 uses
  br i1 %i.sf, label %bb.fr, label %bb.fx

bb.fr:                                            ; preds = %bb.fq
  %i.sh = tail call noalias ptr @malloc(i64 noundef %i.sg) #21 ; 5 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.ft:                                            ; preds = %bb.fr
  %i.sj = icmp sgt i64 %i.sc, 8
  br i1 %i.sj, label %bb.fu, label %bb.fv, !prof !106

bb.fu:                                            ; preds = %bb.ft
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sh, ptr align 8 %i.rz, i64 %i.sc, i1 false)
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.fv:                                            ; preds = %bb.ft
  %i.sk = icmp eq i64 %i.sc, 8
  br i1 %i.sk, label %bb.fw, label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.fw:                                            ; preds = %bb.fv
  %i.sl = load ptr, ptr %i.rz, align 8, !tbaa !77
  store ptr %i.sl, ptr %i.sh, align 8, !tbaa !77
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i: ; preds = %bb.fw, %bb.fv, %bb.fu
  store ptr %i.sh, ptr %i.rt, align 8, !tbaa !35
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.fx:                                            ; preds = %bb.fq
  %i.sm = tail call ptr @realloc(ptr noundef %i.rz, i64 noundef %i.sg) #22 ; 3 uses
  store ptr %i.sm, ptr %i.rt, align 8, !tbaa !35
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %bb.fy, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.fy:                                            ; preds = %bb.fx
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i: ; preds = %bb.fx, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i
  %i.so = phi ptr [ %i.sm, %bb.fx ], [ %i.sh, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i ] ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sc
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sd
  store ptr %i.sq, ptr %i.rw, align 8, !tbaa !37
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit: ; preds = %bb.fp, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i
  %i.sr = phi ptr [ %i.sp, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i ], [ %i.rv, %bb.fp ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  store ptr %i.ss, ptr %i.ru, align 16, !tbaa !36
  store ptr %.1.i49350, ptr %i.sr, align 8, !tbaa !77
  %i.st = icmp ne ptr %1, null                    ; 2 uses
  %i.su = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseTemplateArgsEb(ptr noundef nonnull align 16 dereferenceable(4864) %0, i1 noundef zeroext %i.st) ; 2 uses
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit, label %bb.fz

bb.fz:                                            ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit
  br i1 %i.st, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.sw, align 1, !tbaa !98
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 16, !tbaa !47 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !64 ; 2 uses
  %i.tb = add i64 %i.ta, -4048
  %i.tc = icmp ult i64 %i.tb, -4080
  br i1 %i.tc, label %bb.gc, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit

bb.gc:                                            ; preds = %bb.gb
  %i.td = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %bb.gd, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.gd:                                            ; preds = %bb.gc
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.gc
  store ptr %i.sy, ptr %i.td, align 8, !tbaa !63
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store i64 0, ptr %i.tf, align 8, !tbaa !64
  store ptr %i.td, ptr %i.sx, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit: ; preds = %bb.gb, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.tg = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.ta, %bb.gb ] ; 2 uses
  %i.th = phi ptr [ %i.td, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.sy, %bb.gb ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = add nsw i64 %i.tg, 32
  store i64 %i.tj, ptr %i.ti, align 8, !tbaa !64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 %i.tg ; 5 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store <4 x i8> <i8 32, i8 1, i8 1, i8 1>, ptr %i.tm, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle20NameWithTemplateArgsE, i64 16), ptr %i.tl, align 8, !tbaa !57
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store ptr %.1.i49350, ptr %i.tn, align 8, !tbaa !111
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  store ptr %i.su, ptr %i.to, align 8, !tbaa !112
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit53.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit119.thread, %bb.au, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit104.thread, %bb.de, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit71.i, %bb.bk, %bb.ad, %bb.dq, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit101.thread, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit74.i, %.split.us.thread, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit.loopexit.loopexit.split.us, %bb.fo, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213, %bb.ff, %bb.ez, %bb.fa, %bb.et, %bb.eu, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit45.thread, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit48, %bb.fg, %bb.fj, %.thread571, %bb.fd, %bb.fb, %bb.fc, %bb.ex, %bb.es, %bb.er, %.split.us
  %.4 = phi ptr [ null, %bb.fg ], [ null, %bb.fa ], [ null, %.thread571 ], [ %.1.i49350, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54 ], [ null, %bb.es ], [ %i.pr, %bb.fc ], [ %i.px, %bb.fd ], [ null, %.split.us ], [ null, %bb.ez ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit45.thread ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit48 ], [ %i.qh, %bb.fj ], [ null, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ null, %bb.ff ], [ %.1268.ph, %bb.er ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit ], [ %i.tl, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit ], [ null, %bb.eu ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213 ], [ null, %.split.us.thread ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit.loopexit.loopexit.split.us ], [ %.1.i49350, %bb.fo ], [ null, %bb.fb ], [ %i.pf, %bb.ex ], [ null, %bb.et ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit74.i ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit101.thread ], [ null, %bb.dq ], [ null, %bb.ad ], [ null, %bb.bk ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit71.i ], [ null, %bb.de ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit104.thread ], [ null, %bb.au ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit119.thread ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit53.i ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE16parseTemplateArgEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) unnamed_addr #2 align 2 {
bb.a:
  %.val12 = load ptr, ptr %0, align 16, !tbaa !33 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 3 uses
  %i.b = ptrtoint ptr %.val13 to i64
  %i.c = ptrtoint ptr %.val12 to i64
  %i.d = sub i64 %i.b, %i.c
  %.not.i.not = icmp eq ptr %.val13, %.val12
  br i1 %.not.i.not, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit: ; preds = %bb.a
  %i.e = load i8, ptr %.val12, align 1, !tbaa !18
  switch i8 %i.e, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.thread [
    i8 88, label %bb.b
    i8 74, label %bb.f
    i8 76, label %bb.w
  ]

bb.b:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.val12, i64 1
  store ptr %i.f, ptr %0, align 16, !tbaa !33
  %i.g = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 16, !tbaa !33    ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not.i16 = icmp eq ptr %i.i, %i.j
  br i1 %.not.i16, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.i, align 1, !tbaa !18
  %i.l = icmp eq i8 %i.k, 69
  br i1 %i.l, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.m, ptr %0, align 16, !tbaa !33
  br label %.critedge

bb.f:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.val12, i64 1 ; 2 uses
  store ptr %i.n, ptr %0, align 16, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %i.r = load ptr, ptr %i.o, align 16, !tbaa !35
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit, %bb.f
  %i.x = phi ptr [ %i.ay, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.q, %bb.f ]
  %i.y = phi ptr [ %.pre38, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %.val13, %bb.f ]
  %i.z = phi ptr [ %.pre, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.not.i18 = icmp eq ptr %i.z, %i.y
  br i1 %.not.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = icmp eq i8 %i.aa, 69
  br i1 %i.ab, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE16parseTemplateArgEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !36  ; 3 uses
  %i.ae = load ptr, ptr %i.v, align 16, !tbaa !37
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.o, align 16, !tbaa !35 ; 5 uses
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = icmp eq ptr %i.ag, %i.w
  %i.am = shl i64 %i.aj, 1                        ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #21 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = icmp sgt i64 %i.aj, 8
  br i1 %i.ap, label %bb.o, label %bb.p, !prof !106

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.ag, i64 %i.aj, i1 false)
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.aj, 8
  br i1 %i.aq, label %bb.q, label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !77
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !77
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o
  store ptr %i.an, ptr %i.o, align 16, !tbaa !35
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.r:                                             ; preds = %bb.k
  %i.as = tail call ptr @realloc(ptr noundef %i.ag, i64 noundef %i.am) #22 ; 3 uses
  store ptr %i.as, ptr %i.o, align 16, !tbaa !35
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.s, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i: ; preds = %bb.r, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i
  %i.au = phi ptr [ %i.as, %bb.r ], [ %i.an, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aj
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ak
  store ptr %i.aw, ptr %i.v, align 16, !tbaa !37
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit: ; preds = %bb.j, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i
  %i.ax = phi ptr [ %i.av, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.p, align 8, !tbaa !36
  store ptr %i.ac, ptr %i.ax, align 8, !tbaa !77
  %.pre = load ptr, ptr %0, align 16, !tbaa !33
  %.pre38 = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %bb.g, !llvm.loop !261

bb.t:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.az, ptr %0, align 16, !tbaa !33
  %i.ba = load ptr, ptr %i.o, align 16, !tbaa !35
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.u
  %i.bc = tail call fastcc { ptr, i64 } @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE13makeNodeArrayIPPNS0_4NodeEEENS0_9NodeArrayET_SA_(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef %i.bb, ptr noundef %i.x) ; 2 uses
  %i.bd = load ptr, ptr %i.o, align 16, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.u
  store ptr %i.be, ptr %i.p, align 8, !tbaa !36
  %i.bf = extractvalue { ptr, i64 } %i.bc, 0
  %i.bg = extractvalue { ptr, i64 } %i.bc, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !47 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !64 ; 2 uses
  %i.bl = add i64 %i.bk, -4048
  %i.bm = icmp ult i64 %i.bl, -4080
  br i1 %i.bm, label %bb.u, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20TemplateArgumentPackEJRNS0_9NodeArrayEEEEPNS0_4NodeEDpOT0_.exit

bb.u:                                             ; preds = %bb.t
  %i.bn = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.v, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.u
  store ptr %i.bi, ptr %i.bn, align 8, !tbaa !63
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !64
  store ptr %i.bn, ptr %i.bh, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20TemplateArgumentPackEJRNS0_9NodeArrayEEEEPNS0_4NodeEDpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20TemplateArgumentPackEJRNS0_9NodeArrayEEEEPNS0_4NodeEDpOT0_.exit: ; preds = %bb.t, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.bq = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.bk, %bb.t ] ; 2 uses
  %i.br = phi ptr [ %i.bn, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.bi, %bb.t ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = add nsw i64 %i.bq, 32
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bq ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store <4 x i8> <i8 28, i8 1, i8 1, i8 1>, ptr %i.bw, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle20TemplateArgumentPackE, i64 16), ptr %i.bv, align 8, !tbaa !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bf, ptr %i.bx, align 8, !tbaa !88
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 %i.bg, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !52
  br label %.critedge
end_hunk_0
