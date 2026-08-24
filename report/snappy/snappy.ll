Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_:bb.a
bb.t:                                             ; preds = %bb.s, %bb.q
  %.8 = phi ptr [ %i.do, %bb.s ], [ %i.dl, %bb.q ] ; 2 uses
  %i.dv = load i8, ptr %.8, align 1, !tbaa !9
  %i.dw = zext i8 %i.dv to i32
  br label %.backedge

bb.u:                                             ; preds = %bb.j
  %.0.copyload.i132 = load i32, ptr %i.ba, align 1
  %i.dx = zext i32 %.0.copyload.i132 to i64
  %i.dy = lshr i32 %i.bb, 2
  %i.dz = add nuw nsw i32 %i.dy, 1
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.dx, i64 noundef %i.ea, ptr noundef nonnull %i.a)
  br i1 %i.eb, label %bb.ab, label %.thread178

bb.v:                                             ; preds = %bb.j
  %i.ec = zext nneg i32 %i.bb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !23 ; 2 uses
  %i.ef = sext i16 %i.ee to i64
  %.0.copyload.i133 = load i32, ptr %i.ba, align 1 ; 2 uses
  %i.eg = shl nuw nsw i32 %i.bc, 3                ; 2 uses
  %i.eh = shl nsw i32 -1, %i.eg
  %i.ei = xor i32 %i.eh, -1
  %i.ej = and i32 %.0.copyload.i133, %i.ei
  %i.ek = and i16 %i.ee, 255
  %i.el = zext nneg i16 %i.ek to i64              ; 5 uses
  %i.em = sub nsw i64 %i.el, %i.ef
  %.tr = trunc nsw i64 %i.em to i32
  %.narrow = add nsw i32 %i.ej, %.tr              ; 2 uses
  %i.en = zext i32 %.narrow to i64                ; 5 uses
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !148 ; 9 uses
  %i.ep = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = icmp ult i64 %i.es, %i.en               ; 2 uses
  %i.eu = load ptr, ptr %i.y, align 8
  %.not.i134 = icmp uge ptr %i.eo, %i.eu
  %or.cond.not.i = select i1 %i.et, i1 true, i1 %.not.i134, !prof !190
  %i.ev = icmp samesign ult i64 %i.en, %i.el
  %i.ew = or i1 %i.ev, %or.cond.not.i
  br i1 %i.ew, label %bb.w, label %bb.z, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.ex = icmp eq i32 %.narrow, 0
  br i1 %i.ex, label %.thread178, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.el ; 3 uses
  %i.ez = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.fa = icmp ugt ptr %i.ey, %i.ez
  %or.cond35.i = select i1 %i.et, i1 true, i1 %i.fa, !prof !190
  br i1 %or.cond35.i, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, label %bb.y, !prof !190

bb.y:                                             ; preds = %bb.x
  %i.fb = sub nsw i64 0, %i.en
  %i.fc = getelementptr inbounds i8, ptr %i.eo, i64 %i.fb
  %i.fd = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.fc, ptr noundef %i.eo, ptr noundef %i.ey, ptr noundef %i.ez) ; 0 uses
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

bb.z:                                             ; preds = %bb.v
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.el
  %i.ff = sub nsw i64 0, %i.en
  %i.fg = getelementptr inbounds i8, ptr %i.eo, i64 %i.ff
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.eo, ptr noundef nonnull align 1 dereferenceable(64) %i.fg, i64 64, i1 false)
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168: ; preds = %bb.z, %bb.y
  %.sink.i.ph = phi ptr [ %i.ey, %bb.y ], [ %i.fe, %bb.z ]
  store ptr %.sink.i.ph, ptr %i.a, align 8, !tbaa !148
  br label %bb.aa

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit: ; preds = %bb.x
  store ptr %i.eo, ptr %i.m, align 8, !tbaa !134
  %i.fh = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.en, i64 noundef %i.el)
  %i.fi = load ptr, ptr %i.m, align 8, !tbaa !134
  store ptr %i.fi, ptr %i.a, align 8, !tbaa !148
  br i1 %i.fh, label %bb.aa, label %.thread178

bb.aa:                                            ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168
  %i.fj = zext nneg i32 %i.bc to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.fj ; 3 uses
  %i.fl = lshr i32 %.0.copyload.i133, %i.eg
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !147
  %.not182 = icmp ult ptr %i.fk, %i.fm
  br i1 %.not182, label %.backedge, label %.thread, !prof !153

bb.ab:                                            ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 3 uses
  %.pre197 = load ptr, ptr %i.l, align 8, !tbaa !147
  %i.fo = icmp ult ptr %i.fn, %.pre197
  br i1 %i.fo, label %bb.ad, label %.thread, !prof !154

.thread:                                          ; preds = %bb.aa, %bb.ab
  %.12226 = phi ptr [ %i.fn, %bb.ab ], [ %i.fk, %bb.aa ]
  store ptr %.12226, ptr %i.c, align 8, !tbaa !49
  %i.fp = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.fp, label %bb.ac, label %.thread178, !prof !22

bb.ac:                                            ; preds = %.thread
  %i.fq = load ptr, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.fr = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %.sroa.speculated.i136 = call i64 @llvm.smin.i64(i64 %i.fu, i64 4)
  %i.fv = sub i64 0, %.sroa.speculated.i136
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 %i.fv
  store ptr %i.fw, ptr %i.l, align 8, !tbaa !147
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.13 = phi ptr [ %i.fq, %bb.ac ], [ %i.fn, %bb.ab ] ; 2 uses
  %i.fx = load i8, ptr %.13, align 1, !tbaa !9
  %i.fy = zext i8 %i.fx to i32
  br label %.backedge

