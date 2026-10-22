Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction?download=true
inline.NumInlined: 2270
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal8compilerlsERSoRKNS1_18InstructionOperandE:bb.a
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 19 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = and i32 %i.b, 7
  switch i32 %i.c, label %bb.be [
    i32 1, label %bb.b
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 0, label %bb.bd
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) #31 ; 0 uses
  %i.e = load i64, ptr %1, align 8
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.g) #31 ; 0 uses
  %i.i = load i64, ptr %1, align 8                ; 2 uses
  %i.j = and i64 %i.i, 34359738368
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 2) #31 ; 0 uses
  %i.m = load i64, ptr %1, align 8
  %i.n = ashr i64 %i.m, 36
  %i.o = trunc nsw i64 %i.n to i32
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.o) #31 ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.3, i64 noundef 2) #31 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.i, 36
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 7
  switch i32 %i.t, label %default.unreachable104 [
    i32 0, label %.thread
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 2) #31 ; 0 uses
  %i.v = load i64, ptr %1, align 8
  %i.w = lshr i64 %i.v, 41
  %i.x = trunc i64 %i.w to i8
  %i.y = and i8 %i.x, 63                          ; 2 uses
  %i.z = icmp samesign ult i8 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.y) ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.4, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 2) #31 ; 0 uses
  %i.ad = load i64, ptr %1, align 8               ; 2 uses
  %i.ae = and i64 %i.ad, 105553116266496
  %i.af = icmp eq i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %.pn.in = lshr i64 %i.ad, 41
  %.pn = and i64 %.pn.in, 15
  %.in = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names, i64 %.pn
  %i.ag = load ptr, ptr %.in, align 8
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ag) ; 2 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.4, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 3) #31 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 3) #31 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 1) #31 ; 0 uses
  %i.am = load i64, ptr %1, align 8
  %i.an = lshr i64 %i.am, 50
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 7
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ap) #31 ; 2 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.4, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.d
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 3) #31 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 3) #31 ; 0 uses
  br label %.thread

default.unreachable104:                           ; preds = %bb.m, %bb.d
  unreachable

bb.l:                                             ; preds = %bb.a
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 11) #31 ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  %i.av = lshr i64 %.sroa.0.0.copyload.i, 3
  %i.aw = trunc i64 %i.av to i32
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.aw) #31 ; 2 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.11, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.m:                                             ; preds = %bb.a
  %i.az = lshr i32 %i.b, 3
  %i.ba = and i32 %i.az, 3
  switch i32 %i.ba, label %default.unreachable104 [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 1) #31 ; 0 uses
  %i.bc = lshr i64 %i.a, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bd) #31
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 1) #31 ; 0 uses
  %i.bg = ashr i64 %i.a, 32
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.bg) #31
  br label %.thread

bb.p:                                             ; preds = %bb.m
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 15) #31 ; 0 uses
  %i.bj = lshr i64 %i.a, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bk) #31 ; 2 uses
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.11, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.q:                                             ; preds = %bb.m
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 11) #31 ; 0 uses
  %i.bo = lshr i64 %i.a, 32
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bp) #31 ; 2 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.11, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.r:                                             ; preds = %bb.a
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15, i64 noundef 10) #31 ; 0 uses
  %.sroa.0.0.copyload.i78 = load i64, ptr %1, align 8
  %i.bt = and i64 %.sroa.0.0.copyload.i78, -8
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bu) #31 ; 2 uses
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.11, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %bb.a
  %i.bx = and i64 %i.a, 7
  %i.by = icmp samesign ugt i64 %i.bx, 4          ; 6 uses
  %i.bz = and i64 %i.a, 3848                      ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 8
  %i.cb = and i1 %i.by, %i.ca
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i64 noundef 7) #31 ; 0 uses
  %i.cd = lshr i64 %i.a, 32
  %i.ce = trunc nuw i64 %i.cd to i32
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ce) #31 ; 0 uses
  br label %bb.ah

bb.u:                                             ; preds = %bb.s
  %i.cg = and i64 %i.a, 8
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = and i64 %i.a, 3840
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = and i1 %i.ch, %i.cj
  %i.cl = and i1 %i.by, %i.ck
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.17, i64 noundef 10) #31 ; 0 uses
  %i.cn = lshr i64 %i.a, 32
  %i.co = trunc nuw i64 %i.cn to i32
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.co) #31 ; 0 uses
  br label %bb.ah

