Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-console?download=true
inline.NumInlined: 906
inline.NumDeleted: 406
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_111ConsoleCallEPNS0_7IsolateERKNS0_16BuiltinArgumentsEMNS_5debug15ConsoleDelegateEFvRKNS7_20ConsoleCallArgumentsERKNS7_14ConsoleContextEE:bb.a
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bc = load ptr, ptr %i.l, align 8
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.j, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.be = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #8
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.be, %bb.j ], [ %i.bb, %bb.i ] ; 3 uses
  %i.bf = ptrtoint ptr %.0.i.i to i64
  %i.bg = add i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.bh, ptr %i.j, align 8
  store i64 %i.ba, ptr %.0.i.i, align 8
  %.pre = load ptr, ptr %i.h, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal16BuiltinArguments6targetEv.exit
  %i.bi = phi ptr [ %i.i, %_ZNK2v88internal16BuiltinArguments6targetEv.exit ], [ %.pre, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %.sroa.061.0 = phi ptr [ %i.s, %_ZNK2v88internal16BuiltinArguments6targetEv.exit ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %.0 = phi i32 [ 0, %_ZNK2v88internal16BuiltinArguments6targetEv.exit ], [ %i.ax, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.bj = and i64 %2, 1
  %.not30 = icmp eq i64 %i.bj, 0
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.bi, align 8
  %i.bl = getelementptr i8, ptr %i.bk, i64 %2
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = load ptr, ptr %i.bm, align 8, !nosanitize !7
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bo = inttoptr i64 %2 to ptr
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bp = phi ptr [ %i.bn, %bb.l ], [ %i.bo, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @_ZN2v85debug20ConsoleCallArgumentsC1EPNS_8internal7IsolateERKNS2_16BuiltinArgumentsE(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i32 %.0, ptr %4, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.061.0, ptr %i.bq, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  store ptr %i.k, ptr %i.j, align 8
  %i.br = load i32, ptr %i.n, align 8
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr %i.n, align 8
  %i.bt = load ptr, ptr %i.l, align 8
  %.not.i = icmp eq ptr %i.bt, %i.m
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.o, !prof !6

bb.o:                                             ; preds = %bb.n
  store ptr %i.m, ptr %i.l, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.n, %bb.o, %bb.d, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN2v85debug20ConsoleCallArgumentsC1EPNS_8internal7IsolateERKNS2_16BuiltinArgumentsE(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_19FormatterEPNS0_7IsolateERNS0_16BuiltinArgumentsEi(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 7 uses
  %4 = alloca %"class.std::stack", align 8        ; 15 uses
  %5 = alloca %struct.State, align 8              ; 5 uses
  %6 = alloca [2 x %"class.v8::internal::DirectHandle.467"], align 16 ; 5 uses
  %7 = alloca [1 x %"class.v8::internal::DirectHandle.467"], align 8 ; 5 uses
  %8 = alloca %struct.State, align 8              ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = add nsw i32 %i.b, -4
  %i.d = add nuw nsw i32 %2, 2
  %i.e = icmp slt i32 %i.c, %i.d
  br i1 %i.e, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZNK2v88internal16BuiltinArgumentsixEi.exit

_ZNK2v88internal16BuiltinArgumentsixEi.exit:      ; preds = %bb.a
  %i.f = or disjoint i32 %2, 4
  %i.g = sub nuw nsw i32 -5, %2
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = add i64 %i.a, %i.h
  %i.j = shl nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.j
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal16BuiltinArgumentsixEi.exit
  %i.r = add nsw i64 %i.p, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp ult i16 %i.w, 128
  br i1 %i.x, label %bb.b, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 8, ptr %i.y, align 8
  %i.z = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 2 uses
  store ptr %i.z, ptr %4, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %i.ab = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #10 ; 6 uses
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr %i.aa, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 512 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 5 uses
  store ptr %i.aa, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr %i.ab, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr %i.af, ptr %i.ak, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  store ptr %i.ab, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 10 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 7 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3568
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.at = load i64, ptr %1, align 8               ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %.not.i103 = icmp ugt i32 %i.f, %i.au
  br i1 %.not.i103, label %bb.c, label %_ZNK2v88internal16BuiltinArguments2atINS0_6StringEEENS0_6HandleIT_EEi.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6StringEEENS0_6HandleIT_EEi.exit: ; preds = %bb.b
  %i.av = add i64 %i.at, %i.h
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = load ptr, ptr %i.k, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.aw
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %i.ba, ptr %5, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.bb, align 8
  call fastcc void @_ZNSt5stackIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSt5dequeIS7_SaIS7_EEE4pushEOS7_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.val221 = load ptr, ptr %i.ac, align 8
  %.val101222 = load ptr, ptr %i.ah, align 8      ; 2 uses
  %i.bc = icmp eq ptr %.val101222, %.val221
  br i1 %i.bc, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6StringEEENS0_6HandleIT_EEi.exit
  %i.bd = add nuw nsw i32 %2, 1
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1936
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.ap
  %.val101224 = phi ptr [ %.val101222, %.lr.ph ], [ %.val101, %bb.ap ] ; 3 uses
  %.087223 = phi i32 [ %i.bd, %.lr.ph ], [ %.289, %bb.ap ] ; 8 uses
  %i.bk = load i64, ptr %1, align 8
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -4
  %i.bn = icmp slt i32 %.087223, %i.bm
  br i1 %i.bn, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.aj, align 8, !noalias !20 ; 2 uses
  %i.bp = icmp eq ptr %.val101224, %i.bo          ; 2 uses
  br i1 %i.bp, label %bb.f, label %_ZNSt5stackIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSt5dequeIS7_SaIS7_EEE3topEv.exit

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %i.ai, align 8, !noalias !20
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 512
  br label %_ZNSt5stackIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSt5dequeIS7_SaIS7_EEE3topEv.exit

_ZNSt5stackIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSt5dequeIS7_SaIS7_EEE3topEv.exit: ; preds = %bb.e, %bb.f
  %i.bu = phi ptr [ %i.bt, %bb.f ], [ %.val101224, %bb.e ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -16 ; 2 uses
  %.sroa.046.0.copyload = load ptr, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 10 uses
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = call noundef i32 @_ZN2v88internal6String7IndexOfEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_j(ptr noundef nonnull %0, ptr %.sroa.046.0.copyload, ptr nonnull %i.as, i32 noundef %i.bx) #8 ; 4 uses
  store i32 %i.by, ptr %i.bw, align 8
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.critedge3, label %bb.g

bb.g:                                             ; preds = %_ZNSt5stackIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSt5dequeIS7_SaIS7_EEE3topEv.exit
  %i.ca = load ptr, ptr %i.bv, align 8
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = add i64 %i.cb, -1
  %i.cd = inttoptr i64 %i.cc to ptr               ; 11 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add nsw i32 %i.cf, -1
  %i.ch = icmp eq i32 %i.by, %i.cg
  br i1 %i.ch, label %.critedge3, label %bb.j

.critedge3:                                       ; preds = %_ZNSt5stackIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSt5dequeIS7_SaIS7_EEE3topEv.exit, %bb.g
  br i1 %i.bp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge3
  %i.ci = getelementptr inbounds i8, ptr %.val101224, i64 -16
  br label %_ZNSt5stackIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSt5dequeIS7_SaIS7_EEE3popEv.exit

bb.i:                                             ; preds = %.critedge3
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #11
  %i.cj = load ptr, ptr %i.ai, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8 ; 2 uses
  store ptr %i.ck, ptr %i.ai, align 8
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  store ptr %i.cl, ptr %i.aj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 512
  store ptr %i.cm, ptr %i.ak, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 496
  br label %_ZNSt5stackIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSt5dequeIS7_SaIS7_EEE3popEv.exit

_ZNSt5stackIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSt5dequeIS7_SaIS7_EEE3popEv.exit: ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi ptr [ %i.ci, %bb.h ], [ %i.cn, %bb.i ]
  store ptr %storemerge.i.i, ptr %i.ah, align 8
  br label %bb.ap, !llvm.loop !11

bb.j:                                             ; preds = %bb.g
  %i.co = add nsw i32 %.087223, 4                 ; 2 uses
  %i.cp = load i64, ptr %1, align 8               ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  %.not.i104 = icmp ugt i32 %i.co, %i.cq
  br i1 %.not.i104, label %bb.k, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !5

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %bb.j
  %i.cr = sub nsw i32 -5, %.087223
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = add i64 %i.cp, %i.cs
  %i.cu = shl nsw i64 %i.ct, 3
  %i.cv = load ptr, ptr %i.k, align 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.cu
  %i.cy = inttoptr i64 %i.cx to ptr               ; 3 uses
  %i.cz = add nuw nsw i32 %i.by, 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i8 0, ptr %i.be, align 8
  %i.da = load atomic volatile i64, ptr %i.cd acquire, align 8
  %i.db = add i64 %i.da, 11
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load atomic volatile i16, ptr %i.dc monotonic, align 2
  %i.de = and i16 %i.dd, 15
  switch i16 %i.de, label %bb.y [
    i16 8, label %bb.l
    i16 0, label %bb.m
    i16 9, label %bb.n
    i16 1, label %bb.n
    i16 10, label %bb.o
    i16 2, label %bb.s
    i16 11, label %bb.w
    i16 3, label %bb.w
    i16 13, label %bb.x
    i16 5, label %bb.x
  ]

bb.l:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dg = zext nneg i32 %i.cz to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.m:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dl = zext nneg i32 %i.cz to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.n:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.do = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.cd, i32 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.o:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = inttoptr i64 %i.dq to ptr               ; 6 uses
  %i.ds = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.dt = add i64 %i.ds, 11
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load atomic volatile i16, ptr %i.du monotonic, align 2
  %i.dw = and i16 %i.dv, 16
  %.not.i.i105 = icmp eq i16 %i.dw, 0
  br i1 %.not.i.i105, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dx = load ptr, ptr %i.dr, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dr) #8, !inline_history !12
  br i1 %i.ea, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ed = load ptr, ptr %i.dr, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call noundef ptr %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #8, !inline_history !12
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.ec, %bb.q ], [ %i.eg, %bb.r ]
  %i.eh = zext nneg i32 %i.cz to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = zext i8 %i.ej to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.s:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.em = load i64, ptr %i.el, align 8
  %i.en = inttoptr i64 %i.em to ptr               ; 6 uses
  %i.eo = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.ep = add i64 %i.eo, 11
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load atomic volatile i16, ptr %i.eq monotonic, align 2
  %i.es = and i16 %i.er, 16
  %.not.i.i106 = icmp eq i16 %i.es, 0
  br i1 %.not.i.i106, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.et = load ptr, ptr %i.en, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.en) #8, !inline_history !13
  br i1 %i.ew, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ez = load ptr, ptr %i.en, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef ptr %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #8, !inline_history !13
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.u, %bb.v
  %.0.i.i107 = phi ptr [ %i.ey, %bb.u ], [ %i.fc, %bb.v ]
  %i.fd = zext nneg i32 %i.cz to i64
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i107, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.w:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.fg = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.cd, i32 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.x:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.fh = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.cd, i32 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.y:                                             ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #9
end_hunk_0
begin_hunk_1_@_ZN2v88internal7Factory31NewSharedFunctionInfoForBuiltinENS0_17MaybeDirectHandleINS0_6StringEEENS0_7BuiltinEiNS0_14AdaptArgumentsENS0_12FunctionKindE

declare void @_ZN2v88internal7Factory17JSFunctionBuilderC1EPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS5_INS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr, ptr) unnamed_addr #3

declare ptr @_ZN2v88internal7Factory17JSFunctionBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN2v88internal10JSFunction12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEE(ptr noundef, ptr, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory17NewBuiltinContextENS0_12DirectHandleINS0_13NativeContextEEEi(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_122InstallContextFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinENS4_INS0_7ContextEEE(ptr noundef %0, ptr %1, ptr noundef %2, i32 noundef %3, ptr %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.598", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::Factory::JSFunctionBuilder", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 31
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 1751
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal7Isolate37sloppy_function_without_prototype_mapEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #8
  br label %_ZN2v88internal7Isolate37sloppy_function_without_prototype_mapEv.exit

_ZN2v88internal7Isolate37sloppy_function_without_prototype_mapEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  %i.q = ptrtoint ptr %.0.i.i.i to i64            ; 2 uses
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12
  %i.u = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, i64 %i.t) #8 ; 2 uses
  %i.v = tail call ptr @_ZN2v88internal7Factory31NewSharedFunctionInfoForBuiltinENS0_17MaybeDirectHandleINS0_6StringEEENS0_7BuiltinEiNS0_14AdaptArgumentsENS0_12FunctionKindE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.u, i32 noundef %3, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0) #8 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = add i64 %i.w, 55
  %i.y = inttoptr i64 %i.x to ptr                 ; 6 uses
  %i.z = load atomic volatile i32, ptr %i.y monotonic, align 4
  %i.aa = and i32 %i.z, -65
  store atomic volatile i32 %i.aa, ptr %i.y monotonic, align 4
  %i.ab = load atomic volatile i32, ptr %i.y monotonic, align 4
  %i.ac = and i32 %i.ab, 64
  %.not.i.i = icmp eq i32 %i.ac, 0
  %i.ad = load atomic volatile i32, ptr %i.y monotonic, align 4
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 31                        ; 4 uses
  %i.ag = add i64 %i.w, 23
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i64, ptr %i.ah acquire, align 8 ; 4 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal7Isolate37sloppy_function_without_prototype_mapEv.exit
  %i.ak = add nsw i64 %i.ai, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 284
  br i1 %i.aq, label %bb.c, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i64 %i.ai, ptr %5, align 8
  %i.ar = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZN2v88internal7Isolate37sloppy_function_without_prototype_mapEv.exit
  %i.as = icmp ne i64 %i.ai, 0
  br label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, %bb.c
  %.0.i.i.i20 = phi i1 [ %i.ar, %bb.c ], [ %i.as, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i ]
  %i.at = add nsw i8 %i.af, -3
  %i.au = icmp ult i8 %i.at, 4
  br i1 %i.au, label %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i
  %i.av = add nsw i8 %i.af, -16
  %i.aw = icmp ult i8 %i.av, 6
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = icmp samesign ult i8 %i.af, 19
  %i.ay = select i1 %i.ax, i32 228, i32 226
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %switch.tableidx = add nsw i8 %i.af, -2         ; 3 uses
  %i.az = icmp ult i8 %switch.tableidx, 24
  br i1 %i.az, label %switch.hole_check, label %bb.g

bb.g:                                             ; preds = %switch.hole_check, %bb.f
  %i.ba = select i1 %.not.i.i, i32 215, i32 219
  br label %bb.h

switch.hole_check:                                ; preds = %bb.f
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 15744993, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bb = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal12_GLOBAL__N_122InstallContextFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinENS4_INS0_7ContextEEE, i64 %i.bb
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.g, %bb.e
  %.011.i.i.i = phi i32 [ %i.ay, %bb.e ], [ %i.ba, %bb.g ], [ %switch.ext, %switch.lookup ]
  %i.bc = xor i1 %.0.i.i.i20, true
  %i.bd = zext i1 %i.bc to i32
  %i.be = add nuw nsw i32 %.011.i.i.i, %i.bd
  %i.bf = shl nuw nsw i32 %i.be, 14
  %i.bg = add nsw i32 %i.bf, -3522560
  br label %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit

_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i, %bb.h
  %.0.i1.i.i = phi i32 [ %i.bg, %bb.h ], [ 245760, %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i ]
  %i.bh = load atomic volatile i32, ptr %i.y monotonic, align 4
  %i.bi = and i32 %i.bh, -507905
  %i.bj = or i32 %i.bi, %.0.i1.i.i
  store atomic volatile i32 %i.bj, ptr %i.y monotonic, align 4
  %i.bk = load i64, ptr %i.v, align 8
  %i.bl = add i64 %i.bk, 55
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = load atomic volatile i32, ptr %i.bm monotonic, align 4
  %i.bo = or i32 %i.bn, 32
  store atomic volatile i32 %i.bo, ptr %i.bm monotonic, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZN2v88internal7Factory17JSFunctionBuilderC1EPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS5_INS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %0, ptr nonnull %i.v, ptr %4) #8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.q, ptr %i.bp, align 8
  %i.bq = call ptr @_ZN2v88internal7Factory17JSFunctionBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef nonnull %0, ptr %1, ptr %i.u, ptr %i.bq, i32 noundef 0) #8
  ret void
}

declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #3

declare void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef, ptr, ptr, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{}
!8 = !{i8 0, i8 2}
!11 = distinct !{!11, !16}
!12 = distinct !{null, null}
!13 = distinct !{null, null}
!14 = distinct !{!14, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"branch_weights", !"expected", i32 3609197, i32 2143874451}
!18 = distinct !{!18, i1 false, !"_ZNSt5dequeIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSaIS7_EE3endEv"}
!19 = distinct !{!19, !18, !"_ZNSt5dequeIZN2v88internal12_GLOBAL__N_19FormatterEPNS1_7IsolateERNS1_16BuiltinArgumentsEiE5StateSaIS7_EE3endEv: argument 0"}
!20 = !{!19}
end_hunk_1