.thread178:                                       ; preds = %bb.u, %bb.r, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130, %bb.w, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %.thread, %bb.g, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %.thread163, %bb.b
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !148
  store ptr %i.fz, ptr %i.m, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !148    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %1                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp uge ptr %i.a, %i.i
  %or.cond.not = select i1 %i.g, i1 true, i1 %.not, !prof !190
  %i.j = icmp ult i64 %1, %2
  %i.k = or i1 %i.j, %or.cond.not
  br i1 %i.k, label %bb.b, label %bb.e, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %or.cond35 = select i1 %i.g, i1 true, i1 %i.p, !prof !190
  br i1 %or.cond35, label %.critedge, label %bb.d, !prof !190

.critedge:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.a, ptr %i.q, align 8, !tbaa !134
  %i.r = tail call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2)
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !134
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.t = sub i64 0, %1
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = tail call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.u, ptr noundef %i.a, ptr noundef %i.m, ptr noundef %i.o) ; 0 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.x = sub i64 0, %1
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %i.y, i64 64, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.d, %bb.e
  %.sink = phi ptr [ %i.w, %bb.e ], [ %i.m, %bb.d ], [ %i.s, %.critedge ]
  %.0.ph = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ %i.r, %.critedge ]
  store ptr %.sink, ptr %3, align 8, !tbaa !148
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not = icmp ugt i64 %2, %i.g
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.035 = phi i64 [ %i.g, %.lr.ph ], [ %.sroa.speculated20, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.01434 = phi i64 [ %2, %.lr.ph ], [ %i.x, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ]
  %.01533 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %.01533, i64 %.035, i1 false)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.035 ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !134
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i64, ptr %i.i, align 8, !tbaa !135
  %i.w = add i64 %i.u, %i.v                       ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !135
  %i.x = sub nuw i64 %.01434, %.035               ; 4 uses
  %i.y = add i64 %i.w, %i.x
  %i.z = load i64, ptr %i.j, align 8, !tbaa !124  ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.01533, i64 %.035 ; 2 uses
  %i.ac = sub i64 %i.z, %i.w                      ; 2 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 65536) ; 4 uses
  %i.ad = trunc nuw nsw i64 %.sroa.speculated20 to i32
  %i.ae = tail call noundef ptr @_ZN6snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ad) ; 4 uses
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !133
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !134
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.speculated20 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !195
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 63)
  %i.ag = sub nsw i64 0, %.sroa.speculated
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !194
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !198 ; 4 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !199
  %.not.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !148
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !198
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !142 ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.f, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #21 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %3 = load ptr, ptr %i.h, align 8, !tbaa !148
  store ptr %3, ptr %i.ax, align 8, !tbaa !148
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.g, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #22
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !142
  store ptr %i.az, ptr %i.m, align 8, !tbaa !198
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !199
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %.not38 = icmp ugt i64 %i.x, %.sroa.speculated20
  br i1 %.not38, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !200

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !134
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bb = phi ptr [ %i.d, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.015.lcssa = phi ptr [ %1, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  %.014.lcssa = phi i64 [ %2, %bb.a ], [ %i.x, %._crit_edge.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %.015.lcssa, i64 %.014.lcssa, i1 false)
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.014.lcssa
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !134
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %i.be = phi i1 [ true, %._crit_edge ], [ false, %bb.b ]
  ret i1 %i.be
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN6snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = icmp slt i32 %1, 0
  %i.c = select i1 %i.b, i64 -1, i64 %i.a
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #21 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !137  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.g, align 8, !tbaa !148
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.a, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %i.f, align 8, !tbaa !137
  br label %_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !136  ; 5 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZNKSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #21 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %i.d, ptr %i.w, align 8, !tbaa !148
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.a, ptr %.sroa.6.0..sroa_idx3, align 8, !tbaa !10
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !202, !alias.scope !203
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !207

_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #22
  br label %_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !136
  store ptr %i.z, ptr %i.f, align 8, !tbaa !137
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !201
  br label %_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6snappy19SnappySinkAllocator9DatablockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret ptr %i.d
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !135
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = add i64 %i.c, %i.h
  %i.k = sub i64 %i.j, %i.i                       ; 3 uses
  %i.l = add i64 %1, -1
  %.not = icmp ult i64 %i.l, %i.k
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !124
  %i.o = sub i64 %i.n, %i.k
  %i.p = icmp ult i64 %i.o, %2
  br i1 %i.p, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1832 = icmp eq i64 %2, 0
  br i1 %.not1832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = sub i64 %i.k, %1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.e ]
  %.034 = phi i64 [ %i.q, %.lr.ph ], [ %i.af, %bb.e ] ; 3 uses
  %.02133 = phi ptr [ %i.e, %.lr.ph ], [ %storemerge.i25, %bb.e ] ; 4 uses
  %i.t = add i64 %.in, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.u = lshr i64 %.034, 16
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !142
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148
  %i.y = and i64 %.034, 65535
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9    ; 2 uses
  store i8 %i.aa, ptr %i.a, align 1, !tbaa !9
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !195
  %.not.i = icmp eq ptr %i.ab, %.02133
  br i1 %.not.i, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread: ; preds = %bb.d
  store i8 %i.aa, ptr %.02133, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.02133, i64 1
  br label %bb.e

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit: ; preds = %bb.d
  store ptr %.02133, ptr %i.d, align 8, !tbaa !134
  %i.ad = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !134
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
end_hunk_0
