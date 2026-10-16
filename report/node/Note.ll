Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/Note?download=true
inline.NumInlined: 4190
inline.NumDeleted: 1542
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4LIEF3ELF4Note12convert_typeENS0_6Header9FILE_TYPEEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ac = load i32, ptr %i.ab, align 4
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78: ; preds = %bb.g
  %i.ad = load ptr, ptr %3, align 8               ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 1431193932
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ai, 88
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78
  %.not.i.i.i.i.i.i79 = icmp sgt i32 %1, 1031
  br i1 %.not.i.i.i.i.i.i79, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread
  %.not.i.i.i.i.i.i.i.i83 = icmp samesign ugt i32 %1, 1033
  %.add.i.i = select i1 %.not.i.i.i.i.i.i.i.i83, i64 84, i64 68
  br label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread
  %.not.i.i.i.i.i.i.i80 = icmp sgt i32 %1, 1027
  %.add12.i.i = select i1 %.not.i.i.i.i.i.i.i80, i64 36, i64 4 ; 2 uses
  %.ptr16.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13CORE_ARM_YPESE, i64 %.add12.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.ptr16.i.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 4
  %.not.i.i6.i.i.i.i.i.i = icmp slt i32 %i.ap, %1
  %.idx.i.i7.i.i.i.i.i.i = select i1 %.not.i.i6.i.i.i.i.i.i, i64 16, i64 0
  %.add13.i.i = or disjoint i64 %.idx.i.i7.i.i.i.i.i.i, %.add12.i.i
  br label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i: ; preds = %bb.m, %bb.l
  %.sink.i.i.i.i.idx.i.i = phi i64 [ %.add13.i.i, %bb.m ], [ %.add.i.i, %bb.l ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13CORE_ARM_YPESE, i64 %.sink.i.i.i.i.idx.i.i
  %.sink11.i.i.i.i.i.i = load i32, ptr %.sink.i.i.i.i.ptr.i.i, align 4
  %.not.i.i.i8.i.i.i.i.i.i = icmp slt i32 %.sink11.i.i.i.i.i.i, %1
  %.idx.i.i.i9.i.i.i.i.i.i = select i1 %.not.i.i.i8.i.i.i.i.i.i, i64 8, i64 0
  %.sink.i.i.i.i.add.i.i = add nuw nsw i64 %.idx.i.i.i9.i.i.i.i.i.i, %.sink.i.i.i.i.idx.i.i ; 2 uses
  %.not.i.i81 = icmp eq i64 %.sink.i.i.i.i.add.i.i, 92
  br i1 %.not.i.i81, label %.critedge60, label %bb.n

bb.n:                                             ; preds = %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13CORE_ARM_YPESE, i64 %.sink.i.i.i.i.add.i.i ; 2 uses
  %i.aq = load i32, ptr %.ptr.i.i, align 4
  %.not20.i.i = icmp slt i32 %1, %i.aq
  br i1 %.not20.i.i, label %.critedge60, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  br label %.critedge

.critedge60:                                      ; preds = %bb.n, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i
  %.not.i.i.i.i.i.i84 = icmp sgt i32 %1, 513
  br i1 %.not.i.i.i.i.i.i84, label %bb.p, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i

bb.p:                                             ; preds = %.critedge60
  %.not.i.i.i.i.i.i.i92.not = icmp eq i32 %1, 514
  br i1 %.not.i.i.i.i.i.i.i92.not, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread168, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i: ; preds = %bb.p, %.critedge60
  %.sink5.i.i.i.i = phi i64 [ 28, %bb.p ], [ 4, %.critedge60 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL14CORE_X86_TYPESE, i64 %.sink5.i.i.i.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %.not.i.i.i.i.i.i.i.i.i85 = icmp slt i32 %i.au, %1
  %.idx.i.i.i.i.i.i.i.i.i86 = select i1 %.not.i.i.i.i.i.i.i.i.i85, i64 8, i64 0 ; 2 uses
  %i.av = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i86, %.sink5.i.i.i.i
  %.not.i.i87 = icmp samesign eq i64 %i.av, 36
  br i1 %.not.i.i87, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i: ; preds = %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.i.i.i.i.i.i.i86 ; 2 uses
  %.pre.i.i88 = load i32, ptr %i.aw, align 4
  %.not15.i.i = icmp slt i32 %1, %.pre.i.i88
  br i1 %.not15.i.i, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread168

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread168: ; preds = %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i, %bb.p
  %.0.i.i91171 = phi ptr [ %i.aw, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL14CORE_X86_TYPESE, i64 20), %bb.p ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i91171, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  br label %.critedge

bb.q:                                             ; preds = %_ZN4LIEF3ELFL10strip_zeroERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  switch i64 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread163 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94: ; preds = %bb.q
  %i.az = load ptr, ptr %3, align 8               ; 3 uses
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = xor i32 %i.ba, 1919184449
  %i.bc = getelementptr i8, ptr %i.az, i64 3
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = xor i32 %i.bd, 1684631410
  %i.bf = or i32 %i.bb, %i.be
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94
  %.not.i.i.i.i.i.i.i95 = icmp sgt i32 %1, 3      ; 2 uses
  %i.bj = select i1 %.not.i.i.i.i.i.i.i95, i64 20, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13ANDROID_TYPESE, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %.not.i.i.i.i.i.i.i.i96 = icmp slt i32 %i.bl, %1 ; 2 uses
  %.not.i.i97 = and i1 %.not.i.i.i.i.i.i.i95, %.not.i.i.i.i.i.i.i.i96
  br i1 %.not.i.i97, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread
  %.idx.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i96, i64 8, i64 0
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %.not12.i.i = icmp slt i32 %1, %i.bn
  br i1 %.not12.i.i, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100: ; preds = %bb.q
  %.pre = load ptr, ptr %3, align 8
  %bcmp.i99 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.11, i64 %i.o)
  %i.bq = icmp eq i32 %bcmp.i99, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread163

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
  %.not.i.i.i.i.i.i101 = icmp sgt i32 %1, 4
  %.not.i.i.i.i.i.i.i102 = icmp sgt i32 %1, 2
  %i.br = select i1 %.not.i.i.i.i.i.i.i102, i64 20, i64 4
  %i.bs = select i1 %.not.i.i.i.i.i.i101, i64 36, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL9GNU_TYPESE, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %.not.i.i6.i.i.i.i.i.i103 = icmp slt i32 %i.bu, %1
  %.idx.i.i7.i.i.i.i.i.i104 = select i1 %.not.i.i6.i.i.i.i.i.i103, i64 8, i64 0 ; 2 uses
  %i.bv = or disjoint i64 %.idx.i.i7.i.i.i.i.i.i104, %i.bs
  %.not.i.i105 = icmp samesign eq i64 %i.bv, 44
  br i1 %.not.i.i105, label %.critedge, label %bb.t

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.i7.i.i.i.i.i.i104 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %.not12.i.i106 = icmp slt i32 %1, %i.bx
  br i1 %.not12.i.i106, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109: ; preds = %bb.q
  %.pre181 = load ptr, ptr %3, align 8
  %bcmp.i108 = call i32 @bcmp(ptr %.pre181, ptr nonnull @.str.16, i64 %i.o)
  %i.ca = icmp eq i32 %bcmp.i108, 0
  br i1 %i.ca, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread163

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109
  %or.cond.not.i.i.not = icmp eq i32 %1, 4        ; 2 uses
  %spec.select = select i1 %or.cond.not.i.i.not, i32 41, i32 2
  %spec.select176 = select i1 %or.cond.not.i.i.not, i64 4294967296, i64 0
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94
  %bcmp.i111 = call i32 @bcmp(ptr nonnull %i.az, ptr nonnull @.str.17, i64 %i.o)
  %i.cb = icmp eq i32 %bcmp.i111, 0
  br i1 %i.cb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread163

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112
  %or.cond.not.i.i113.not = icmp eq i32 %1, 3     ; 2 uses
  %spec.select177 = select i1 %or.cond.not.i.i113.not, i32 42, i32 2
  %spec.select178 = select i1 %or.cond.not.i.i113.not, i64 4294967296, i64 0
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116: ; preds = %bb.q
  %.pre182 = load ptr, ptr %3, align 8
  %bcmp.i115 = call i32 @bcmp(ptr %.pre182, ptr nonnull @.str.12, i64 %i.o)
  %i.cc = icmp eq i32 %bcmp.i115, 0
  br i1 %i.cc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread163

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116
  %or.cond.not.i.i117.not = icmp eq i32 %1, 1330007625 ; 2 uses
  %spec.select179 = select i1 %or.cond.not.i.i117.not, i32 8, i32 2
  %spec.select180 = select i1 %or.cond.not.i.i117.not, i64 4294967296, i64 0
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread163: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100, %bb.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116
  %i.cd = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.18)
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread163
  %or.cond.not.i.i119 = icmp eq i32 %1, 3
  %.0.i.i120 = select i1 %or.cond.not.i.i119, ptr getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL9QNX_TYPESE, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL9QNX_TYPESE, i64 12)
  %.not50 = icmp eq ptr %.0.i.i120, getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL14CRASHPAD_TYPESE, i64 12) ; 2 uses
  %spec.select181 = select i1 %.not50, i32 2, i32 43
  %spec.select182 = select i1 %.not50, i64 0, i64 4294967296
  br label %.critedge

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread163
  %.not.i.i.i.i.i.i121 = icmp sgt i32 %1, 256
  %.not.i.i.i.i.i.i.i.i122 = icmp sgt i32 %1, 257
  %i.ce = select i1 %.not.i.i.i.i.i.i.i.i122, i64 20, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13GENERIC_TYPESE, i64 %i.ce
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i121, ptr %i.cf, ptr getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL13GENERIC_TYPESE, i64 4) ; 3 uses
  %.not.i.i124 = icmp eq ptr %.0.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL13GENERIC_TYPESE, i64 20)
  br i1 %.not.i.i124, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = load i32, ptr %.0.i.i.i.i.i.i, align 4
  %.not12.i.i125 = icmp slt i32 %1, %i.cg
  br i1 %.not12.i.i125, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit: ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 4
  %i.ci = load i32, ptr %i.ch, align 4
  br label %.critedge

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread, %bb.g, %bb.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread, %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i, %bb.x, %bb.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit, %bb.u, %bb.s, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread168, %bb.o, %bb.k
  %.sroa.0145.0 = phi i32 [ %i.ci, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit ], [ %i.ac, %bb.k ], [ 2, %bb.t ], [ %i.ay, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread168 ], [ %i.as, %bb.o ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78 ], [ %i.bp, %bb.s ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread ], [ %i.bz, %bb.u ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i ], [ 2, %bb.g ], [ 2, %bb.r ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i ], [ %spec.select177, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread ], [ 2, %bb.w ], [ %spec.select179, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread ], [ %spec.select181, %bb.v ], [ 2, %bb.x ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %.sroa.21.0 = phi i64 [ 4294967296, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit ], [ 4294967296, %bb.k ], [ 0, %bb.t ], [ 4294967296, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread168 ], [ 4294967296, %bb.o ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78 ], [ 4294967296, %bb.s ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94.thread ], [ 4294967296, %bb.u ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.r ], [ %spec.select176, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i ], [ %spec.select178, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread ], [ 0, %bb.w ], [ %spec.select180, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread ], [ %spec.select182, %bb.v ], [ 0, %bb.x ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.cj = load ptr, ptr %3, align 8               ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.b
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.cl = load i64, ptr %i.b, align 8
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.sroa.0145.0.insert.ext = zext i32 %.sroa.0145.0 to i64
  %.sroa.0145.0.insert.insert = or disjoint i64 %.sroa.21.0, %.sroa.0145.0.insert.ext
  ret i64 %.sroa.0145.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF4Note6createERNS_12BinaryStreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6Header9FILE_TYPEENS0_4ARCHENSA_5CLASSE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.322") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"class.std::vector.60", align 8    ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.60", align 16   ; 5 uses
  %9 = alloca %"class.std::allocator.62", align 1 ; 3 uses
  %10 = alloca %"class.std::vector.60", align 16  ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 0, ptr %i.e, align 4
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i64 %i.j(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.e, i64 noundef %i.g, i64 noundef 4, i64 noundef 0) #26, !inline_history !84
  %i.l = and i64 %i.k, 4294967296
  %.not.i.i = icmp eq i64 %i.l, 0
  store i64 %i.g, ptr %i.f, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = load i8, ptr %i.m, align 8, !range !43, !noundef !44
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.e) #26
  %.pre.i = load i64, ptr %i.f, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ]
  %i.q = load i32, ptr %i.e, align 4              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.r = add i64 %i.p, 4
  store i64 %i.r, ptr %i.f, align 8
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.85) #26 ; 0 uses
  %i.t = load i64, ptr %i.f, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 0, ptr %i.d, align 4
  %i.u = load ptr, ptr %1, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i64 %i.w(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.d, i64 noundef %i.t, i64 noundef 4, i64 noundef 0) #26, !inline_history !84
  %i.y = and i64 %i.x, 4294967296
  %.not.i.i19 = icmp eq i64 %i.y, 0
  store i64 %i.t, ptr %i.f, align 8
  br i1 %.not.i.i19, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.z = load i8, ptr %i.m, align 8, !range !43, !noundef !44
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.d) #26
  %.pre.i22 = load i64, ptr %i.f, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24: ; preds = %bb.d, %bb.e
  %i.ab = phi i64 [ %i.t, %bb.d ], [ %.pre.i22, %bb.e ]
  %i.ac = load i32, ptr %i.d, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.ad = add i64 %i.ab, 4
  store i64 %i.ad, ptr %i.f, align 8
  %i.ae = call i32 @llvm.umin.i32(i32 %i.ac, i32 1048576)
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.85) #26 ; 0 uses
  %i.ag = load i64, ptr %i.f, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.c, i64 noundef %i.ag, i64 noundef 4, i64 noundef 0) #26, !inline_history !84
  %i.al = and i64 %i.ak, 4294967296
  %.not.i.i25 = icmp eq i64 %i.al, 0
  store i64 %i.ag, ptr %i.f, align 8
  br i1 %.not.i.i25, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit30.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit30.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24
  %i.am = load i8, ptr %i.m, align 8, !range !43, !noundef !44
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit30

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #26
  %.pre.i28 = load i64, ptr %i.f, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit30

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit30: ; preds = %bb.f, %bb.g
  %i.ao = phi i64 [ %i.ag, %bb.f ], [ %.pre.i28, %bb.g ]
  %i.ap = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.aq = add i64 %i.ao, 4
  store i64 %i.aq, ptr %i.f, align 8
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.85) #26 ; 0 uses
  %i.as = icmp eq i32 %i.q, 0
  br i1 %i.as, label %bb.h, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit30
  store ptr null, ptr %0, align 8
  br label %bb.ab

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.at = zext i32 %i.q to i64                    ; 4 uses
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #25 ; 3 uses
  store ptr %i.au, ptr %6, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.au, i8 0, i64 %i.at, i1 false)
  store ptr %i.aw, ptr %i.av, align 8
  %i.ay = load ptr, ptr %1, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.at) #26
  %i.bc = and i64 %i.bb, 4294967296
  %.not99 = icmp eq i64 %i.bc, 0
  br i1 %.not99, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.85) #26 ; 0 uses
  store ptr null, ptr %0, align 8
  br label %bb.z

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.be = load ptr, ptr %6, align 8               ; 4 uses
  %i.bf = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bj, ptr %7, align 8
end_hunk_0