bb.w:                                             ; preds = %bb.u
  %i.cq = icmp eq i64 %i.bz, 0
  %i.cr = and i1 %i.by, %i.cq
  br i1 %i.cr, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cs = lshr i64 %i.a, 32                       ; 2 uses
  %i.ct = trunc nuw i64 %i.cs to i32
  %i.cu = icmp slt i32 %i.ct, 16
  br i1 %i.cu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cv = and i64 %i.a, 1030792151040
  %i.cw = icmp eq i64 %i.cv, 0
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = and i64 %i.cs, 15
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %2 = phi ptr [ %i.cz, %bb.y ], [ @.str.684, %bb.x ] ; 2 uses
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 1) #31 ; 0 uses
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2, i64 noundef %4) #31 ; 0 uses
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ah

bb.aa:                                            ; preds = %bb.w
  %i.da = and i64 %i.a, 4088                      ; 3 uses
  %i.db = icmp eq i64 %i.da, 288
  %i.dc = and i1 %i.by, %i.db
  br i1 %i.dc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 1) #31 ; 0 uses
  %i.de = lshr i64 %i.a, 32
  %i.df = trunc i64 %i.de to i8                   ; 2 uses
  %i.dg = icmp samesign ult i8 %i.df, 16
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.df)
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  %i.dj = icmp eq i64 %i.da, 272
  %i.dk = and i1 %i.by, %i.dj
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 1) #31 ; 0 uses
  %i.dm = lshr i64 %i.a, 32
  %i.dn = trunc i64 %i.dm to i8                   ; 2 uses
  %i.do = icmp samesign ult i8 %i.dn, 16
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.dn)
  %i.dq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.dr = icmp eq i64 %i.da, 320
  %i.ds = and i1 %i.by, %i.dr
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 1) #31 ; 0 uses
  %i.du = lshr i64 %i.a, 32                       ; 2 uses
  br i1 %i.ds, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dv = icmp ult i64 %i.a, 68719476736
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = trunc nuw nsw i64 %i.du to i8
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11YMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.dw)
  %i.dy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dz = trunc i64 %i.du to i8                   ; 2 uses
  %i.ea = icmp samesign ult i8 %i.dz, 16
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.dz)
  %i.ec = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.v, %bb.ab, %bb.af, %bb.ag, %bb.ad, %bb.z, %bb.t
  %i.ed = lshr i64 %i.a, 4
  %i.ee = trunc i64 %i.ed to i8
  switch i8 %i.ee, label %bb.bc [
    i8 0, label %bb.ai
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %bb.al
    i8 4, label %bb.am
    i8 5, label %bb.an
    i8 16, label %bb.ao
    i8 17, label %bb.ap
    i8 18, label %bb.aq
    i8 19, label %bb.ar
    i8 20, label %bb.as
    i8 7, label %bb.at
    i8 8, label %bb.au
    i8 9, label %bb.av
    i8 10, label %bb.aw
    i8 11, label %bb.ax
    i8 12, label %bb.ay
    i8 13, label %bb.az
    i8 14, label %bb.ba
    i8 6, label %bb.bb
    i8 15, label %bb.bb
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.20, i64 noundef 2) #31 ; 0 uses
  br label %bb.bc

bb.aj:                                            ; preds = %bb.ah
  %i.eg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 2) #31 ; 0 uses
  br label %bb.bc

bb.ak:                                            ; preds = %bb.ah
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.22, i64 noundef 3) #31 ; 0 uses
  br label %bb.bc

bb.al:                                            ; preds = %bb.ah
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.23, i64 noundef 4) #31 ; 0 uses
  br label %bb.bc

bb.am:                                            ; preds = %bb.ah
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24, i64 noundef 4) #31 ; 0 uses
  br label %bb.bc

bb.an:                                            ; preds = %bb.ah
  %i.ek = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 4) #31 ; 0 uses
  br label %bb.bc

bb.ao:                                            ; preds = %bb.ah
  %i.el = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 4) #31 ; 0 uses
  br label %bb.bc

bb.ap:                                            ; preds = %bb.ah
  %i.em = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 4) #31 ; 0 uses
  br label %bb.bc

bb.aq:                                            ; preds = %bb.ah
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 4) #31 ; 0 uses
  br label %bb.bc

bb.ar:                                            ; preds = %bb.ah
  %i.eo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.29, i64 noundef 5) #31 ; 0 uses
  br label %bb.bc

bb.as:                                            ; preds = %bb.ah
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.30, i64 noundef 5) #31 ; 0 uses
  br label %bb.bc

bb.at:                                            ; preds = %bb.ah
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31, i64 noundef 3) #31 ; 0 uses
  br label %bb.bc

bb.au:                                            ; preds = %bb.ah
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.32, i64 noundef 3) #31 ; 0 uses
  br label %bb.bc

bb.av:                                            ; preds = %bb.ah
  %i.es = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 2) #31 ; 0 uses
  br label %bb.bc

