Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/Note?download=true
inline.NumInlined: 4701
inline.NumDeleted: 1643
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4LIEF3ELF4Note12convert_typeENS0_6Header9FILE_TYPEEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78: ; preds = %bb.g
  %i.al = load ptr, ptr %3, align 8, !tbaa !91    ; 2 uses
  %i.am = load i32, ptr %i.al, align 1
  %i.an = xor i32 %i.am, 1431193932
  %i.ao = getelementptr i8, ptr %i.al, i64 4
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = xor i32 %i.aq, 88
  %i.as = or i32 %i.an, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78
  %i.aw = icmp sgt i32 %1, 1031
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread
  %i.ax = icmp samesign ugt i32 %1, 1033
  %i.ay = select i1 %i.ax, i64 80, i64 64
  br label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.i.i

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread
  %i.az = icmp sgt i32 %1, 1027
  %.idx.i.i.i.i.i.i.i79 = select i1 %i.az, i64 32, i64 0 ; 2 uses
  %.ptr12.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13CORE_ARM_YPESE, i64 %.idx.i.i.i.i.i.i.i79
  %i.ba = getelementptr inbounds nuw i8, ptr %.ptr12.i.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !86
  %i.bc = icmp slt i32 %i.bb, %1
  %.idx.i.i6.i.i.i.i.i.i80 = select i1 %i.bc, i64 16, i64 0
  %.add.i.i = or disjoint i64 %.idx.i.i6.i.i.i.i.i.i80, %.idx.i.i.i.i.i.i.i79
  br label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.i.i

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.i.i: ; preds = %bb.m, %bb.l
  %.sink.i.i.i.i.idx.i.i = phi i64 [ %.add.i.i, %bb.m ], [ %i.ay, %bb.l ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13CORE_ARM_YPESE, i64 %.sink.i.i.i.i.idx.i.i
  %.sink10.i.i.i.i.i.i = load i32, ptr %.sink.i.i.i.i.ptr.i.i, align 4, !tbaa !86
  %i.bd = icmp slt i32 %.sink10.i.i.i.i.i.i, %1
  %.idx.i.i.i7.i.i.i.i.i.i = select i1 %i.bd, i64 8, i64 0
  %.sink.i.i.i.i.add.i.i = add nuw nsw i64 %.idx.i.i.i7.i.i.i.i.i.i, %.sink.i.i.i.i.idx.i.i ; 2 uses
  %.not.i.i81 = icmp eq i64 %.sink.i.i.i.i.add.i.i, 88
  br i1 %.not.i.i81, label %.critedge60, label %bb.n

bb.n:                                             ; preds = %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.i.i
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13CORE_ARM_YPESE, i64 %.sink.i.i.i.i.add.i.i ; 2 uses
  %i.be = load i32, ptr %.ptr.i.i, align 4, !tbaa !86
  %i.bf = icmp slt i32 %1, %i.be
  br i1 %i.bf, label %.critedge60, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !88
  br label %.critedge

.critedge60:                                      ; preds = %bb.n, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.i.i
  %i.bi = icmp sgt i32 %1, 513
  br i1 %i.bi, label %bb.p, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i

bb.p:                                             ; preds = %.critedge60
  %.not = icmp eq i32 %1, 514
  br i1 %.not, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit.thread164, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = icmp samesign ugt i32 %1, 515
  br i1 %i.bj, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit.thread164

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i: ; preds = %.critedge60
  %i.bk = icmp eq i32 %1, 513
  %.idx.i.i.i.i.i.i.i83 = select i1 %i.bk, i64 8, i64 0
  %.0.i.i.i.i.ptr.i.i85 = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL14CORE_X86_TYPESE, i64 %.idx.i.i.i.i.i.i.i83
  %i.bl = icmp slt i32 %1, 512
  br i1 %i.bl, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit.thread164

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit.thread164: ; preds = %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i, %bb.q, %bb.p
  %.0.i.i88167 = phi ptr [ %.0.i.i.i.i.ptr.i.i85, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL14CORE_X86_TYPESE, i64 16), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL14CORE_X86_TYPESE, i64 24), %bb.q ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i88167, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !88
  br label %.critedge

