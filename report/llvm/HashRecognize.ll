Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HashRecognize?download=true
begin_hunk_0_@_ZN14RecurrenceInfo13digRecurrenceEPN4llvm11InstructionENS1_9BinaryOpsE:_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit

bb.ac:                                            ; preds = %.thread
  call void @free(ptr noundef %i.dd) #12
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11InstructionELj6EED2Ev.exit: ; preds = %.thread, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN14RecurrenceInfo26matchConditionalRecurrenceEPKN4llvm7PHINodeENS0_11Instruction9BinaryOpsE(ptr noundef nonnull align 8 dereferenceable(64) initializes((8, 16)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 268435455
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 8 uses
  %i.j = load i8, ptr %i.g, align 8, !tbaa !27
  %i.k = icmp eq i8 %i.j, 89
  br i1 %i.k, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = and i32 %i.m, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.i.i, label %_ZNK4llvm4User10getOperandEj.exit.thread.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i:            ; preds = %bb.b
  %i.o = and i32 %i.m, 268435455
  %i.p = zext nneg i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = load i8, ptr %i.s, align 8, !tbaa !27
  %i.u = add i8 %i.t, -85
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %_ZNK4llvm4User10getOperandEj.exit8.i.i, label %bb.i

_ZNK4llvm4User10getOperandEj.exit.thread.i.i:     ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = load i8, ptr %i.y, align 8, !tbaa !27
  %i.aa = add i8 %i.z, -85
  %i.ab = icmp ult i8 %i.aa, 2
  br i1 %i.ab, label %_ZNK4llvm4User10getOperandEj.exit8.i.i.thread, label %bb.i

_ZNK4llvm4User10getOperandEj.exit8.i.i:           ; preds = %_ZNK4llvm4User10getOperandEj.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !27
  %i.af = icmp ugt i8 %i.ae, 29
  br i1 %i.af, label %bb.d, label %bb.i

_ZNK4llvm4User10getOperandEj.exit8.i.i.thread:    ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !27
  %i.aj = icmp ugt i8 %i.ai, 29
  br i1 %i.aj, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit8.i.i.thread
  %i.ak = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  br label %_ZNK4llvm4User10getOperandEj.exit10.i.i

bb.d:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit8.i.i
  %i.am = and i32 %i.m, 268435455
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.ao
  br label %_ZNK4llvm4User10getOperandEj.exit10.i.i

_ZNK4llvm4User10getOperandEj.exit10.i.i:          ; preds = %bb.d, %bb.c
  %i.aq = phi ptr [ %i.ah, %bb.c ], [ %i.ad, %bb.d ]
  %i.ar = phi ptr [ %i.al, %bb.c ], [ %i.ap, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !27
  %i.av = icmp ugt i8 %i.au, 29
  br i1 %i.av, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit10.i.i.1, %_ZNK4llvm4User10getOperandEj.exit10.i.i
  %.0 = phi ptr [ %i.aq, %_ZNK4llvm4User10getOperandEj.exit10.i.i ], [ %i.cl, %_ZNK4llvm4User10getOperandEj.exit10.i.i.1 ]
  %.lcssa44 = phi ptr [ %i.g, %_ZNK4llvm4User10getOperandEj.exit10.i.i ], [ %i.i, %_ZNK4llvm4User10getOperandEj.exit10.i.i.1 ]
  %.lcssa42 = phi ptr [ %i.i, %_ZNK4llvm4User10getOperandEj.exit10.i.i ], [ %i.g, %_ZNK4llvm4User10getOperandEj.exit10.i.i.1 ]
  %.lcssa = phi ptr [ %i.at, %_ZNK4llvm4User10getOperandEj.exit10.i.i ], [ %i.co, %_ZNK4llvm4User10getOperandEj.exit10.i.i.1 ]
  %i.aw = tail call noundef ptr @_ZN14RecurrenceInfo13digRecurrenceEPN4llvm11InstructionENS1_9BinaryOpsE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %.0, i32 noundef %2) ; 3 uses
  %i.ax = tail call noundef ptr @_ZN14RecurrenceInfo13digRecurrenceEPN4llvm11InstructionENS1_9BinaryOpsE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %.lcssa, i32 noundef %2)
  %.not25.a = icmp ne ptr %i.aw, null
  %.not26.a = icmp eq ptr %i.aw, %i.ax
  %or.cond = and i1 %.not25.a, %.not26.a
  br i1 %or.cond, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not27 = icmp eq i32 %2, 32
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.lcssa42, ptr %i.bc, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.lcssa44, ptr %i.bd, align 8, !tbaa !60
  br label %.loopexit

bb.i:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit8.i.i.thread, %_ZNK4llvm4User10getOperandEj.exit8.i.i, %_ZNK4llvm4User10getOperandEj.exit10.i.i, %.preheader, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i
  %i.be = load i8, ptr %i.i, align 8, !tbaa !27
  %i.bf = icmp eq i8 %i.be, 89
  br i1 %i.bf, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bh = load i32, ptr %i.bg, align 4            ; 3 uses
  %i.bi = and i32 %i.bh, 1073741824
  %.not.i.i.i.i.1 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i.1, label %_ZNK4llvm4User10getOperandEj.exit.i.i.1, label %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.1

_ZNK4llvm4User10getOperandEj.exit.thread.i.i.1:   ; preds = %bb.j
  %i.bj = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !34
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !27
  %i.bn = add i8 %i.bm, -85
  %i.bo = icmp ult i8 %i.bn, 2
  br i1 %i.bo, label %_ZNK4llvm4User10getOperandEj.exit8.i.i.1.thread, label %.loopexit

_ZNK4llvm4User10getOperandEj.exit.i.i.1:          ; preds = %bb.j
  %i.bp = and i32 %i.bh, 268435455
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.br ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !27
  %i.bv = add i8 %i.bu, -85
  %i.bw = icmp ult i8 %i.bv, 2
  br i1 %i.bw, label %_ZNK4llvm4User10getOperandEj.exit8.i.i.1, label %.loopexit

_ZNK4llvm4User10getOperandEj.exit8.i.i.1:         ; preds = %_ZNK4llvm4User10getOperandEj.exit.i.i.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !34 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !27
  %i.ca = icmp ugt i8 %i.bz, 29
  br i1 %i.ca, label %bb.l, label %.loopexit

_ZNK4llvm4User10getOperandEj.exit8.i.i.1.thread:  ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !34 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !27
  %i.ce = icmp ugt i8 %i.cd, 29
  br i1 %i.ce, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit8.i.i.1.thread
  %i.cf = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !46
  br label %_ZNK4llvm4User10getOperandEj.exit10.i.i.1

bb.l:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit8.i.i.1
  %i.ch = and i32 %i.bh, 268435455
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.cj
  br label %_ZNK4llvm4User10getOperandEj.exit10.i.i.1

_ZNK4llvm4User10getOperandEj.exit10.i.i.1:        ; preds = %bb.l, %bb.k
  %i.cl = phi ptr [ %i.cc, %bb.k ], [ %i.by, %bb.l ]
  %i.cm = phi ptr [ %i.cg, %bb.k ], [ %i.ck, %bb.l ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !34 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !27
  %i.cq = icmp ugt i8 %i.cp, 29
  br i1 %i.cq, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.g, %bb.i, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.1, %_ZNK4llvm4User10getOperandEj.exit.i.i.1, %_ZNK4llvm4User10getOperandEj.exit8.i.i.1, %_ZNK4llvm4User10getOperandEj.exit10.i.i.1, %_ZNK4llvm4User10getOperandEj.exit8.i.i.1.thread, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %_ZNK4llvm4User10getOperandEj.exit8.i.i.1.thread ], [ false, %_ZNK4llvm4User10getOperandEj.exit10.i.i.1 ], [ false, %_ZNK4llvm4User10getOperandEj.exit8.i.i.1 ], [ false, %_ZNK4llvm4User10getOperandEj.exit.i.i.1 ], [ false, %_ZNK4llvm4User10getOperandEj.exit.thread.i.i.1 ], [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.e ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14PolynomialInfoC2EjPNS_5ValueERKNS_5APIntES2_bS2_(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 4), (8, 16), (24, 28)) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !43
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %3, align 8, !tbaa !45
  store i64 %i.g, ptr %i.b, align 8, !tbaa !45
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.b, %bb.c
  %i.h = zext i1 %5 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.i, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.h, ptr %i.j, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %6, ptr %i.k, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13HashRecognize15genSarwateTableERKNS_5APIntEb(ptr dead_on_unwind noalias writable sret(%"struct.llvm::CRCTable") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 16 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 14 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 12 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.idx.i.i = phi i64 [ 0, %bb.a ], [ %.add.i.i.3, %bb.b ] ; 5 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !43
  store i64 0, ptr %.ptr.i.i, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 2 uses
  %.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !43
  store i64 0, ptr %.ptr.i.i.1, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 2 uses
  %.ptr.i.i.2 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 1, ptr %i.g, align 8, !tbaa !43
  store i64 0, ptr %.ptr.i.i.2, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 2 uses
  %.ptr.i.i.3 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i32 1, ptr %i.i, align 8, !tbaa !43
  store i64 0, ptr %.ptr.i.i.3, align 8, !tbaa !45
  %.add.i.i.3 = add nuw nsw i64 %.idx.i.i, 64     ; 2 uses
  %i.j = icmp eq i64 %.add.i.i.3, 4096
  br i1 %i.j, label %_ZN4llvm8CRCTableC2Ev.exit, label %bb.b

_ZN4llvm8CRCTableC2Ev.exit:                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.k, align 8, !tbaa !43, !alias.scope !67
  %i.l = icmp ult i32 %i.b, 65                    ; 5 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8CRCTableC2Ev.exit
  store i64 0, ptr %3, align 8, !tbaa !45, !alias.scope !67
  br label %_ZN4llvm5APInt7getZeroEj.exit

bb.d:                                             ; preds = %_ZN4llvm8CRCTableC2Ev.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef 0, i1 noundef zeroext false) #12
  br label %_ZN4llvm5APInt7getZeroEj.exit

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !43
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %_ZN4llvm5APIntD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4llvm5APIntD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.p) #13
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.f, %bb.e, %_ZN4llvm5APInt7getZeroEj.exit
  %i.r = load i64, ptr %3, align 8
  store i64 %i.r, ptr %0, align 8
  %i.s = load i32, ptr %i.k, align 8, !tbaa !43
  store i32 %i.s, ptr %i.m, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %2, label %bb.g, label %bb.ai

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 %i.b, ptr %i.t, align 8, !tbaa !43, !alias.scope !70
  br i1 %i.l, label %_ZN4llvm5APIntC2Ejmbb.exit.thread.i, label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.thread.i:              ; preds = %bb.g
  %i.u = add nuw nsw i32 %i.b, 63
  %i.v = and i32 %i.u, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw i64 1, %i.w
  br label %bb.h

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.g
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef 0, i1 noundef zeroext false) #12
  %.pr.i = load i32, ptr %i.t, align 8, !tbaa !43, !alias.scope !70
  %i.y = add i32 %i.b, -1                         ; 2 uses
  %i.z = and i32 %i.y, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = icmp ult i32 %.pr.i, 65
  br i1 %i.ac, label %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i, label %bb.i

