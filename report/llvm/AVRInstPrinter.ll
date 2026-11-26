Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AVRInstPrinter?download=true
inline.NumInlined: 85
inline.NumDeleted: 46
begin_hunk_0_@_ZN4llvm14AVRInstPrinter16printInstructionEPKNS_6MCInstEmRNS_11raw_ostreamE:bb.a
bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4llvm14AVRInstPrinter10printMemriEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.1) ; 0 uses
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4llvm14AVRInstPrinter13printPCRelImmEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.v

bb.g:                                             ; preds = %bb.a, %bb.e
  %.sink = phi i32 [ 1, %bb.e ], [ 0, %bb.a ]
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef %.sink, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.n = lshr i32 %i.i, 14
  %i.o = and i32 %i.n, 7
  switch i32 %i.o, label %bb.h [
    i32 0, label %bb.i
    i32 1, label %bb.v
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.1) ; 0 uses
  %i.q = lshr i32 %i.i, 17
  %i.r = and i32 %i.q, 7
  switch i32 %i.r, label %bb.m [
    i32 0, label %bb.r
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
  ]

bb.j:                                             ; preds = %bb.g
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.2) ; 0 uses
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.v

bb.k:                                             ; preds = %bb.g
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.3) ; 0 uses
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.v

bb.l:                                             ; preds = %bb.g
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEc(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext 43) ; 0 uses
  br label %bb.v

bb.m:                                             ; preds = %bb.i
  unreachable

bb.n:                                             ; preds = %bb.i
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  tail call void @_ZN4llvm14AVRInstPrinter10printMemriEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.v

bb.p:                                             ; preds = %bb.i
  tail call void @_ZN4llvm14AVRInstPrinter13printPCRelImmEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.v

bb.q:                                             ; preds = %bb.i
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.v

bb.r:                                             ; preds = %bb.i, %bb.n
  %.sink49 = phi i32 [ 1, %bb.n ], [ 2, %bb.i ]
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef %.sink49, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.v = lshr i32 %i.i, 20
  %i.w = and i32 %i.v, 3
  switch i32 %i.w, label %default.unreachable48 [
    i32 0, label %bb.v
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
  ]

default.unreachable48:                            ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.x = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.1) ; 0 uses
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.3) ; 0 uses
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEc(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext 43) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.g, %bb.a, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %i.a) #12
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.anon, align 8                ; 4 uses
  %5 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.a ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !30
  switch i8 %i.e, label %bb.n [
    i8 1, label %bb.b
    i8 2, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69, !nonnull !43, !align !44
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = load i32, ptr %1, align 8, !tbaa !18
  %i.j = zext i32 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !74
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.r = load i16, ptr %i.q, align 4, !tbaa !75
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [6 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw [6 x i8], ptr %i.t, i64 %i.a
  %i.v = load i16, ptr %i.u, align 2, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !20   ; 4 uses
  switch i16 %i.v, label %bb.c [
    i16 26, label %.critedge
    i16 28, label %.critedge
    i16 32, label %.critedge
  ]

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !78, !nonnull !43, !align !44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !61
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %_ZN4llvm14AVRInstPrinter21getPrettyRegisterNameENS_10MCRegisterERKNS_14MCRegisterInfoE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.z, i32 %i.x, i32 noundef 2) #12 ; 2 uses
  %.not7.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not7.i, i32 %i.x, i32 %i.ac
  br label %_ZN4llvm14AVRInstPrinter21getPrettyRegisterNameENS_10MCRegisterERKNS_14MCRegisterInfoE.exit

_ZN4llvm14AVRInstPrinter21getPrettyRegisterNameENS_10MCRegisterERKNS_14MCRegisterInfoE.exit: ; preds = %bb.c, %bb.d
  %.sroa.05.0.i = phi i32 [ %i.x, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = add i32 %.sroa.05.0.i, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZZN4llvm14AVRInstPrinter15getRegisterNameENS_10MCRegisterEjE24RegAsmOffsetNoRegAltName, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN4llvm14AVRInstPrinter15getRegisterNameENS_10MCRegisterEjE19AsmStrsNoRegAltName, i64 %i.ai ; 3 uses
  %i.ak = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #12 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ugt i64 %i.ak, %i.ar
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm14AVRInstPrinter21getPrettyRegisterNameENS_10MCRegisterERKNS_14MCRegisterInfoE.exit
  %i.at = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.aj, i64 noundef %i.ak) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %_ZN4llvm14AVRInstPrinter21getPrettyRegisterNameENS_10MCRegisterERKNS_14MCRegisterInfoE.exit
  %.not.i2.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i2.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 1 %i.aj, i64 %i.ak, i1 false)
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ak
  store ptr %i.av, ptr %i.an, align 8, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b
  %i.aw = add i32 %i.x, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZZN4llvm14AVRInstPrinter15getRegisterNameENS_10MCRegisterEjE15RegAsmOffsetptr, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZZN4llvm14AVRInstPrinter15getRegisterNameENS_10MCRegisterEjE10AsmStrsptr, i64 %i.ba ; 3 uses
  %i.bc = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #12 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26 ; 2 uses
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ugt i64 %i.bc, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.bl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.bb, i64 noundef %i.bc) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.i:                                             ; preds = %.critedge
  %.not.i2.i19 = icmp eq i64 %i.bc, 0
  br i1 %.not.i2.i19, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull align 1 %i.bb, i64 %i.bc, i1 false)
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bc
  store ptr %i.bn, ptr %i.bf, align 8, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.k:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !20 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !79, !range !80, !noalias !81, !noundef !43
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZNK4llvm13MCInstPrinter9formatHexEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::format_object") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.bp) #12
  br label %_ZNK4llvm13MCInstPrinter9formatImmEl.exit

