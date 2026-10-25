Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Disasm?download=true
inline.NumInlined: 4903
inline.NumDeleted: 917
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK5clang6interp11InterpFrame4dumpERN4llvm11raw_ostreamEj:bb.a
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !113
  %i.je = zext i32 %i.jd to i64
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit98, %bb.az
  %i.jf = phi i64 [ %i.je, %bb.az ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit98 ]
  %i.jg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i97, i64 noundef %i.jf) #17 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !111
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 32 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !112 ; 2 uses
  %i.jl = icmp eq ptr %i.ji, %i.jk
  br i1 %i.jl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jg, ptr noundef nonnull @.str.1, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit101

bb.bc:                                            ; preds = %bb.ba
  store i8 10, ptr %i.jk, align 1
  %i.jn = load ptr, ptr %i.jj, align 8, !tbaa !112
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  store ptr %i.jo, ptr %i.jj, align 8, !tbaa !112
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit101

_ZN4llvm11raw_ostreamlsEPKc.exit101:              ; preds = %bb.bb, %bb.bc
  %.0.in104 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0105 = load ptr, ptr %.0.in104, align 8, !tbaa !415 ; 2 uses
  %.not40106 = icmp eq ptr %.0105, null
  br i1 %.not40106, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit101
  %i.jp = add i32 %2, 1
  br label %bb.bd

._crit_edge:                                      ; preds = %bb.bd, %_ZN4llvm11raw_ostreamlsEPKc.exit101
  ret void

bb.bd:                                            ; preds = %.lr.ph, %bb.bd
  %.0107 = phi ptr [ %.0105, %.lr.ph ], [ %.0, %bb.bd ] ; 2 uses
  call void @_ZNK5clang6interp11InterpFrame4dumpERN4llvm11raw_ostreamEj(ptr noundef nonnull align 8 dereferenceable(72) %.0107, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.jp)
  %.0.in = getelementptr inbounds nuw i8, ptr %.0107, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !415 ; 2 uses
  %.not40 = icmp eq ptr %.0, null
  br i1 %.not40, label %._crit_edge, label %bb.bd, !llvm.loop !404
}

declare noundef ptr @_ZNK5clang6interp11InterpFrame9getCalleeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare void @_ZNK5clang6interp11InterpFrame8describeERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interplsERN4llvm11raw_ostreamERKNS0_7PointerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 13 uses
  %5 = alloca %"class.clang::interp::Pointer", align 8 ; 10 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 5 uses
  %7 = alloca %"class.clang::interp::Pointer", align 8 ; 7 uses
  tail call void @_ZNK5clang6interp7Pointer5printERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %.not.i = icmp ult ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !112
  store i8 32, ptr %i.b, align 1, !tbaa !105
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !446
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %_ZNK5clang6interp7Pointer6isZeroEv.exit, label %_ZN4llvm11raw_ostreamlsEPKc.exit92

_ZNK5clang6interp7Pointer6isZeroEv.exit:          ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvm11raw_ostreamlsEPKc.exit92, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i:        ; preds = %_ZNK5clang6interp7Pointer6isZeroEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !105, !noalias !447 ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !152  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !166
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit

_ZNK5clang6interp7Pointer12getFieldDescEv.exit:   ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %i.s = zext i32 %i.n to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.0.i33 = load ptr, ptr %i.u, align 8, !tbaa !448 ; 2 uses
  %.not = icmp eq ptr %.0.i33, null
  br i1 %.not, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.thread149, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, %_ZNK5clang6interp7Pointer6isRootEv.exit.i
  %.0.i33104 = phi ptr [ %.0.i33, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit ], [ %i.o, %_ZNK5clang6interp7Pointer6isRootEv.exit.i ]
  tail call void @_ZNK5clang6interp10Descriptor4dumpERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(72) %.0.i33104, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !446
  %i.v = icmp eq i32 %.pre, 1
  br i1 %i.v, label %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.thread149, label %_ZN4llvm11raw_ostreamlsEPKc.exit92

