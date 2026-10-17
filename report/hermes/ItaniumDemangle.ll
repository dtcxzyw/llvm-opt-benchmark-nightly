Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ItaniumDemangle?download=true
inline.NumInlined: 2019
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseNameEPNS4_9NameStateE:bb.a
_ZNK10StringView10startsWithES_.exit.i201:        ; preds = %_ZNK10StringView10startsWithES_.exit.i208, %bb.fk
  %i.qr = load i16, ptr %i.g, align 1
  %i.qs = icmp ne i16 29779, %i.qr
  %i.qt = zext i1 %i.qs to i32
  %.not9.i.i.i.i.i.i203 = icmp eq i32 %i.qt, 0
  br i1 %.not9.i.i.i.i.i.i203, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213: ; preds = %_ZNK10StringView10startsWithES_.exit.i201, %_ZNK10StringView10startsWithES_.exit.i208
  %.sink650 = phi i64 [ 3, %_ZNK10StringView10startsWithES_.exit.i208 ], [ 2, %_ZNK10StringView10startsWithES_.exit.i201 ]
  %i.qu = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink650
  store ptr %i.qu, ptr %0, align 16, !tbaa !33
  %i.qv = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnqualifiedNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef %1), !inline_history !259 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, null
  br i1 %i.qw, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit, label %bb.fl

bb.fl:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 16, !tbaa !47 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !64 ; 2 uses
  %i.rb = add i64 %i.ra, -4048
  %i.rc = icmp ult i64 %i.rb, -4080
  br i1 %i.rc, label %bb.fm, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348

bb.fm:                                            ; preds = %bb.fl
  %i.rd = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %bb.fn, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199

bb.fn:                                            ; preds = %bb.fm
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199: ; preds = %bb.fm
  store ptr %i.qy, ptr %i.rd, align 8, !tbaa !63
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store i64 0, ptr %i.rf, align 8, !tbaa !64
  store ptr %i.rd, ptr %i.qx, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348: ; preds = %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199, %bb.fl
  %i.rg = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199 ], [ %i.ra, %bb.fl ] ; 2 uses
  %i.rh = phi ptr [ %i.rd, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i199 ], [ %i.qy, %bb.fl ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = add nsw i64 %i.rg, 32
  store i64 %i.rj, ptr %i.ri, align 8, !tbaa !64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rl = getelementptr inbounds i8, ptr %i.rk, i64 %i.rg ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store <4 x i8> <i8 34, i8 1, i8 1, i8 1>, ptr %i.rm, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle16StdQualifiedNameE, i64 16), ptr %i.rl, align 8, !tbaa !57
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store ptr %i.qv, ptr %i.rn, align 8, !tbaa !122
  br label %bb.fo

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit, %bb.fk, %_ZNK10StringView10startsWithES_.exit.i201
  %i.ro = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnqualifiedNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef %1), !inline_history !259 ; 2 uses
  %i.rp = icmp eq ptr %i.ro, null
  br i1 %i.rp, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit, label %bb.fo

bb.fo:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit
  %.1.i49350 = phi ptr [ %i.rl, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit.thread348 ], [ %i.ro, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit ] ; 4 uses
  %.val = load ptr, ptr %0, align 16, !tbaa !33   ; 2 uses
  %.val14 = load ptr, ptr %i.b, align 8, !tbaa !34
  %.not.i52.not = icmp eq ptr %.val14, %.val
  br i1 %.not.i52.not, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54: ; preds = %bb.fo
  %i.rq = load i8, ptr %.val, align 1, !tbaa !18
  %i.rr = icmp eq i8 %i.rq, 73
  br i1 %i.rr, label %bb.fp, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit

bb.fp:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 16, !tbaa !36 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !37
  %i.rx = icmp eq ptr %i.ru, %i.rw
  br i1 %i.rx, label %bb.fq, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

bb.fq:                                            ; preds = %bb.fp
  %i.ry = load ptr, ptr %i.rs, align 8, !tbaa !35 ; 5 uses
  %i.rz = ptrtoint ptr %i.ru to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa                    ; 6 uses
  %i.sc = ashr exact i64 %i.sb, 2
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.se = icmp eq ptr %i.ry, %i.sd
  %i.sf = shl i64 %i.sb, 1                        ; 2 uses
  br i1 %i.se, label %bb.fr, label %bb.fx

bb.fr:                                            ; preds = %bb.fq
  %i.sg = tail call noalias ptr @malloc(i64 noundef %i.sf) #21 ; 5 uses
  %i.sh = icmp eq ptr %i.sg, null
  br i1 %i.sh, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.ft:                                            ; preds = %bb.fr
  %i.si = icmp sgt i64 %i.sb, 8
  br i1 %i.si, label %bb.fu, label %bb.fv, !prof !106