_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i:          ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %.pre.i = load i64, ptr %4, align 8, !tbaa !45, !alias.scope !70
  %i.ad = or i64 %.pre.i, %i.ab
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i
  %i.ae = phi i64 [ %i.x, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i ], [ %i.ad, %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i ]
  store i64 %i.ae, ptr %4, align 8, !tbaa !45, !alias.scope !70
  br label %_ZN4llvm5APInt17getSignedMinValueEj.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.af = load ptr, ptr %4, align 8, !tbaa !45, !alias.scope !70
  %i.ag = lshr i32 %i.y, 6
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !73
  %i.ak = or i64 %i.aj, %i.ab
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !73
  br label %_ZN4llvm5APInt17getSignedMinValueEj.exit

_ZN4llvm5APInt17getSignedMinValueEj.exit:         ; preds = %bb.h, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.ac
  %i.ao = load i32, ptr %i.t, align 8, !tbaa !43
  %i.ap = icmp ugt i32 %i.ao, 64
  br i1 %i.ap, label %bb.k, label %_ZN4llvm5APIntD2Ev.exit29

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #13
  br label %_ZN4llvm5APIntD2Ev.exit29

_ZN4llvm5APIntD2Ev.exit29:                        ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.bn

bb.m:                                             ; preds = %_ZN4llvm5APInt17getSignedMinValueEj.exit, %bb.ac
  %.02787 = phi i32 [ 1, %_ZN4llvm5APInt17getSignedMinValueEj.exit ], [ %i.cn, %bb.ac ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.as = load i32, ptr %i.t, align 8, !tbaa !43, !noalias !75 ; 3 uses
  store i32 %i.as, ptr %i.al, align 8, !tbaa !43, !alias.scope !75
  %i.at = icmp ult i32 %i.as, 65
  br i1 %i.at, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.m
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %4) #12
  %.pr.i30 = load i32, ptr %i.al, align 8, !tbaa !43, !alias.scope !75 ; 2 uses
  %i.au = icmp ult i32 %.pr.i30, 65
  br i1 %i.au, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %bb.n

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i:       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %bb.m
  %.sink.i = phi ptr [ %4, %bb.m ], [ %5, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
end_hunk_0