bb.m:                                             ; preds = %bb.k
  call void @_ZNK4llvm13MCInstPrinter9formatDecEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::format_object") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.bp) #12
  br label %_ZNK4llvm13MCInstPrinter9formatImmEl.exit

_ZNK4llvm13MCInstPrinter9formatImmEl.exit:        ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %5, ptr %4, align 8, !tbaa !82
  %i.bt = ptrtoint ptr %4 to i64
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJlEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.bt) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.n:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !63, !nonnull !43, !align !44
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !20
  tail call void @_ZNK4llvm9MCAsmInfo9printExprERNS_11raw_ostreamERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.by) #12
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZNK4llvm13MCInstPrinter9formatImmEl.exit, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14AVRInstPrinter11printMemspiEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i32 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = zext i32 %i.a to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.c ; 3 uses
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30    ; 2 uses
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  br i1 %i.j, label %bb.c, label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %.not.i.i = icmp ult ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 43) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.p, ptr %i.k, align 8, !tbaa !26
  store i8 43, ptr %i.l, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.e, %bb.d, %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.i) #12 ; 0 uses
  br label %_ZN4llvm14AVRInstPrinter10printMemriEPKNS_6MCInstEjRNS_11raw_ostreamE.exit

bb.f:                                             ; preds = %bb.a
  %i.r = icmp eq i8 %i.f, 5
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63, !nonnull !43, !align !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  tail call void @_ZNK4llvm9MCAsmInfo9printExprERNS_11raw_ostreamERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.v) #12
  br label %_ZN4llvm14AVRInstPrinter10printMemriEPKNS_6MCInstEjRNS_11raw_ostreamE.exit

_ZN4llvm14AVRInstPrinter10printMemriEPKNS_6MCInstEjRNS_11raw_ostreamE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14AVRInstPrinter10printMemriEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = add i32 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = zext i32 %i.a to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.c ; 3 uses
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30    ; 2 uses
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  br i1 %i.j, label %bb.c, label %_ZN4llvm11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %.not.i = icmp ult ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 43) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.p, ptr %i.k, align 8, !tbaa !26
  store i8 43, ptr %i.l, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.e, %bb.d, %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.i) #12 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.r = icmp eq i8 %i.f, 5
  tail call void @llvm.assume(i1 %i.r)
end_hunk_0
begin_hunk_1_@_ZN4llvm14AVRInstPrinter9printInstEPKNS_6MCInstEmNS_9StringRefERKNS_15MCSubtargetInfoERNS_11raw_ostreamE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.z, ptr %i.d, align 8, !tbaa !26
  store i8 45, ptr %i.w, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

_ZN4llvm11raw_ostreamlsEc.exit.thread:            ; preds = %bb.i, %bb.h
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %_ZN4llvm11raw_ostreamlsEc.exit42

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.aa = icmp eq i32 %i.a, 477
  br i1 %i.aa, label %bb.j, label %_ZN4llvm11raw_ostreamlsEc.exit42

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !26  ; 3 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !25
  %.not.i40 = icmp ult ptr %i.ab, %i.ac
  br i1 %.not.i40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 noundef zeroext 43) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit42

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !26
  store i8 43, ptr %i.ab, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit42

bb.m:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.5, i64 noundef 4) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45