bb.aw:                                            ; preds = %bb.ah
  %i.et = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.34, i64 noundef 3) #31 ; 0 uses
  br label %bb.bc

bb.ax:                                            ; preds = %bb.ah
  %i.eu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.35, i64 noundef 2) #31 ; 0 uses
  br label %bb.bc

bb.ay:                                            ; preds = %bb.ah
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.36, i64 noundef 3) #31 ; 0 uses
  br label %bb.bc

bb.az:                                            ; preds = %bb.ah
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.37, i64 noundef 3) #31 ; 0 uses
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ah
  %i.ex = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.38, i64 noundef 3) #31 ; 0 uses
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ah, %bb.ah
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #30
  unreachable

bb.bc:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.ey = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.bd:                                            ; preds = %bb.a
  %i.ez = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.39, i64 noundef 3) #31 ; 0 uses
  br label %.thread

bb.be:                                            ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #30
  unreachable

.thread:                                          ; preds = %bb.p, %bb.o, %bb.n, %bb.q, %bb.d, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.k, %bb.c, %bb.bd, %bb.bc, %bb.r, %bb.l
  %.2 = phi ptr [ %i.ax, %bb.l ], [ %0, %bb.bd ], [ %i.bv, %bb.r ], [ %i.p, %bb.c ], [ %0, %bb.bc ], [ %0, %bb.d ], [ %0, %bb.j ], [ %i.aq, %bb.i ], [ %0, %bb.h ], [ %0, %bb.g ], [ %i.ah, %bb.f ], [ %i.aa, %bb.e ], [ %0, %bb.k ], [ %i.bl, %bb.p ], [ %i.bh, %bb.o ], [ %i.be, %bb.n ], [ %i.bq, %bb.q ]
  ret ptr %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %1) local_unnamed_addr #5 comdat {
bb.a:
  %.not.i = icmp eq i8 %1, -1
  br i1 %.not.i, label %_ZN2v88internal12RegisterNameENS0_8RegisterE.exit.thread, label %_ZN2v88internal12RegisterNameENS0_8RegisterE.exit

_ZN2v88internal12RegisterNameENS0_8RegisterE.exit: ; preds = %bb.a
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal12RegisterNameENS0_8RegisterE.exit.thread

_ZN2v88internal12RegisterNameENS0_8RegisterE.exit.thread: ; preds = %_ZN2v88internal12RegisterNameENS0_8RegisterE.exit, %bb.a
  %i.e = phi ptr [ %i.d, %_ZN2v88internal12RegisterNameENS0_8RegisterE.exit ], [ @.str.662, %bb.a ] ; 2 uses
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #31
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef %i.f) #31 ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %1) local_unnamed_addr #5 comdat {
bb.a:
  %.not.i = icmp eq i8 %1, -1
  br i1 %.not.i, label %_ZN2v88internal12RegisterNameENS0_11XMMRegisterE.exit.thread, label %_ZN2v88internal12RegisterNameENS0_11XMMRegisterE.exit

_ZN2v88internal12RegisterNameENS0_11XMMRegisterE.exit: ; preds = %bb.a
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal12RegisterNameENS0_11XMMRegisterE.exit.thread

_ZN2v88internal12RegisterNameENS0_11XMMRegisterE.exit.thread: ; preds = %_ZN2v88internal12RegisterNameENS0_11XMMRegisterE.exit, %bb.a
  %i.e = phi ptr [ %i.d, %_ZN2v88internal12RegisterNameENS0_11XMMRegisterE.exit ], [ @.str.662, %bb.a ] ; 2 uses
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #31
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef %i.f) #31 ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11YMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %1) local_unnamed_addr #5 comdat {
bb.a:
  %.not.i = icmp eq i8 %1, -1
  br i1 %.not.i, label %_ZN2v88internal12RegisterNameENS0_11YMMRegisterE.exit.thread, label %_ZN2v88internal12RegisterNameENS0_11YMMRegisterE.exit

_ZN2v88internal12RegisterNameENS0_11YMMRegisterE.exit: ; preds = %bb.a
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_11YMMRegisterEE5Names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal12RegisterNameENS0_11YMMRegisterE.exit.thread

_ZN2v88internal12RegisterNameENS0_11YMMRegisterE.exit.thread: ; preds = %_ZN2v88internal12RegisterNameENS0_11YMMRegisterE.exit, %bb.a
  %i.e = phi ptr [ %i.d, %_ZN2v88internal12RegisterNameENS0_11YMMRegisterE.exit ], [ @.str.662, %bb.a ] ; 2 uses
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #31
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef %i.f) #31 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler12MoveOperands5PrintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::StdoutStream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
end_hunk_0
