Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/arcread?download=true
inline.NumInlined: 217
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7Archive17ConvertFileHeaderEP10FileHeader:bb.a

bb.d:                                             ; preds = %.sink.split36, %.split.us.split.us.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %.0.us.us.us, i64 4
  br label %.split.us.split.us.split.us, !llvm.loop !0

.split.split:                                     ; preds = %bb.b, %bb.e
  %.0 = phi ptr [ %i.p, %bb.e ], [ %i.h, %bb.b ]  ; 3 uses
  %i.o = load i32, ptr %.0, align 4, !tbaa !102
  switch i32 %i.o, label %bb.e [
    i32 0, label %.split19.us
    i32 92, label %.thread17
    i32 47, label %.thread17
  ]

.split19.us:                                      ; preds = %.split.split, %.split.us.split.us.split.us, %.split.us
  ret void

.thread17:                                        ; preds = %.split.split, %.split.split
  store i32 47, ptr %.0, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %.split.split, %.thread17
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 4
  br label %.split.split, !llvm.loop !0
}

declare noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5ArrayIhE5AllocEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.c = icmp ugt i64 %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %1, ptr %i.d, align 8, !tbaa !161
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !162  ; 3 uses
  %.not.i = icmp ne i64 %i.f, 0
  %i.g = icmp ugt i64 %1, %i.f
  %or.cond.i = and i1 %.not.i, %i.g
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.9, i64 noundef %i.f)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !160
  %.pre10.i = load i64, ptr %i.d, align 8, !tbaa !161
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i64 [ %.pre10.i, %bb.c ], [ %1, %bb.b ]
  %i.i = phi i64 [ %.pre.i, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add i64 %i.i, 32
  %i.l = add i64 %i.k, %i.j
  %..i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.l) ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !106
  %i.n = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %..i) #24 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %_ZN5ArrayIhE3AddEm.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %_ZN5ArrayIhE3AddEm.exit

_ZN5ArrayIhE3AddEm.exit:                          ; preds = %bb.d, %bb.e
  store ptr %i.n, ptr %0, align 8, !tbaa !106
  store i64 %..i, ptr %i.a, align 8, !tbaa !160
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN5ArrayIhE3AddEm.exit
  ret void
}