_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.thread149: ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105, !noalias !449 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !105, !noalias !449 ; 3 uses
  %i.aa = load i64, ptr %1, align 8, !tbaa !165, !noalias !449 ; 3 uses
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !152 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !166
  %i.ae = icmp eq i32 %i.z, %i.ad                 ; 4 uses
  %.pre.i.i = zext i32 %i.z to i64                ; 7 uses
  br i1 %i.ae, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.thread149
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !169
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i:     ; preds = %bb.d, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.thread149
  %.0.i.i.i.i = phi ptr [ %i.ah, %bb.d ], [ %i.ab, %_ZNK5clang6interp7Pointer12getFieldDescEv.exit.thread.thread149 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 53
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !161, !range !132, !noundef !47
  %i.ak = trunc nuw i8 %i.aj to i1
  %.not.i.i = icmp ne i64 %i.aa, %.pre.i.i        ; 4 uses
  %or.cond.not.i.i = select i1 %i.ak, i1 %.not.i.i, i1 false
  br i1 %or.cond.not.i.i, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i
  %i.al = icmp ugt i32 %i.z, 15
  br i1 %i.al, label %bb.f, label %bb.av

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %i.ao = load i16, ptr %i.an, align 4
  %i.ap = and i16 %i.ao, 256
  %.not2.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not2.i.i, label %bb.av, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i, %bb.f
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !169
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.g, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.as, %bb.g ], [ %i.ab, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !171
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread, label %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i

_ZNK5clang6interp7Pointer9isPastEndEv.exit.i:     ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !176
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp ugt i64 %i.aa, %i.ay
  br i1 %i.az, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread107, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i:   ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, label %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i

_ZNK5clang6interp7Pointer7getSizeEv.exit.i:       ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !171 ; 2 uses
  br i1 %.not.i.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit

_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i: ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i3.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !171 ; 2 uses
  br i1 %.not.i.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i
  %i.bh = phi i32 [ %i.bb, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.bg, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.i.i.i.i38 = phi ptr [ %i.ab, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.be, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i38, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !177
  %.not1.i.i.i = icmp eq ptr %i.bj, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7Pointer7getSizeEv.exit.i, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i
  %i.bk = phi i32 [ %i.bh, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.bb, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ %i.bg, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7Pointer7getSizeEv.exit.thread.i ]
  %i.bl = sub nsw i64 %i.aa, %.pre.i.i
  %i.bm = add nsw i64 %i.bl, %.0.neg.i.i.i
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp eq i32 %i.bk, %i.bn
  br i1 %i.bo, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread107, label %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread107: ; preds = %_ZNK5clang6interp7Pointer9isPastEndEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !112 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ult i64 %i.bt, 17
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread107
  %i.bv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.1986, i64 noundef 17) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.i:                                             ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bq, ptr noundef nonnull align 1 dereferenceable(17) @.str.1986, i64 17, i1 false)
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 17
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !112
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread: ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !112 ; 3 uses
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !111
  %.not.i39 = icmp ult ptr %i.by, %i.bz
  br i1 %.not.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread
  %i.ca = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit41

bb.k:                                             ; preds = %_ZNK5clang6interp7Pointer12isOnePastEndEv.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !112
  store i8 32, ptr %i.by, align 1, !tbaa !105
  br label %_ZN4llvm11raw_ostreamlsEc.exit41

_ZN4llvm11raw_ostreamlsEc.exit41:                 ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.cc, ptr %2, align 8, !tbaa !102
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !104
  store i8 0, ptr %i.cc, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ce, align 8, !tbaa !135
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.cf, align 8, !tbaa !136
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.cg, align 4, !tbaa !137
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %3, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.ci, align 8, !tbaa !139
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !446
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit49

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEc.exit41
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK5clang6interp7Pointer6expandEv.exit75
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !105, !noalias !450 ; 3 uses
  %i.cw = load i32, ptr %i.cn, align 8, !tbaa !105, !noalias !450 ; 3 uses
  %i.cx = load i64, ptr %4, align 8, !tbaa !165, !noalias !450
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !152 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !166
  %i.db = icmp eq i32 %i.cw, %i.da
  %.pre.i.i43 = zext i32 %i.cw to i64             ; 3 uses
  br i1 %i.db, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.pre.i.i43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !169
  br label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i44

_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i44:   ; preds = %bb.m, %bb.l
  %.0.i.i.i.i45 = phi ptr [ %i.de, %bb.m ], [ %i.cy, %bb.l ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i45, i64 53
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !161, !range !132, !noundef !47
  %i.dh = trunc nuw i8 %i.dg to i1
  %.not.i.i46 = icmp ne i64 %i.cx, %.pre.i.i43
  %or.cond.not.i.i47 = select i1 %i.dh, i1 %.not.i.i46, i1 false
  br i1 %or.cond.not.i.i47, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i44
  %i.di = icmp ugt i32 %i.cw, 15
  br i1 %i.di, label %bb.o, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit49

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.pre.i.i43
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dl = load i16, ptr %i.dk, align 4
  %i.dm = and i16 %i.dl, 256
  %.not2.i.i48 = icmp eq i16 %i.dm, 0
  br i1 %.not2.i.i48, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit49, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i.i44, %bb.o
  %i.dn = load ptr, ptr %i.co, align 8, !tbaa !112 ; 3 uses
  %i.do = load ptr, ptr %i.cp, align 8, !tbaa !111
  %.not.i50 = icmp ult ptr %i.dn, %i.do
  br i1 %.not.i50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 93) #17
  br label %_ZN4llvm11raw_ostreamlsEc.exit52

bb.r:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store ptr %i.dq, ptr %i.co, align 8, !tbaa !112
  store i8 93, ptr %i.dn, align 1, !tbaa !105
  br label %_ZN4llvm11raw_ostreamlsEc.exit52

_ZN4llvm11raw_ostreamlsEc.exit52:                 ; preds = %bb.q, %bb.r
  %.0.i51 = phi ptr [ %i.dp, %bb.q ], [ %3, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.dr = load i32, ptr %i.cj, align 8, !tbaa !446, !noalias !451
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit52
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  br label %_ZNK5clang6interp7Pointer6expandEv.exit

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit52
  %i.dt = load ptr, ptr %i.cm, align 8, !tbaa !105, !noalias !452 ; 6 uses
  %i.du = load i32, ptr %i.cn, align 8, !tbaa !105, !noalias !452 ; 9 uses
  %i.dv = load i64, ptr %4, align 8, !tbaa !165, !noalias !452 ; 6 uses
  %i.dw = icmp eq i64 %i.dv, 4294967295
  br i1 %i.dw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !152, !noalias !453 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !166, !noalias !453
  %i.ea = icmp eq i32 %i.du, %i.dz
  %.pre.i.i54 = zext i32 %i.du to i64             ; 2 uses
  br i1 %i.ea, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.pre.i.i54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !169, !noalias !453
  br label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i:     ; preds = %bb.v, %bb.u
  %.sink25.i = phi ptr [ %i.ed, %bb.v ], [ %i.dx, %bb.u ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sink25.i, i64 53
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !161, !range !132, !noalias !453, !noundef !47
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %.sink25.i, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !453
  %.not.i.i.i15.i = icmp eq ptr %i.ei, null
  %i.ej = select i1 %i.eg, i1 %.not.i.i.i15.i, i1 false
  %..i16.i = select i1 %i.ej, i64 8, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink25.i, i64 20
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !171, !noalias !453
  %i.em = zext i32 %i.el to i64
  %i.en = add nuw nsw i64 %i.em, %.pre.i.i54
  %i.eo = add nuw nsw i64 %i.en, %..i16.i
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i

bb.w:                                             ; preds = %bb.t
  %i.ep = zext i32 %i.du to i64
  %.not.i.i53 = icmp eq i64 %i.dv, %i.ep
  br i1 %.not.i.i53, label %bb.x, label %_ZNK5clang6interp7PtrView6expandEv.exit.i

bb.x:                                             ; preds = %bb.w
  %i.eq = load ptr, ptr %i.dt, align 8, !tbaa !152, !noalias !453 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load i32, ptr %i.er, align 8, !tbaa !166, !noalias !453 ; 2 uses
  %i.et = icmp eq i32 %i.du, %i.es
  br i1 %i.et, label %_ZNK5clang6interp7PtrView6expandEv.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !189, !noalias !453
  %i.ex = sub i32 %i.du, %i.ew                    ; 3 uses
  %i.ey = icmp eq i32 %i.ex, %i.es
  br i1 %i.ey, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = zext i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !169, !noalias !453
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fd = phi ptr [ %i.fc, %bb.z ], [ %i.eq, %bb.y ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 53
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !161, !range !132, !noalias !453, !noundef !47
  %i.fg = trunc nuw i8 %i.ff to i1
  %spec.select.i = select i1 %i.fg, i32 %i.ex, i32 %i.du
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i

_ZNK5clang6interp7PtrView6expandEv.exit.i:        ; preds = %bb.aa, %bb.x, %bb.w, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i
  %.sroa.13.0.i = phi i64 [ %i.eo, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i ], [ %i.dv, %bb.w ], [ %i.dv, %bb.aa ], [ %i.dv, %bb.x ]
  %.sroa.6.0.i = phi i32 [ %i.du, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i ], [ %i.du, %bb.w ], [ %spec.select.i, %bb.aa ], [ %i.du, %bb.x ]
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.dt, i32 noundef %.sroa.6.0.i, i64 noundef %.sroa.13.0.i) #17
  br label %_ZNK5clang6interp7Pointer6expandEv.exit

_ZNK5clang6interp7Pointer6expandEv.exit:          ; preds = %bb.s, %_ZNK5clang6interp7PtrView6expandEv.exit.i
  %i.fh = load i32, ptr %i.cq, align 8, !tbaa !446
  switch i32 %i.fh, label %bb.ac [
    i32 1, label %bb.ad
    i32 0, label %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i
    i32 2, label %bb.ab
  ]

_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i:    ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %i.fi = load i64, ptr %i.cs, align 8, !tbaa !105
  br label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i

bb.ab:                                            ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %i.fj = load ptr, ptr %i.cr, align 8, !tbaa !105
  %i.fk = ptrtoint ptr %i.fj to i64
  br label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i

bb.ac:                                            ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %i.fl = load ptr, ptr %i.cr, align 8, !tbaa !105
  %i.fm = ptrtoint ptr %i.fl to i64
  br label %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i

_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i: ; preds = %bb.ac, %bb.ab, %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i
  %.sink1.i.i = phi i64 [ %i.fm, %bb.ac ], [ %i.fk, %bb.ab ], [ %i.fi, %_ZNK5clang6interp7Pointer8elemSizeEv.exit.i.i ]
  %i.fn = load i64, ptr %5, align 8, !tbaa !165
  %i.fo = add i64 %i.fn, %.sink1.i.i
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

bb.ad:                                            ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit
  %i.fp = load ptr, ptr %i.cr, align 8, !tbaa !105, !noalias !454 ; 4 uses
  %i.fq = load i32, ptr %i.cs, align 8, !tbaa !105, !noalias !454 ; 3 uses
  %i.fr = load i64, ptr %5, align 8, !tbaa !165, !noalias !454 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fs = icmp ugt i32 %i.fq, 16
  %i.ft = zext i32 %i.fq to i64                   ; 4 uses
  %i.fu = icmp eq i64 %i.fr, %i.ft                ; 2 uses
  %or.cond.i.i56 = select i1 %i.fs, i1 %i.fu, i1 false
  br i1 %or.cond.i.i56, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !152 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !166
  %i.fy = icmp eq i32 %i.fq, %i.fx                ; 2 uses
  br i1 %i.fy, label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ft
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !169
  br label %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i

_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i:    ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i57 = phi ptr [ %i.gb, %bb.ag ], [ %i.fv, %bb.af ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i57, i64 16
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !172 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not.not.i.i, label %_ZNK5clang6interp7Pointer8getIndexEv.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i
  br i1 %i.fu, label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fy, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ft
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !169
  br label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58: ; preds = %bb.aj, %bb.ai
  %.0.i.i8.i.i = phi ptr [ %i.gg, %bb.aj ], [ %i.fv, %bb.ai ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !177
  %.not1.i.i.i59 = icmp eq ptr %i.gi, null
  %..i.i.i60 = select i1 %.not1.i.i.i59, i64 4294967288, i64 4294967280
  br label %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i

_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i:   ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58, %bb.ah
  %.0.neg.i.i.i61 = phi i64 [ %..i.i.i60, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i58 ], [ 0, %bb.ah ]
  %i.gj = sub i64 %i.fr, %i.ft
  %i.gk = add i64 %i.gj, %.0.neg.i.i.i61
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = udiv i32 %i.gl, %i.gd
  %.zext.i.i = zext i32 %i.gm to i64
  br label %_ZNK5clang6interp7Pointer8getIndexEv.exit

_ZNK5clang6interp7Pointer8getIndexEv.exit:        ; preds = %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i, %bb.ad, %bb.ae, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i
  %.0.i55 = phi i64 [ %i.fo, %_ZNK5clang6interp7Pointer24getIntegerRepresentationEv.exit.i ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ %.zext.i.i, %_ZNK5clang6interp7PtrView9getOffsetEv.exit.i.i ], [ 0, %_ZNK5clang6interp7PtrView8elemSizeEv.exit.i.i ]
  %i.gn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i51, i64 noundef %.0.i55) #17 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !112 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !111
  %.not.i62 = icmp ult ptr %i.gp, %i.gr
  br i1 %.not.i62, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.gs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.gn, i8 noundef zeroext 91) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit64

bb.al:                                            ; preds = %_ZNK5clang6interp7Pointer8getIndexEv.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  store ptr %i.gt, ptr %i.go, align 8, !tbaa !112
  store i8 91, ptr %i.gp, align 1, !tbaa !105
  br label %_ZN4llvm11raw_ostreamlsEc.exit64

_ZN4llvm11raw_ostreamlsEc.exit64:                 ; preds = %bb.ak, %bb.al
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.gu = load i32, ptr %i.cj, align 8, !tbaa !446, !noalias !455
  %i.gv = icmp eq i32 %i.gu, 1
  br i1 %i.gv, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit64
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  br label %_ZNK5clang6interp7Pointer6expandEv.exit75

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit64
  %i.gw = load ptr, ptr %i.cm, align 8, !tbaa !105, !noalias !456 ; 6 uses
  %i.gx = load i32, ptr %i.cn, align 8, !tbaa !105, !noalias !456 ; 9 uses
  %i.gy = load i64, ptr %4, align 8, !tbaa !165, !noalias !456 ; 6 uses
  %i.gz = icmp eq i64 %i.gy, 4294967295
  br i1 %i.gz, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ha = load ptr, ptr %i.gw, align 8, !tbaa !152, !noalias !457 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !166, !noalias !457
  %i.hd = icmp eq i32 %i.gx, %i.hc
  %.pre.i.i70 = zext i32 %i.gx to i64             ; 2 uses
  br i1 %i.hd, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.pre.i.i70
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !169, !noalias !457
  br label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71

_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71:   ; preds = %bb.ap, %bb.ao
  %.sink25.i72 = phi ptr [ %i.hg, %bb.ap ], [ %i.ha, %bb.ao ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sink25.i72, i64 53
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !161, !range !132, !noalias !457, !noundef !47
  %i.hj = trunc nuw i8 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %.sink25.i72, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !457
  %.not.i.i.i15.i73 = icmp eq ptr %i.hl, null
  %i.hm = select i1 %i.hj, i1 %.not.i.i.i15.i73, i1 false
  %..i16.i74 = select i1 %i.hm, i64 8, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %.sink25.i72, i64 20
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !171, !noalias !457
  %i.hp = zext i32 %i.ho to i64
  %i.hq = add nuw nsw i64 %i.hp, %.pre.i.i70
  %i.hr = add nuw nsw i64 %i.hq, %..i16.i74
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i66

bb.aq:                                            ; preds = %bb.an
  %i.hs = zext i32 %i.gx to i64
  %.not.i.i65 = icmp eq i64 %i.gy, %i.hs
  br i1 %.not.i.i65, label %bb.ar, label %_ZNK5clang6interp7PtrView6expandEv.exit.i66

bb.ar:                                            ; preds = %bb.aq
  %i.ht = load ptr, ptr %i.gw, align 8, !tbaa !152, !noalias !457 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !166, !noalias !457 ; 2 uses
  %i.hw = icmp eq i32 %i.gx, %i.hv
  br i1 %i.hw, label %_ZNK5clang6interp7PtrView6expandEv.exit.i66, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gy
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !189, !noalias !457
  %i.ia = sub i32 %i.gx, %i.hz                    ; 3 uses
  %i.ib = icmp eq i32 %i.ia, %i.hv
  br i1 %i.ib, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ic = zext i32 %i.ia to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !169, !noalias !457
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ig = phi ptr [ %i.if, %bb.at ], [ %i.ht, %bb.as ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 53
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !161, !range !132, !noalias !457, !noundef !47
  %i.ij = trunc nuw i8 %i.ii to i1
  %spec.select.i69 = select i1 %i.ij, i32 %i.ia, i32 %i.gx
  br label %_ZNK5clang6interp7PtrView6expandEv.exit.i66

_ZNK5clang6interp7PtrView6expandEv.exit.i66:      ; preds = %bb.au, %bb.ar, %bb.aq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71
  %.sroa.13.0.i67 = phi i64 [ %i.hr, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71 ], [ %i.gy, %bb.aq ], [ %i.gy, %bb.au ], [ %i.gy, %bb.ar ]
  %.sroa.6.0.i68 = phi i32 [ %i.gx, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i.i71 ], [ %i.gx, %bb.aq ], [ %spec.select.i69, %bb.au ], [ %i.gx, %bb.ar ]
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.gw, i32 noundef %.sroa.6.0.i68, i64 noundef %.sroa.13.0.i67) #17
  br label %_ZNK5clang6interp7Pointer6expandEv.exit75

_ZNK5clang6interp7Pointer6expandEv.exit75:        ; preds = %bb.am, %_ZNK5clang6interp7PtrView6expandEv.exit.i66
  %i.ik = load ptr, ptr %i.ct, align 8, !tbaa !105, !noalias !458
  %i.il = load i32, ptr %i.cu, align 8, !tbaa !105, !noalias !458 ; 2 uses
  %i.im = zext i32 %i.il to i64
  call void @_ZN5clang6interp7PointerC2EPNS0_5BlockEjm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ik, i32 noundef %i.il, i64 noundef %i.im) #17
  %i.in = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang6interp7PointeraSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %6) #17 ; 0 uses
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #17
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.io = load i32, ptr %i.cj, align 8, !tbaa !446
  %i.ip = icmp eq i32 %i.io, 1
  br i1 %i.ip, label %bb.l, label %_ZNK5clang6interp7Pointer14isArrayElementEv.exit49, !llvm.loop !440

_ZNK5clang6interp7Pointer14isArrayElementEv.exit49: ; preds = %_ZNK5clang6interp7Pointer6expandEv.exit75, %bb.o, %bb.n, %_ZN4llvm11raw_ostreamlsEc.exit41
  %i.iq = load ptr, ptr %2, align 8, !tbaa !106   ; 3 uses
  %i.ir = load i64, ptr %i.cd, align 8, !tbaa !104 ; 3 uses
  %i.is = icmp sgt i64 %i.ir, 1
  br i1 %i.is, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit49
  %i.it = getelementptr i8, ptr %i.iq, i64 %i.ir
  %.sroa.0.08.i.i = getelementptr i8, ptr %i.it, i64 -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.iw, %.lr.ph.i.i ], [ %i.iq, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.iu = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !105
  %i.iv = load i8, ptr %.sroa.0.010.i.i, align 1, !tbaa !105
  store i8 %i.iv, ptr %.sroa.05.09.i.i, align 1, !tbaa !105
  store i8 %i.iu, ptr %.sroa.0.010.i.i, align 1, !tbaa !105
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -1 ; 2 uses
  %i.ix = icmp ult ptr %i.iw, %.sroa.0.0.i.i
  br i1 %i.ix, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit, !llvm.loop !441

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre122 = load ptr, ptr %2, align 8, !tbaa !106
  %.pre123 = load i64, ptr %i.cd, align 8, !tbaa !104
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit, %_ZNK5clang6interp7Pointer14isArrayElementEv.exit49
  %i.iy = phi i64 [ %.pre123, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %i.ir, %_ZNK5clang6interp7Pointer14isArrayElementEv.exit49 ]
  %i.iz = phi ptr [ %.pre122, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %i.iq, %_ZNK5clang6interp7Pointer14isArrayElementEv.exit49 ]
  %i.ja = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.iz, i64 noundef %i.iy) #17 ; 0 uses
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.jb = load ptr, ptr %2, align 8, !tbaa !106   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.cc
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  %i.jd = load i64, ptr %i.cc, align 8, !tbaa !105
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.av:                                            ; preds = %bb.e, %bb.f
  br i1 %i.ae, label %_ZNK5clang6interp7Pointer11isArrayRootEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !169
  br label %_ZNK5clang6interp7Pointer11isArrayRootEv.exit

_ZNK5clang6interp7Pointer11isArrayRootEv.exit:    ; preds = %bb.av, %bb.aw
  %.0.i.i.i.i78 = phi ptr [ %i.jh, %bb.aw ], [ %i.ab, %bb.av ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i78, i64 53
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !161, !range !132, !noundef !47
end_hunk_0