bb.o:                                             ; preds = %bb.m
  store i32 158626569, ptr %i.ai, align 1
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45

_ZN4llvm11raw_ostreamlsEPKc.exit45:               ; preds = %bb.n, %bb.o
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 2
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45
  %i.aw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i64 noundef 2) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45
  store i16 8236, ptr %i.ar, align 1
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

_ZN4llvm11raw_ostreamlsEPKc.exit48:               ; preds = %bb.p, %bb.q
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %_ZN4llvm11raw_ostreamlsEc.exit42

bb.r:                                             ; preds = %bb.a, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 10 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ult i64 %i.bf, 4
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.5, i64 noundef 4) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51

bb.t:                                             ; preds = %bb.r
  store i32 158626569, ptr %i.bc, align 1
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store ptr %i.bj, ptr %i.bb, align 8, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51

_ZN4llvm11raw_ostreamlsEPKc.exit51:               ; preds = %bb.s, %bb.t
  %i.bk = icmp eq i32 %i.a, 513
  br i1 %i.bk, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit51
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 3 uses
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !25
  %.not.i52 = icmp ult ptr %i.bl, %i.bm
  br i1 %.not.i52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 noundef zeroext 45) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit54.thread

bb.w:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bo, ptr %i.bb, align 8, !tbaa !26
  store i8 45, ptr %i.bl, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit54.thread

_ZN4llvm11raw_ostreamlsEc.exit54.thread:          ; preds = %bb.w, %bb.v
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %_ZN4llvm11raw_ostreamlsEc.exit57

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit51
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 3 uses
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !25
  %.not.i55 = icmp ult ptr %i.bp, %i.bq
  br i1 %.not.i55, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 noundef zeroext 43) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit57

bb.z:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bs, ptr %i.bb, align 8, !tbaa !26
  store i8 43, ptr %i.bp, align 1, !tbaa !20
  br label %_ZN4llvm11raw_ostreamlsEc.exit57

_ZN4llvm11raw_ostreamlsEc.exit57:                 ; preds = %bb.z, %bb.y, %_ZN4llvm11raw_ostreamlsEc.exit54.thread
  %i.bt = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.bu = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, 2
  br i1 %i.by, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit57
  %i.bz = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i64 noundef 2) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit60

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit57
  store i16 8236, ptr %i.bu, align 1
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store ptr %i.cb, ptr %i.bb, align 8, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit60

_ZN4llvm11raw_ostreamlsEPKc.exit60:               ; preds = %bb.aa, %bb.ab
  tail call void @_ZN4llvm14AVRInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %_ZN4llvm11raw_ostreamlsEc.exit42

bb.ac:                                            ; preds = %bb.a
  %i.cc = tail call noundef zeroext i1 @_ZN4llvm14AVRInstPrinter15printAliasInstrEPKNS_6MCInstEmRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i64 poison, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br i1 %i.cc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN4llvm14AVRInstPrinter16printInstructionEPKNS_6MCInstEmRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i64 poison, ptr noundef nonnull align 8 dereferenceable(48) %6)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #12
  br label %_ZN4llvm11raw_ostreamlsEc.exit42

_ZN4llvm11raw_ostreamlsEc.exit42:                 ; preds = %bb.l, %bb.k, %_ZN4llvm11raw_ostreamlsEc.exit.thread, %_ZN4llvm11raw_ostreamlsEc.exit, %bb.ae, %_ZN4llvm11raw_ostreamlsEPKc.exit60, %_ZN4llvm11raw_ostreamlsEPKc.exit48
  ret void
}

declare void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4llvm14AVRInstPrinter21getPrettyRegisterNameENS_10MCRegisterERKNS_14MCRegisterInfoE(i32 %0, ptr noundef nonnull align 8 dereferenceable(240) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %1, i32 %0, i32 noundef 2) #12 ; 2 uses
  %.not7 = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not7, i32 %0, i32 %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.05.0 = phi i32 [ %0, %bb.a ], [ %i.d, %bb.b ]
  %i.e = add i32 %.sroa.05.0, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN4llvm14AVRInstPrinter15getRegisterNameENS_10MCRegisterEjE24RegAsmOffsetNoRegAltName, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZN4llvm14AVRInstPrinter15getRegisterNameENS_10MCRegisterEjE19AsmStrsNoRegAltName, i64 %i.i
  ret ptr %i.j
}

declare i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240), i32, i32 noundef) local_unnamed_addr #5