bb.r:                                             ; preds = %_ZN4LIEF3ELFL10strip_zeroERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  switch i64 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread155 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90: ; preds = %bb.r
  %i.bo = load ptr, ptr %3, align 8, !tbaa !91    ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = xor i32 %i.bp, 1919184449
  %i.br = getelementptr i8, ptr %i.bo, i64 3
  %i.bs = load i32, ptr %i.br, align 1
  %i.bt = xor i32 %i.bs, 1684631410
  %i.bu = or i32 %i.bq, %i.bt
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %i.by = icmp sgt i32 %1, 3                      ; 2 uses
  %.idx.i.i.i.i.i.i.i91 = select i1 %i.by, i64 16, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13ANDROID_TYPESE, i64 %.idx.i.i.i.i.i.i.i91 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !86
  %i.cb = icmp slt i32 %i.ca, %1                  ; 2 uses
  %.not.i.i92 = and i1 %i.by, %i.cb
  br i1 %.not.i.i92, label %.critedge, label %bb.s

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread
  %.idx.i.i.i.i.i.i.i.i = select i1 %i.cb, i64 8, i64 0
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !86
  %i.ce = icmp slt i32 %1, %i.cd
  br i1 %i.ce, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !88
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95: ; preds = %bb.r
  %.pre = load ptr, ptr %3, align 8, !tbaa !91
  %bcmp.i94 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.11, i64 %i.o)
  %i.ch = icmp eq i32 %bcmp.i94, 0
  br i1 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread155

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
  %i.ci = icmp sgt i32 %1, 4
  %i.cj = icmp sgt i32 %1, 2
  %.idx.i.i.i.i.i.i.i96 = select i1 %i.cj, i64 16, i64 0
  %.idx.i.sink.i.i.i.i.i.i = select i1 %i.ci, i64 32, i64 %.idx.i.i.i.i.i.i.i96 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL9GNU_TYPESE, i64 %.idx.i.sink.i.i.i.i.i.i ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !86
  %i.cm = icmp slt i32 %i.cl, %1
  %.idx.i.i6.i.i.i.i.i.i97 = select i1 %i.cm, i64 8, i64 0 ; 2 uses
  %i.cn = or disjoint i64 %.idx.i.i6.i.i.i.i.i.i97, %.idx.i.sink.i.i.i.i.i.i
  %.not.i.i98 = icmp samesign eq i64 %i.cn, 40
  br i1 %.not.i.i98, label %.critedge, label %bb.u

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.i6.i.i.i.i.i.i97 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !86
  %i.cq = icmp slt i32 %1, %i.cp
  br i1 %i.cq, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !88
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101: ; preds = %bb.r
  %.pre179 = load ptr, ptr %3, align 8, !tbaa !91
  %bcmp.i100 = call i32 @bcmp(ptr %.pre179, ptr nonnull @.str.16, i64 %i.o)
  %i.ct = icmp eq i32 %bcmp.i100, 0
  br i1 %i.ct, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread155

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101
  %or.cond.not.i.i = icmp eq i32 %1, 4            ; 2 uses
  %spec.select = select i1 %or.cond.not.i.i, i32 41, i32 2
  %spec.select172 = select i1 %or.cond.not.i.i, i64 4294967296, i64 0
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %bcmp.i103 = call i32 @bcmp(ptr nonnull %i.bo, ptr nonnull @.str.17, i64 %i.o)
  %i.cu = icmp eq i32 %bcmp.i103, 0
  br i1 %i.cu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread155

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104
  %or.cond.not.i.i105 = icmp eq i32 %1, 3         ; 2 uses
  %spec.select173 = select i1 %or.cond.not.i.i105, i32 42, i32 2
  %spec.select174 = select i1 %or.cond.not.i.i105, i64 4294967296, i64 0
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109: ; preds = %bb.r
  %.pre180 = load ptr, ptr %3, align 8, !tbaa !91
  %bcmp.i108 = call i32 @bcmp(ptr %.pre180, ptr nonnull @.str.12, i64 %i.o)
  %i.cv = icmp eq i32 %bcmp.i108, 0
  br i1 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread155

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109
  %or.cond.not.i.i110 = icmp eq i32 %1, 1330007625 ; 2 uses
  %spec.select175 = select i1 %or.cond.not.i.i110, i32 8, i32 2
  %spec.select176 = select i1 %or.cond.not.i.i110, i64 4294967296, i64 0
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread155: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95, %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109
  %i.cw = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.18)
  br i1 %i.cw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread155
  %or.cond.not.i.i113 = icmp eq i32 %1, 3         ; 2 uses
  %spec.select177 = select i1 %or.cond.not.i.i113, i32 43, i32 2
  %spec.select178 = select i1 %or.cond.not.i.i113, i64 4294967296, i64 0
  br label %.critedge

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread155
  %i.cx = icmp sgt i32 %1, 256
  %4 = icmp samesign ugt i32 %1, 257
  %i.cy = select i1 %4, i64 16, i64 8
  %.0.i.i.i.i.i.i.idx = select i1 %i.cx, i64 %i.cy, i64 0
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13GENERIC_TYPESE, i64 %.0.i.i.i.i.i.i.idx ; 2 uses
  %.not.i.i117 = icmp sgt i32 %1, 257
  br i1 %.not.i.i117, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = load i32, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !86
  %i.da = icmp slt i32 %1, %i.cz
  br i1 %i.da, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit: ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !88
  br label %.critedge

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread, %bb.g, %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread, %bb.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i, %bb.q, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.i.i, %bb.y, %bb.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit, %bb.v, %bb.t, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit.thread164, %bb.o, %bb.k
  %.sroa.0137.0 = phi i32 [ %i.dc, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit ], [ %i.ak, %bb.k ], [ 2, %bb.u ], [ %i.bn, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit.thread164 ], [ %i.bh, %bb.o ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78 ], [ %i.cg, %bb.t ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread ], [ %i.cs, %bb.v ], [ 2, %bb.q ], [ 2, %bb.g ], [ 2, %bb.s ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.i.i ], [ %spec.select173, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.thread ], [ 2, %bb.x ], [ %spec.select175, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread ], [ %spec.select177, %bb.w ], [ 2, %bb.y ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %.sroa.21.0 = phi i64 [ 4294967296, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit ], [ 4294967296, %bb.k ], [ 0, %bb.u ], [ 4294967296, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIKiS4_ERKT_.exit.thread164 ], [ 4294967296, %bb.o ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78 ], [ 4294967296, %bb.t ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread ], [ 4294967296, %bb.v ], [ 0, %bb.q ], [ 0, %bb.g ], [ 0, %bb.s ], [ %spec.select172, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.i.i ], [ %spec.select174, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.thread ], [ 0, %bb.x ], [ %spec.select176, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread ], [ %spec.select178, %bb.w ], [ 0, %bb.y ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIKiS4_ERKT_.exit.thread.i.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.dd = load ptr, ptr %3, align 8, !tbaa !91    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.b
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.df = load i64, ptr %i.b, align 8, !tbaa !53
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.sroa.0137.0.insert.ext = zext i32 %.sroa.0137.0 to i64
  %.sroa.0137.0.insert.insert = or disjoint i64 %.sroa.21.0, %.sroa.0137.0.insert.ext
  ret i64 %.sroa.0137.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !91
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3ELF4Note6createERNS_12BinaryStreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6Header9FILE_TYPEENS0_4ARCHENSA_5CLASSE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.326") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"class.std::vector.60", align 8   ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::vector.334", align 8  ; 11 uses
  %14 = alloca %"class.std::vector.60", align 16  ; 5 uses
  %15 = alloca %"class.std::allocator.62", align 1 ; 3 uses
  %16 = alloca %"class.std::vector.60", align 16  ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !96   ; 4 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4, !tbaa !86
  %i.k = load ptr, ptr %1, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.d, i64 noundef %i.j, i64 noundef 4, i64 noundef 0) #27, !inline_history !326
  %i.o = and i64 %i.n, 4294967296
  %.not.i.i = icmp eq i64 %i.o, 0
  store i64 %i.j, ptr %i.i, align 8, !tbaa !96
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  store ptr null, ptr %0, align 8, !tbaa !101
  br label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !328, !range !71, !noundef !72
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.d) #27
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !96
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.s = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %bb.c ]
  %i.t = load i32, ptr %i.d, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.u = add i64 %i.s, 4
  store i64 %i.u, ptr %i.i, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 %i.t, ptr %i.f, align 4, !tbaa !86
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.190) #27
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 1, ptr nonnull @.str.19, i64 26, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.x = load i64, ptr %i.i, align 8, !tbaa !96   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !86
  %i.y = load ptr, ptr %1, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.c, i64 noundef %i.x, i64 noundef 4, i64 noundef 0) #27, !inline_history !326
  %i.ac = and i64 %i.ab, 4294967296
  %.not.i.i22 = icmp eq i64 %i.ac, 0
  store i64 %i.x, ptr %i.i, align 8, !tbaa !96
  br i1 %.not.i.i22, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  store ptr null, ptr %0, align 8, !tbaa !101
  br label %bb.ae

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.ad = load i8, ptr %i.p, align 8, !tbaa !328, !range !71, !noundef !72
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #27
  %.pre.i25 = load i64, ptr %i.i, align 8, !tbaa !96
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27: ; preds = %bb.d, %bb.e
  %i.af = phi i64 [ %i.x, %bb.d ], [ %.pre.i25, %bb.e ]
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ah = add i64 %i.af, 4
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.ai = call i32 @llvm.umin.i32(i32 %i.ag, i32 1048576)
  store i32 %i.ai, ptr %i.g, align 4, !tbaa !86
  %i.aj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.190) #27
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 1, ptr nonnull @.str.20, i64 23, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.al = load i64, ptr %i.i, align 8, !tbaa !96  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !86
  %i.am = load ptr, ptr %1, align 8, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.b, i64 noundef %i.al, i64 noundef 4, i64 noundef 0) #27, !inline_history !326
  %i.aq = and i64 %i.ap, 4294967296
  %.not.i.i28 = icmp eq i64 %i.aq, 0
  store i64 %i.al, ptr %i.i, align 8, !tbaa !96
  br i1 %.not.i.i28, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %0, align 8, !tbaa !101
  br label %bb.ad

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27
  %i.ar = load i8, ptr %i.p, align 8, !tbaa !328, !range !71, !noundef !72
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #27
  %.pre.i31 = load i64, ptr %i.i, align 8, !tbaa !96
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33: ; preds = %bb.f, %bb.g
  %i.at = phi i64 [ %i.al, %bb.f ], [ %.pre.i31, %bb.g ]
  %i.au = load i32, ptr %i.b, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.av = add i64 %i.at, 4
  store i64 %i.av, ptr %i.i, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store i32 %i.au, ptr %i.h, align 4, !tbaa !86
end_hunk_0
