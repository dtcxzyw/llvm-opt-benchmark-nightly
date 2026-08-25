Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonMachineFunctionInfo?download=true
begin_hunk_0_@_ZN4llvm4yaml12ScalarTraitsINS0_11StringValueEvE5inputENS_9StringRefEPvRS2_:bb.a

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %4, align 8, !tbaa !179
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ah = phi ptr [ %i.m, %bb.j ], [ %i.q, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !159
  store i8 0, ptr %i.ah, align 1, !tbaa !161
  %i.aj = load ptr, ptr %4, align 8, !tbaa !179   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !161
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ao = call noundef ptr @_ZNK4llvm4yaml5Input14getCurrentNodeEv(ptr noundef nonnull align 8 dereferenceable(640) %2) #16 ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !191
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !191
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret { ptr, i64 } { ptr @.str.28, i64 0 }
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm4yaml11needsQuotesENS_9StringRefEb(ptr %0, i64 %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.thread56, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !161     ; 2 uses
  %switch.tableidx = add i8 %i.b, -9              ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx, 24
  br i1 %i.c, label %switch.hole_check, label %_ZN4llvm7isSpaceEc.exit

_ZN4llvm7isSpaceEc.exit:                          ; preds = %switch.hole_check, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !161
  %switch.tableidx78 = add i8 %i.f, -9            ; 2 uses
  %i.g = icmp ult i8 %switch.tableidx78, 24
  br i1 %i.g, label %switch.lookup79, label %_ZN4llvm7isSpaceEc.exit32

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN4llvm7isSpaceEc.exit32, label %_ZN4llvm7isSpaceEc.exit

switch.lookup79:                                  ; preds = %_ZN4llvm7isSpaceEc.exit
  %i.h = zext nneg i8 %switch.tableidx78 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm4yaml11needsQuotesENS_9StringRefEb, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvm7isSpaceEc.exit32

_ZN4llvm7isSpaceEc.exit32:                        ; preds = %switch.hole_check, %switch.lookup79, %_ZN4llvm7isSpaceEc.exit
  %.020 = phi i32 [ 0, %_ZN4llvm7isSpaceEc.exit ], [ %switch.ext, %switch.lookup79 ], [ 1, %switch.hole_check ] ; 5 uses
  br i1 %2, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %_ZN4llvm7isSpaceEc.exit32
  switch i64 %1, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread52 [
    i64 4, label %_ZN4llvmeqENS_9StringRefES0_.exit.i
    i64 1, label %_ZN4llvm4yaml6isNullENS_9StringRefE.exit
    i64 5, label %_ZN4llvmeqENS_9StringRefES0_.exit28.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.c
  %i.i = load i32, ptr %0, align 1
  %i.j = icmp ne i32 %i.i, 1819047278
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN4llvm4yaml6isNullENS_9StringRefE.exit.thread45.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit14.i

_ZN4llvmeqENS_9StringRefES0_.exit14.i:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.m = load i32, ptr %0, align 1
  %i.n = icmp ne i32 %i.m, 1819047246
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4llvm4yaml6isNullENS_9StringRefE.exit.thread45.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit18.i

_ZN4llvmeqENS_9StringRefES0_.exit18.i:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit14.i
  %i.q = load i32, ptr %0, align 1
  %i.r = icmp ne i32 %i.q, 1280070990
  %i.s = zext i1 %i.r to i32
  %bcmp.i17.i.fr = freeze i32 %i.s
  %i.t = icmp eq i32 %bcmp.i17.i.fr, 0
  br i1 %i.t, label %_ZN4llvm4yaml6isNullENS_9StringRefE.exit.thread45.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.i33

_ZN4llvm4yaml6isNullENS_9StringRefE.exit:         ; preds = %bb.c
  %lhsc = load i8, ptr %0, align 1
  %lhsc.fr = freeze i8 %lhsc
  %i.u = icmp eq i8 %lhsc.fr, 126
  %spec.select = select i1 %i.u, i32 1, i32 %.020
  br label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread52

_ZN4llvm4yaml6isNullENS_9StringRefE.exit.thread45.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit18.i, %_ZN4llvmeqENS_9StringRefES0_.exit14.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i33

_ZN4llvmeqENS_9StringRefES0_.exit.i33:            ; preds = %_ZN4llvm4yaml6isNullENS_9StringRefE.exit.thread45.thread, %_ZN4llvmeqENS_9StringRefES0_.exit18.i
  %i.v = phi i32 [ 1, %_ZN4llvm4yaml6isNullENS_9StringRefE.exit.thread45.thread ], [ %.020, %_ZN4llvmeqENS_9StringRefES0_.exit18.i ]
  %i.w = load i32, ptr %0, align 1
  %i.x = icmp ne i32 %i.w, 1702195828
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit20.i

_ZN4llvmeqENS_9StringRefES0_.exit20.i:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i33
  %i.aa = load i32, ptr %0, align 1
  %i.ab = icmp ne i32 %i.aa, 1702195796
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit24.i

_ZN4llvmeqENS_9StringRefES0_.exit24.i:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit20.i
  %i.ae = load i32, ptr %0, align 1
  %i.af = icmp ne i32 %i.ae, 1163219540
  %i.ag = zext i1 %i.af to i32
  %bcmp.i23.i.fr = freeze i32 %i.ag
  %i.ah = icmp eq i32 %bcmp.i23.i.fr, 0
  br i1 %i.ah, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread52

_ZN4llvmeqENS_9StringRefES0_.exit28.i:            ; preds = %bb.c
  %i.ai = load i32, ptr %0, align 1
  %i.aj = xor i32 %i.ai, 1936482662
  %i.ak = getelementptr i8, ptr %0, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = xor i32 %i.am, 101
  %i.ao = or i32 %i.aj, %i.an
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit32.i

_ZN4llvmeqENS_9StringRefES0_.exit32.i:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit28.i
  %i.as = load i32, ptr %0, align 1
  %i.at = xor i32 %i.as, 1936482630
  %i.au = getelementptr i8, ptr %0, i64 4
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 %i.aw, 101
  %i.ay = or i32 %i.at, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit

_ZN4llvm4yaml6isBoolENS_9StringRefE.exit:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit32.i
  %i.bc = load i32, ptr %0, align 1
  %i.bd = xor i32 %i.bc, 1397506374
  %i.be = getelementptr i8, ptr %0, i64 4
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = xor i32 %i.bg, 69
  %i.bi = or i32 %i.bd, %i.bh
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %bcmp.i35.i.fr = freeze i32 %i.bk
  %i.bl = icmp eq i32 %bcmp.i35.i.fr, 0
  br i1 %i.bl, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread, label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread52

_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread:  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i33, %_ZN4llvmeqENS_9StringRefES0_.exit20.i, %_ZN4llvmeqENS_9StringRefES0_.exit28.i, %_ZN4llvmeqENS_9StringRefES0_.exit32.i, %_ZN4llvmeqENS_9StringRefES0_.exit24.i, %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit
  br label %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread52

_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread52: ; preds = %_ZN4llvm4yaml6isNullENS_9StringRefE.exit, %bb.c, %_ZN4llvmeqENS_9StringRefES0_.exit24.i, %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit, %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread
  %i.bm = phi i32 [ 1, %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread ], [ %.020, %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit ], [ %i.v, %_ZN4llvmeqENS_9StringRefES0_.exit24.i ], [ %.020, %bb.c ], [ %spec.select, %_ZN4llvm4yaml6isNullENS_9StringRefE.exit ]
  %i.bn = tail call noundef zeroext i1 @_ZN4llvm4yaml9isNumericENS_9StringRefE(ptr nonnull %0, i64 %1)
  %spec.select31 = select i1 %i.bn, i32 1, i32 %i.bm
  %.pre = load i8, ptr %0, align 1, !tbaa !161
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm7isSpaceEc.exit32, %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread52
  %i.bo = phi i8 [ %i.b, %_ZN4llvm7isSpaceEc.exit32 ], [ %.pre, %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread52 ]
  %.323 = phi i32 [ %.020, %_ZN4llvm7isSpaceEc.exit32 ], [ %spec.select31, %_ZN4llvm4yaml6isBoolENS_9StringRefE.exit.thread52 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.bq = sext i8 %i.bo to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.1, i32 %i.bq, i64 21)
  %.not = icmp eq ptr %memchr, null
  %spec.select29 = select i1 %.not, i32 %.323, i32 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.568 = phi i32 [ %.6.ph60, %select.unfold ], [ %spec.select29, %.lr.ph.preheader ] ; 8 uses
  %.02567 = phi ptr [ %i.by, %select.unfold ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.br = load i8, ptr %.02567, align 1, !tbaa !161 ; 4 uses
  %i.bs = and i8 %i.br, -33
  %i.bt = add i8 %i.bs, -65
  %i.bu = icmp ult i8 %i.bt, 26
  %i.bv = add i8 %i.br, -48
  %i.bw = icmp ult i8 %i.bv, 10
  %i.bx = or i1 %i.bw, %i.bu
  br i1 %i.bx, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  switch i8 %i.br, label %bb.e [
    i8 95, label %select.unfold
    i8 45, label %select.unfold
    i8 94, label %select.unfold
    i8 46, label %select.unfold
    i8 44, label %select.unfold
    i8 32, label %select.unfold
    i8 9, label %select.unfold
    i8 10, label %.thread56
    i8 13, label %.thread56
    i8 127, label %.thread56
  ]

bb.e:                                             ; preds = %bb.d
  %or.cond = icmp sgt i8 %i.br, 31
  br i1 %or.cond, label %select.unfold, label %.thread56

select.unfold:                                    ; preds = %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %.lr.ph
  %.6.ph60 = phi i32 [ %.568, %bb.d ], [ %.568, %bb.d ], [ %.568, %bb.d ], [ %.568, %bb.d ], [ %.568, %.lr.ph ], [ %.568, %bb.d ], [ %.568, %bb.d ], [ %.568, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.02567, i64 1 ; 2 uses
  %.not27 = icmp eq ptr %i.by, %i.bp
  br i1 %.not27, label %.thread56, label %.lr.ph

.thread56:                                        ; preds = %bb.d, %bb.d, %bb.d, %bb.e, %select.unfold, %bb.a
  %.4 = phi i32 [ 1, %bb.a ], [ 2, %bb.e ], [ 2, %bb.d ], [ 2, %bb.d ], [ 2, %bb.d ], [ %.6.ph60, %select.unfold ]
  ret i32 %.4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4yaml9isNumericENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 comdat {
bb.a:
  %2 = alloca %class.anon, align 1                ; 5 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  switch i64 %1, label %_ZN4llvmeqENS_9StringRefES0_.exit59.threadthread-pre-split [
    i64 0, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread
    i64 1, label %_ZN4llvmeqENS_9StringRefES0_.exit
    i64 4, label %_ZN4llvmeqENS_9StringRefES0_.exit51
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %lhsc229 = load i8, ptr %0, align 1
  %i.a = icmp eq i8 %lhsc229, 43
  br i1 %i.a, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit47

_ZN4llvmeqENS_9StringRefES0_.exit47:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %lhsc230 = load i8, ptr %0, align 1             ; 2 uses
  %i.b = icmp eq i8 %lhsc230, 45
  br i1 %i.b, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit59.thread

_ZN4llvmeqENS_9StringRefES0_.exit51:              ; preds = %bb.a
  %bcmp.i50 = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.14, i64 %1)
  %i.c = icmp eq i32 %bcmp.i50, 0
  br i1 %i.c, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit55

_ZN4llvmeqENS_9StringRefES0_.exit55:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit51
  %i.d = load i32, ptr %0, align 1
  %i.e = icmp ne i32 %i.d, 1314999854
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit59

_ZN4llvmeqENS_9StringRefES0_.exit59:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit55
  %i.h = load i32, ptr %0, align 1
  %i.i = icmp ne i32 %i.h, 1312902702
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit59.threadthread-pre-split

_ZN4llvmeqENS_9StringRefES0_.exit59.threadthread-pre-split: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit59, %bb.a
  %.pr = load i8, ptr %0, align 1, !tbaa !161
  br label %_ZN4llvmeqENS_9StringRefES0_.exit59.thread

_ZN4llvmeqENS_9StringRefES0_.exit59.thread:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit59.threadthread-pre-split, %_ZN4llvmeqENS_9StringRefES0_.exit47
  %i.l = phi i8 [ %.pr, %_ZN4llvmeqENS_9StringRefES0_.exit59.threadthread-pre-split ], [ %lhsc230, %_ZN4llvmeqENS_9StringRefES0_.exit47 ]
  switch i8 %i.l, label %bb.c [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit59.thread, %_ZN4llvmeqENS_9StringRefES0_.exit59.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = add i64 %1, -1
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit59.thread, %bb.b
  %.sroa.024.0 = phi ptr [ %i.m, %bb.b ], [ %0, %_ZN4llvmeqENS_9StringRefES0_.exit59.thread ] ; 7 uses
  %.sroa.8.0 = phi i64 [ %i.n, %bb.b ], [ %1, %_ZN4llvmeqENS_9StringRefES0_.exit59.thread ] ; 4 uses
  %cond219 = icmp eq i64 %.sroa.8.0, 4
  br i1 %cond219, label %_ZN4llvmeqENS_9StringRefES0_.exit63, label %_ZN4llvmeqENS_9StringRefES0_.exit71.thread201

_ZN4llvmeqENS_9StringRefES0_.exit63:              ; preds = %bb.c
  %i.o = load i32, ptr %.sroa.024.0, align 1
  %i.p = icmp ne i32 %i.o, 1718511918
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit67

_ZN4llvmeqENS_9StringRefES0_.exit67:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit63
  %i.s = load i32, ptr %.sroa.024.0, align 1
  %i.t = icmp ne i32 %i.s, 1718503726
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit71

_ZN4llvmeqENS_9StringRefES0_.exit71:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit67
  %i.w = load i32, ptr %.sroa.024.0, align 1
  %i.x = icmp ne i32 %i.w, 1179535662
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit71.thread201

_ZN4llvmeqENS_9StringRefES0_.exit71.thread201:    ; preds = %bb.c, %_ZN4llvmeqENS_9StringRefES0_.exit71
  %cond221 = icmp eq i64 %1, 1
  br i1 %cond221, label %_ZNK4llvm9StringRef11starts_withES0_.exit79.thread204, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit71.thread201
  %i.aa = load i16, ptr %0, align 1
  %i.ab = icmp ne i16 %i.aa, 28464
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit79

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.ae = icmp ugt i64 %1, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ag = add i64 %1, -2
  store ptr %i.af, ptr %3, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.21, i64 8, i64 noundef 0) #16
  %i.aj = icmp eq i64 %i.ai, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.ak = phi i1 [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ %i.aj, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread

_ZNK4llvm9StringRef11starts_withES0_.exit79:      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.al = load i16, ptr %0, align 1
  %i.am = icmp ne i16 %i.al, 30768
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZNK4llvm9StringRef11starts_withES0_.exit79.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit79.thread204

_ZNK4llvm9StringRef11starts_withES0_.exit79.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit79
  %i.ap = icmp ugt i64 %1, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit79.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ar = add i64 %1, -2
  store ptr %i.aq, ptr %4, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.23, i64 22, i64 noundef 0) #16
  %i.au = icmp eq i64 %i.at, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK4llvm9StringRef11starts_withES0_.exit79.thread
  %i.av = phi i1 [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit79.thread ], [ %i.au, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread

_ZNK4llvm9StringRef11starts_withES0_.exit79.thread204: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit71.thread201, %_ZNK4llvm9StringRef11starts_withES0_.exit79
  %cond222 = icmp eq i64 %.sroa.8.0, 0
  br i1 %cond222, label %_ZNK4llvm9StringRef11starts_withES0_.exit95.thread210, label %_ZNK4llvm9StringRef11starts_withES0_.exit85

_ZNK4llvm9StringRef11starts_withES0_.exit85:      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit79.thread204
  %lhsc = load i8, ptr %.sroa.024.0, align 1
  switch i8 %lhsc, label %_ZNK4llvm9StringRef11starts_withES0_.exit95.thread210 [
    i8 46, label %_ZNK4llvm9StringRef11starts_withES0_.exit85.thread
    i8 69, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread
    i8 101, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread
  ]

_ZNK4llvm9StringRef11starts_withES0_.exit85.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit85
  %cond223 = icmp eq i64 %.sroa.8.0, 1
  br i1 %cond223, label %_ZN4llvmeqENS_9StringRefES0_.exit89, label %bb.h

_ZN4llvmeqENS_9StringRefES0_.exit89:              ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit85.thread
  %lhsc231 = load i8, ptr %.sroa.024.0, align 1
  %i.aw = icmp eq i8 %lhsc231, 46
  br i1 %i.aw, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit95.thread210

bb.h:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit85.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !161 ; 2 uses
  %i.az = zext nneg i8 %i.ay to i64
  %memchr.bounds = icmp ugt i8 %i.ay, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ba, 287948901175001089
  %memchr.bits = icmp eq i64 %i.bb, 0
  %memchr41.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr41.not, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit95.thread210

_ZNK4llvm9StringRef11starts_withES0_.exit95.thread210: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit85, %bb.h, %_ZN4llvmeqENS_9StringRefES0_.exit89, %_ZNK4llvm9StringRef11starts_withES0_.exit79.thread204
  %i.bc = call { ptr, i64 } @_ZZN4llvm4yaml9isNumericENS_9StringRefEENKUlS1_E_clES1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.sroa.024.0, i64 %.sroa.8.0) ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0      ; 4 uses
  %i.be = extractvalue { ptr, i64 } %i.bc, 1      ; 4 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit95.thread210
  %i.bg = load i8, ptr %i.bd, align 1, !tbaa !161
  switch i8 %i.bg, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread [
    i8 46, label %bb.j
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
end_hunk_0