declare void @_ZNK4llvm9MCAsmInfo9printExprERNS_11raw_ostreamERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm13MCInstPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14AVRInstPrinterD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm13MCInstPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm13MCInstPrinter27applyTargetSpecificCLOptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, i64 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm13MCInstPrinter12printRegNameERNS_11raw_ostreamENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(48), i32) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNK4llvm13MCInstPrinter9formatHexEl(ptr dead_on_unwind writable sret(%"class.llvm::format_object") align 8, ptr noundef nonnull align 8 dereferenceable(96), i64 noundef) local_unnamed_addr #5

declare void @_ZNK4llvm13MCInstPrinter9formatDecEl(ptr dead_on_unwind writable sret(%"class.llvm::format_object") align 8, ptr noundef nonnull align 8 dereferenceable(96), i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJlEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !nonnull !43, !align !44 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i64 noundef %i.f) #12
  ret i32 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noprofile nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSN4llvm5SMLocE", !9, i64 0}
!11 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !8, i64 0, !5, i64 8, !5, i64 12}
!12 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9MCOperandEvEE", !11, i64 0}
!13 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EEE", !12, i64 0}
!14 = !{!"_ZTSN4llvm15SmallVectorImplINS_9MCOperandEEE", !13, i64 0}
!15 = !{!"_ZTSN4llvm18SmallVectorStorageINS_9MCOperandELj6EEE", !4, i64 0}
!16 = !{!"_ZTSN4llvm11SmallVectorINS_9MCOperandELj6EEE", !14, i64 0, !15, i64 16}
!17 = !{!"_ZTSN4llvm6MCInstE", !5, i64 0, !5, i64 4, !10, i64 8, !16, i64 16}
!18 = !{!17, !5, i64 0}
!19 = !{!"short", !4, i64 0}
!20 = !{!4, !4, i64 0}
!21 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !4, i64 0}
!22 = !{!"bool", !4, i64 0}
!23 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !4, i64 0}
!24 = !{!"_ZTSN4llvm11raw_ostreamE", !21, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !22, i64 40, !23, i64 44}
!25 = !{!24, !9, i64 24}
!26 = !{!24, !9, i64 32}
!27 = !{!11, !8, i64 0}
!28 = !{!"_ZTSN4llvm9MCOperand18MachineOperandTypeE", !4, i64 0}
!29 = !{!"_ZTSN4llvm9MCOperandE", !28, i64 0, !4, i64 8}
!30 = !{!29, !28, i64 0}
!31 = !{!"p1 _ZTSN4llvm11raw_ostreamE", !8, i64 0}
!32 = !{!"p1 _ZTSN4llvm9MCAsmInfoE", !8, i64 0}
!33 = !{!"p1 _ZTSN4llvm11MCInstrInfoE", !8, i64 0}
!34 = !{!"p1 _ZTSN4llvm14MCRegisterInfoE", !8, i64 0}
!35 = !{!"p1 _ZTSN4llvm15MCInstrAnalysisE", !8, i64 0}
!36 = !{!"_ZTSN4llvm8HexStyle5StyleE", !4, i64 0}
!37 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_11raw_ostream6ColorsEvEE", !11, i64 0}
!38 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_11raw_ostream6ColorsELb1EEE", !37, i64 0}
!39 = !{!"_ZTSN4llvm15SmallVectorImplINS_11raw_ostream6ColorsEEE", !38, i64 0}
!40 = !{!"_ZTSN4llvm18SmallVectorStorageINS_11raw_ostream6ColorsELj4EEE", !4, i64 0}
!41 = !{!"_ZTSN4llvm11SmallVectorINS_11raw_ostream6ColorsELj4EEE", !39, i64 0, !40, i64 16}
!42 = !{!"_ZTSN4llvm13MCInstPrinterE", !31, i64 8, !32, i64 16, !33, i64 24, !34, i64 32, !35, i64 40, !22, i64 48, !22, i64 49, !22, i64 50, !22, i64 51, !36, i64 52, !22, i64 56, !22, i64 57, !41, i64 64}
!43 = !{}
!44 = !{i64 8}
!45 = !{!"p1 int", !8, i64 0}
!46 = !{!"p1 short", !8, i64 0}
!47 = !{!"long", !4, i64 0}
!48 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !8, i64 0}
!49 = !{!"_ZTSN4llvm10MCRegisterE", !5, i64 0}
!50 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !8, i64 0}
!51 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !8, i64 0}
!52 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !8, i64 0}
!53 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !8, i64 0}
!54 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !53, i64 0, !45, i64 8, !5, i64 16, !5, i64 20}
!55 = !{!"p1 _ZTSSt6vectorItSaItEE", !8, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !58, i64 0}
!60 = !{!"_ZTSN4llvm14MCRegisterInfoE", !48, i64 8, !5, i64 16, !49, i64 20, !49, i64 24, !50, i64 32, !5, i64 40, !5, i64 44, !46, i64 48, !46, i64 56, !51, i64 64, !9, i64 72, !9, i64 80, !46, i64 88, !5, i64 96, !46, i64 104, !45, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !52, i64 136, !52, i64 144, !52, i64 152, !52, i64 160, !54, i64 168, !54, i64 192, !59, i64 216}
!61 = !{!60, !5, i64 96}
!62 = !{!"p1 _ZTSN4llvm13format_objectIJlEEE", !8, i64 0}
!63 = !{!42, !32, i64 16}
!64 = !{!19, !19, i64 0}
!65 = !{!"vtable pointer", !3, i64 0}
!66 = !{!65, !65, i64 0}
!67 = distinct !{!67, i1 true, !"_ZNK4llvm13MCInstPrinter9formatImmEl"}
!68 = distinct !{!68, !67, !"_ZNK4llvm13MCInstPrinter9formatImmEl: argument 0"}
!69 = !{!42, !33, i64 24}
!70 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !8, i64 0}
!71 = !{!"_ZTSN4llvm11MCInstrInfoE", !70, i64 0, !45, i64 8, !9, i64 16, !9, i64 24, !8, i64 32, !5, i64 40, !46, i64 48, !19, i64 56}
!72 = !{!71, !70, i64 0}
!73 = !{!"_ZTSN4llvm11MCInstrDescE", !5, i64 0, !19, i64 4, !4, i64 6, !4, i64 7, !19, i64 8, !4, i64 10, !4, i64 11, !19, i64 12, !19, i64 14, !47, i64 16, !47, i64 24}
!74 = !{!73, !5, i64 0}
!75 = !{!73, !19, i64 12}
!76 = !{!"_ZTSN4llvm13MCOperandInfoE", !19, i64 0, !4, i64 2, !4, i64 3, !19, i64 4}
!77 = !{!76, !19, i64 0}
!78 = !{!42, !34, i64 32}
!79 = !{!42, !22, i64 51}
!80 = !{i8 0, i8 2}
!81 = !{!68}
!82 = !{!62, !62, i64 0}
!83 = !{!11, !5, i64 8}
!84 = distinct !{!84, !103}
!85 = distinct !{!85, !103}
!86 = !{!"p1 _ZTSN4llvm17PatternsForOpcodeE", !8, i64 0}
!87 = !{!"_ZTSN4llvm8ArrayRefINS_17PatternsForOpcodeEEE", !86, i64 0, !47, i64 8}
!88 = !{!87, !86, i64 0}
!89 = !{!87, !47, i64 8}
!90 = !{!"p1 _ZTSN4llvm12AliasPatternE", !8, i64 0}
!91 = !{!"_ZTSN4llvm8ArrayRefINS_12AliasPatternEEE", !90, i64 0, !47, i64 8}
!92 = !{!91, !90, i64 0}
!93 = !{!91, !47, i64 8}
!94 = !{!"p1 _ZTSN4llvm16AliasPatternCondE", !8, i64 0}
!95 = !{!"_ZTSN4llvm8ArrayRefINS_16AliasPatternCondEEE", !94, i64 0, !47, i64 8}
!96 = !{!95, !94, i64 0}
!97 = !{!95, !47, i64 8}
!98 = !{!"_ZTSN4llvm9StringRefE", !9, i64 0, !47, i64 8}
!99 = !{!98, !9, i64 0}
!100 = !{!98, !47, i64 8}
!101 = !{!"_ZTSN4llvm17AliasMatchingDataE", !87, i64 0, !91, i64 16, !95, i64 32, !98, i64 48, !8, i64 64}
!102 = !{!101, !8, i64 64}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!"_ZTSZN4llvmlsIJlEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !62, i64 0}
!105 = !{!104, !62, i64 0}
!106 = !{!"_ZTSSt10_Head_baseILm0ElLb0EE", !47, i64 0}
!107 = !{!"_ZTSSt11_Tuple_implILm0EJlEE", !106, i64 0}
!108 = !{!"_ZTSSt5tupleIJlEE", !107, i64 0}
!109 = !{!"_ZTSN4llvm13format_objectIJlEEE", !9, i64 0, !108, i64 8}
!110 = !{!109, !9, i64 0}
!111 = !{!47, !47, i64 0}
end_hunk_1