bb.fu:                                            ; preds = %bb.ft
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sg, ptr align 8 %i.ry, i64 %i.sb, i1 false)
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.fv:                                            ; preds = %bb.ft
  %i.sj = icmp eq i64 %i.sb, 8
  br i1 %i.sj, label %bb.fw, label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.fw:                                            ; preds = %bb.fv
  %i.sk = load ptr, ptr %i.ry, align 8, !tbaa !77
  store ptr %i.sk, ptr %i.sg, align 8, !tbaa !77
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i: ; preds = %bb.fw, %bb.fv, %bb.fu
  store ptr %i.sg, ptr %i.rs, align 8, !tbaa !35
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.fx:                                            ; preds = %bb.fq
  %i.sl = tail call ptr @realloc(ptr noundef %i.ry, i64 noundef %i.sf) #22 ; 3 uses
  store ptr %i.sl, ptr %i.rs, align 8, !tbaa !35
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %bb.fy, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.fy:                                            ; preds = %bb.fx
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i: ; preds = %bb.fx, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i
  %i.sn = phi ptr [ %i.sl, %bb.fx ], [ %i.sg, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.sb
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sc
  store ptr %i.sp, ptr %i.rv, align 8, !tbaa !37
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit: ; preds = %bb.fp, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i
  %i.sq = phi ptr [ %i.so, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i ], [ %i.ru, %bb.fp ] ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store ptr %i.sr, ptr %i.rt, align 16, !tbaa !36
  store ptr %.1.i49350, ptr %i.sq, align 8, !tbaa !77
  %i.ss = icmp ne ptr %1, null                    ; 2 uses
  %i.st = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseTemplateArgsEb(ptr noundef nonnull align 16 dereferenceable(4864) %0, i1 noundef zeroext %i.ss) ; 2 uses
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit, label %bb.fz

bb.fz:                                            ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit
  br i1 %i.ss, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.sv, align 1, !tbaa !98
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 16, !tbaa !47 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !64 ; 2 uses
  %i.ta = add i64 %i.sz, -4048
  %i.tb = icmp ult i64 %i.ta, -4080
  br i1 %i.tb, label %bb.gc, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit

bb.gc:                                            ; preds = %bb.gb
  %i.tc = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %bb.gd, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.gd:                                            ; preds = %bb.gc
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.gc
  store ptr %i.sx, ptr %i.tc, align 8, !tbaa !63
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store i64 0, ptr %i.te, align 8, !tbaa !64
  store ptr %i.tc, ptr %i.sw, align 16, !tbaa !47
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit: ; preds = %bb.gb, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.tf = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.sz, %bb.gb ] ; 2 uses
  %i.tg = phi ptr [ %i.tc, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.sx, %bb.gb ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = add nsw i64 %i.tf, 32
  store i64 %i.ti, ptr %i.th, align 8, !tbaa !64
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.tk = getelementptr inbounds i8, ptr %i.tj, i64 %i.tf ; 5 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  store <4 x i8> <i8 32, i8 1, i8 1, i8 1>, ptr %i.tl, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle20NameWithTemplateArgsE, i64 16), ptr %i.tk, align 8, !tbaa !57
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store ptr %.1.i49350, ptr %i.tm, align 8, !tbaa !111
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  store ptr %i.st, ptr %i.tn, align 8, !tbaa !112
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit53.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit119.thread, %bb.au, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit104.thread, %bb.de, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit71.i, %bb.bk, %bb.ad, %bb.dq, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit101.thread, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit74.i, %.split.us.thread, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit.loopexit.loopexit.split.us, %bb.fo, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213, %bb.ff, %bb.ez, %bb.fa, %bb.et, %bb.eu, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit45.thread, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit48, %bb.fg, %bb.fj, %.thread571, %bb.fd, %bb.fb, %bb.fc, %bb.ex, %bb.es, %bb.er, %.split.us
  %.4 = phi ptr [ null, %bb.fg ], [ null, %bb.fa ], [ null, %.thread571 ], [ %.1.i49350, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit54 ], [ null, %bb.es ], [ %i.pq, %bb.fc ], [ %i.pw, %bb.fd ], [ null, %.split.us ], [ null, %bb.ez ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit45.thread ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit48 ], [ %i.qg, %bb.fj ], [ null, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ null, %bb.ff ], [ %.1268.ph, %bb.er ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseUnscopedNameEPNS4_9NameStateE.exit ], [ %i.tk, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeES9_EEES8_DpOT0_.exit ], [ null, %bb.eu ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit213 ], [ null, %.split.us.thread ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE15parseNestedNameEPNS4_9NameStateE.exit.loopexit.loopexit.split.us ], [ %.1.i49350, %bb.fo ], [ null, %bb.fb ], [ %i.pe, %bb.ex ], [ null, %bb.et ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit74.i ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit101.thread ], [ null, %bb.dq ], [ null, %bb.ad ], [ null, %bb.bk ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit71.i ], [ null, %bb.de ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit104.thread ], [ null, %bb.au ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit119.thread ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit53.i ]
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