declare void @_ZN7RarTime6SetDosEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN7RarTime8GetLocalEP12RarLocalTime(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN7RarTime8SetLocalEP12RarLocalTime(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN7RawRead8GetCRC15Eb(ptr noundef nonnull align 8 dereferenceable(64), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z5uiMsgIJRA2048_wS1_EEv14UIMESSAGE_CODEDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(8192) %1, ptr noundef nonnull align 4 dereferenceable(8192) %2) local_unnamed_addr #0 comdat {
_ZN10uiMsgStorelsEPKw.exit.i:
  %3 = alloca %class.uiMsgStore, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x ptr> <ptr @.str.8, ptr @.str.8, ptr @.str.8, ptr @.str.8>, ptr %i.b, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @.str.8, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @.str.8, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store i32 %0, ptr %i.f, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %1, ptr %3, align 8, !tbaa !67
  store i32 2, ptr %i.g, align 8, !tbaa !71
  store ptr %2, ptr %i.a, align 8, !tbaa !67
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare noundef zeroext i8 @_ZN4File7GetByteEv(ptr noundef nonnull align 8 dereferenceable(8256)) local_unnamed_addr #2

declare noundef zeroext i1 @_Z21uiIsGlobalPasswordSetv() local_unnamed_addr #2

declare void @_ZN11SecPassword5CleanEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN16RarCheckPasswordD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV16RarCheckPassword, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9CryptDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2516) dereferenceable(2516) %i.b) #20
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZN7RawRead8GetVSizeEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i32 @_ZN7RawRead8GetCRC50Ev(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @_Z11sha256_initP14sha256_context(ptr noundef) local_unnamed_addr #2

declare void @_Z14sha256_processP14sha256_contextPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_Z11sha256_doneP14sha256_contextPh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Archive14ProcessExtra50EP7RawReadmPK9BaseBlock(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.uiMsgStore, align 16         ; 11 uses
  %i.a = alloca [20 x i32], align 16              ; 4 uses
  %i.b = alloca [20 x i32], align 16              ; 4 uses
  %i.c = alloca [4 x i8], align 1                 ; 4 uses
  %5 = alloca %struct.sha256_context, align 8     ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [20 x i32], align 16              ; 4 uses
  %i.f = alloca [8192 x i8], align 16             ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !105
  %i.i = sub i64 %i.h, %2                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !217
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %.thread279, label %.preheader

.preheader:                                       ; preds = %bb.a
  store i64 %i.i, ptr %i.j, align 8, !tbaa !217
  %i.m = icmp ugt i64 %2, 1
  br i1 %i.m, label %.lr.ph, label %.thread279

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48824 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8232 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8248 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8240 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8256
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16662 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16663 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16920 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16664 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 17176
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 17180
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16661
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8464
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16660
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8468
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8443
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8264 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8272 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8280 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8312
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8316
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8393 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8402
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8436
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8361
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8377
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8394 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8360
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8356
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8355
  %7 = insertelement <2 x ptr> poison, ptr %6, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %i.ak, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread281
  %i.bg = call noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 3 uses
  %i.bh = icmp slt i64 %i.bg, 1
  br i1 %i.bh, label %.thread279, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !105
  %i.bj = load i64, ptr %i.j, align 8, !tbaa !217 ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp sgt i64 %i.bg, %i.bk
  br i1 %i.bl, label %.thread279, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = add i64 %i.bj, %i.bg                    ; 4 uses
  %i.bn = call noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %i.bo = load i64, ptr %i.j, align 8, !tbaa !217
  %i.bp = sub i64 %i.bm, %i.bo                    ; 5 uses
  %i.bq = icmp slt i64 %i.bp, 0
  br i1 %i.bq, label %.thread279, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = load i32, ptr %i.n, align 4, !tbaa !79  ; 2 uses
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  switch i64 %i.bn, label %.thread281 [
    i64 1, label %bb.g
    i64 2, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.r, align 2, !tbaa !218
  %i.bt = call noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.bu = trunc i64 %i.bt to i32                  ; 2 uses
  %i.bv = and i32 %i.bu, 1
  %.not218 = icmp eq i32 %i.bv, 0
  br i1 %.not218, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = call noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %.not219 = icmp eq i64 %i.bw, 0
  br i1 %.not219, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load i64, ptr %i.s, align 8, !tbaa !64
  %i.by = add i64 %i.bx, %i.bw
  store i64 %i.by, ptr %i.t, align 8, !tbaa !219
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.bz = and i32 %i.bu, 2
  %.not220 = icmp eq i32 %i.bz, 0
  br i1 %.not220, label %thread-pre-split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = call noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %.not221 = icmp eq i64 %i.ca, 0
  br i1 %.not221, label %thread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i64, ptr %i.s, align 8, !tbaa !64
  %i.cc = add i64 %i.cb, %i.ca
  store i64 %i.cc, ptr %i.u, align 8, !tbaa !220
  br label %thread-pre-split

bb.m:                                             ; preds = %bb.f
  %i.cd = call noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.ce = trunc i64 %i.cd to i32                  ; 4 uses
  %i.cf = and i32 %i.ce, 1
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = call noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 7 uses
  %i.ch = add i64 %i.cg, -1                       ; 3 uses
  %or.cond = icmp ult i64 %i.ch, 65535
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.u

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.n
  %i.ci = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #22 ; 10 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.cg  ; 2 uses
  store i8 0, ptr %i.ci, align 1, !tbaa !81
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 2 uses
  %i.cl = icmp eq i64 %i.ch, 0
  br i1 %i.cl, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.o, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i = phi ptr [ %i.cj, %bb.o ], [ %i.ck, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %i.cm = invoke noundef i64 @_ZN7RawRead4GetBEPvm(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.ci, i64 noundef %i.cg)
          to label %bb.p unwind label %.loopexit  ; 0 uses

bb.p:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.cn = load i8, ptr %i.ci, align 1, !tbaa !81
  %.not211 = icmp eq i8 %i.cn, 0
  br i1 %.not211, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i = icmp eq ptr %.0.i.i.i.i.i, %i.cj
  br i1 %.not.i.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %.0.i.i.i.i.i, align 1, !tbaa !81
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.co = shl nuw nsw i64 %i.cg, 1
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #22
          to label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i unwind label %.loopexit ; 3 uses

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cg ; 2 uses
  store i8 0, ptr %i.cq, align 1, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull align 1 %i.ci, i64 %i.cg, i1 false)
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #23
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.r
  %.pn = phi ptr [ %i.cq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.0.i.i.i.i.i, %bb.r ]
  %.sroa.0256.3 = phi ptr [ %i.cp, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %i.ci, %bb.r ] ; 5 uses
  %.sroa.14.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.cr = ptrtoint ptr %.sroa.14.0 to i64
  %i.cs = ptrtoint ptr %.sroa.0256.3 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = shl i64 %i.ct, 2                        ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 2305843009213693951
  br i1 %i.cv, label %bb.s, label %_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i

bb.s:                                             ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25
          to label %.noexc240 unwind label %.loopexit.split-lp286.loopexit.split-lp

.noexc240:                                        ; preds = %bb.s
  unreachable

_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %.not.i.i.i.i238 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i238)
  %i.cw = shl i64 %i.ct, 4                        ; 3 uses
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #22
          to label %.noexc241 unwind label %.loopexit.split-lp286.loopexit.split-lp ; 7 uses

.noexc241:                                        ; preds = %_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i
  store i32 0, ptr %i.cx, align 4, !tbaa !102
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %.idx.i.i.i.i.i.i.i = add i64 %i.cw, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cy, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !102
  %i.cz = ashr exact i64 %i.cw, 2
  %i.da = invoke noundef zeroext i1 @_Z9UtfToWidePKcPwm(ptr noundef nonnull %.sroa.0256.3, ptr noundef nonnull %i.cx, i64 noundef %i.cz)
          to label %bb.t unwind label %_ZNSt6vectorIwSaIwEED2Ev.exit244 ; 0 uses

bb.t:                                             ; preds = %.noexc241
  %i.db = load i64, ptr %i.p, align 8, !tbaa !221
  %i.dc = call noundef i64 @wcslen(ptr noundef nonnull %i.cx) #21
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.db, ptr noundef nonnull %i.cx, i64 noundef %i.dc)
          to label %_ZNSt6vectorIwSaIwEED2Ev.exit unwind label %_ZNSt6vectorIwSaIwEED2Ev.exit244 ; 0 uses

_ZNSt6vectorIwSaIwEED2Ev.exit:                    ; preds = %bb.t
  call void @_ZdlPv(ptr noundef nonnull %i.cx) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit247

.loopexit.split-lp286.loopexit.split-lp:          ; preds = %_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit247

_ZNSt6vectorIwSaIwEED2Ev.exit244:                 ; preds = %bb.t, %.noexc241
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.cx) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit247

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorIwSaIwEED2Ev.exit, %bb.p
  %.sroa.0256.0 = phi ptr [ %i.ci, %bb.p ], [ %.sroa.0256.3, %_ZNSt6vectorIwSaIwEED2Ev.exit ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0256.0) #23
  br label %bb.u

_ZNSt6vectorIcSaIcEED2Ev.exit247:                 ; preds = %.loopexit.split-lp286.loopexit.split-lp, %.loopexit, %_ZNSt6vectorIwSaIwEED2Ev.exit244
  %.sroa.0256.1 = phi ptr [ %.sroa.0256.3, %_ZNSt6vectorIwSaIwEED2Ev.exit244 ], [ %.sroa.0256.3, %.loopexit.split-lp286.loopexit.split-lp ], [ %i.ci, %.loopexit ]
  %.pn.pn = phi { ptr, i32 } [ %i.de, %_ZNSt6vectorIwSaIwEED2Ev.exit244 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp286.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0256.1) #23
  resume { ptr, i32 } %.pn.pn

bb.u:                                             ; preds = %bb.n, %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.m
  %i.df = and i32 %i.ce, 2
  %.not215 = icmp eq i32 %i.df, 0
  br i1 %.not215, label %thread-pre-split, label %bb.v

bb.v:                                             ; preds = %bb.u
end_hunk_0
