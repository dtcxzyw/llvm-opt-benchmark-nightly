Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_modes?download=true
inline.NumInlined: 101
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@drm_mode_debug_printmodeline:bb.a
  %i.bd = getelementptr i8, ptr %0, i64 8
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = zext i16 %i.be to i32
  %i.bg = zext i16 %i.b to i32
  %i.bh = getelementptr i8, ptr %0, i64 14
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr i8, ptr %0, i64 16
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = zext i16 %i.bl to i32
  %i.bn = getelementptr i8, ptr %0, i64 18
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = zext i16 %i.bo to i32
  %i.bq = zext i16 %i.au to i32
  %i.br = getelementptr i8, ptr %0, i64 62
  %i.bs = load i8, ptr %i.br, align 2
  %i.bt = zext i8 %i.bs to i32
  %i.bu = getelementptr i8, ptr %0, i64 24
  %i.bv = load i32, ptr %i.bu, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str, ptr noundef %i.aw, i32 noundef %.0.i, i32 noundef %i.av, i32 noundef %i.az, i32 noundef %i.bc, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bj, i32 noundef %i.bm, i32 noundef %i.bp, i32 noundef %i.bq, i32 noundef %i.bt, i32 noundef %i.bv) #15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local i32 @drm_mode_vrefresh(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i16, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = and i32 %i.h, 16
  %.not = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not, i32 1, i32 2
  %i.j = load i32, ptr %0, align 8                ; 2 uses
  %i.k = icmp slt i32 %i.j, 0                     ; 2 uses
  %i.l = tail call i32 @llvm.abs.i32(i32 %i.j, i1 false)
  %i.m = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.l, i32 %spec.select) ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0         ; 3 uses
  %i.p = icmp ne i32 %i.o, 0
  %i.q = and i1 %i.k, %i.p
  %i.r = or i1 %i.n, %i.q
  %i.s = sub i32 0, %i.o
  %i.t = select i1 %i.k, i32 %i.s, i32 %i.o
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %0, i64 22
  %i.v = load i16, ptr %i.u, align 2              ; 2 uses
  %i.w = icmp ugt i16 %i.v, 1
  %i.x = zext i16 %i.v to i32
  %i.y = and i32 %i.h, 32                         ; 2 uses
  %.lobit = lshr exact i32 %i.y, 5
  %i.z = shl nuw nsw i32 %i.x, %.lobit
  %.not28.not = icmp eq i32 %i.y, 0
  %.026 = select i1 %.not28.not, i32 1, i32 2
  %.1 = select i1 %i.w, i32 %i.z, i32 %.026
  %i.aa = zext i16 %i.b to i32
  %i.ab = zext i16 %i.e to i32
  %i.ac = mul nuw i32 %i.ab, %i.aa                ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0                   ; 2 uses
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 false)
  %i.af = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ae, i32 %.1) ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1
  %i.ah = extractvalue { i32, i1 } %i.af, 0       ; 3 uses
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = and i1 %i.ad, %i.ai
  %i.ak = or i1 %i.ag, %i.aj
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = sub i32 0, %i.ah
  %i.am = select i1 %i.ad, i32 %i.al, i32 %i.ah   ; 2 uses
  %i.an = zext i32 %i.t to i64
  %i.ao = mul nuw nsw i64 %i.an, 1000
  %i.ap = lshr i32 %i.am, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.ao, %i.aq
  %i.as = zext i32 %i.am to i64
  %i.at = udiv i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ %i.au, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias noundef ptr @drm_mode_create(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(120) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 -1, 121) 120) #16
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_mode_destroy(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_mode_probed_add(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 336
  %i.c = tail call zeroext i1 @mutex_is_locked(ptr noundef %i.b) #15
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "644: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 644b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 644) #17, !srcloc !20
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 114, i32 2305, i64 16) #17, !srcloc !21
  tail call void asm sideeffect "645: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 645b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 645) #17, !srcloc !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %1, i64 64         ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 176
  %i.f = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  store ptr %i.d, ptr %i.f, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.h = getelementptr i8, ptr %1, i64 72
  store ptr %i.g, ptr %i.h, align 8
  store volatile ptr %i.d, ptr %i.g, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @drm_analog_tv_mode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) #0 align 16 prefalign(16) {
bb.a:
  switch i32 %1, label %bb.bi [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.c
    i32 3, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 -1, 121) 120) #16 ; 18 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.bi, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr [96 x i8], ptr @tv_modes_parameters, i64 %.0 ; 31 uses
  %i.d = udiv i64 1000000000, %2                  ; 6 uses
  %.not.i.i = icmp eq ptr %0, null                ; 18 uses
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.e, %bb.d
  %i.g = phi ptr [ %i.f, %bb.e ], [ null, %bb.d ]
  %i.h = select i1 %5, i32 105, i32 112
  %i.i = load i32, ptr %i.c, align 16             ; 6 uses
  %i.j = udiv i64 %2, 1000                        ; 2 uses
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.g, i32 noundef 2, ptr noundef @.str.9, i32 noundef %3, i32 noundef %4, i32 noundef %i.h, i32 noundef %i.i, i64 noundef %i.j) #15
  %i.k = getelementptr i8, ptr %i.c, i64 8
  %i.l = getelementptr i8, ptr %i.c, i64 16       ; 3 uses
  %i.m = icmp eq i64 %2, 13500000
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %__drm_to_dev.exit.i
  %i.n = load i32, ptr %i.l, align 16
  %i.o = udiv i32 %i.n, 74
  %i.p = icmp ugt i32 %3, %i.o
  %i.q = icmp ult i32 %3, 721
  %or.cond.i = and i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i.i, label %__drm_to_dev.exit225.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit225.i

__drm_to_dev.exit225.i:                           ; preds = %bb.h, %bb.g
  %i.t = phi ptr [ %i.s, %bb.h ], [ null, %bb.g ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.t, i32 noundef 2, ptr noundef @.str.10) #15
  br label %bb.i

bb.i:                                             ; preds = %__drm_to_dev.exit225.i, %bb.f, %__drm_to_dev.exit.i
  %.0210.i = phi i1 [ true, %__drm_to_dev.exit225.i ], [ false, %bb.f ], [ false, %__drm_to_dev.exit.i ] ; 6 uses
  %i.u = getelementptr i8, ptr %i.c, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  %i.x = mul i64 %2, %i.w
  %i.y = udiv i64 %i.x, 1000000000                ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  br i1 %.not.i.i, label %__drm_to_dev.exit227.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %__drm_to_dev.exit227.i

__drm_to_dev.exit227.i:                           ; preds = %bb.j, %bb.i
  %i.ac = phi ptr [ %i.ab, %bb.j ], [ null, %bb.i ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ac, i32 noundef 2, ptr noundef @.str.11, i32 noundef %i.z) #15
  %i.ad = trunc nuw nsw i64 %i.d to i32           ; 5 uses
  %i.ae = mul i32 %3, %i.ad                       ; 3 uses
  br i1 %.0210.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit227.i
  %i.af = load i32, ptr %i.k, align 8             ; 2 uses
  %i.ag = icmp ult i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %i.l, align 16
  %i.ai = icmp ugt i32 %i.ae, %i.ah
  br i1 %i.ai, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not.i.i, label %__drm_to_dev.exit229.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %__drm_to_dev.exit229.i

__drm_to_dev.exit229.i:                           ; preds = %bb.n, %bb.m
  %i.al = phi ptr [ %i.ak, %bb.n ], [ null, %bb.m ]
  %i.am = load i32, ptr %i.l, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.al, ptr noundef @.str.12, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.am) #18
  br label %drm_mode_destroy.exit

bb.o:                                             ; preds = %bb.l, %__drm_to_dev.exit227.i
  %i.an = sub i32 %i.z, %3                        ; 3 uses
  br i1 %.not.i.i, label %__drm_to_dev.exit231.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %__drm_to_dev.exit231.i

__drm_to_dev.exit231.i:                           ; preds = %bb.p, %bb.o
  %i.aq = phi ptr [ %i.ap, %bb.p ], [ null, %bb.o ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aq, i32 noundef 2, ptr noundef @.str.13, i32 noundef %i.an) #15
  %i.ar = mul i32 %i.an, %i.ad                    ; 3 uses
  br i1 %.0210.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %__drm_to_dev.exit231.i
  %i.as = getelementptr i8, ptr %i.c, i64 56
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp ult i32 %i.ar, %i.at
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr i8, ptr %i.c, i64 64
  %i.aw = load i32, ptr %i.av, align 16
  %i.ax = icmp ugt i32 %i.ar, %i.aw
  br i1 %i.ax, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not.i.i, label %__drm_to_dev.exit233.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  br label %__drm_to_dev.exit233.i

__drm_to_dev.exit233.i:                           ; preds = %bb.t, %bb.s
  %i.ba = phi ptr [ %i.az, %bb.t ], [ null, %bb.s ]
  %i.bb = getelementptr i8, ptr %i.c, i64 64
  %i.bc = load i32, ptr %i.bb, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ba, ptr noundef @.str.14, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.bc) #18
  br label %drm_mode_destroy.exit

bb.u:                                             ; preds = %bb.r, %__drm_to_dev.exit231.i
  %i.bd = getelementptr i8, ptr %i.c, i64 32
  %i.be = getelementptr i8, ptr %i.c, i64 36
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nsw i64 %i.d, -1                    ; 3 uses
  %i.bi = add nsw i64 %i.bh, %i.bg
  %i.bj = udiv i64 %i.bi, %i.d                    ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  br i1 %.not.i.i, label %__drm_to_dev.exit235.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %__drm_to_dev.exit235.i

__drm_to_dev.exit235.i:                           ; preds = %bb.v, %bb.u
  %i.bn = phi ptr [ %i.bm, %bb.v ], [ null, %bb.u ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bn, i32 noundef 2, ptr noundef @.str.15, i32 noundef %i.bk) #15
  %i.bo = mul i64 %i.bj, %i.d
  %i.bp = trunc i64 %i.bo to i32                  ; 3 uses
  br i1 %.0210.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %__drm_to_dev.exit235.i
  %i.bq = load i32, ptr %i.bd, align 16           ; 2 uses
  %i.br = icmp ugt i32 %i.bq, %i.bp
  br i1 %i.br, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr i8, ptr %i.c, i64 40
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = icmp ult i32 %i.bt, %i.bp
  br i1 %i.bu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.not.i.i, label %__drm_to_dev.exit237.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %__drm_to_dev.exit237.i

__drm_to_dev.exit237.i:                           ; preds = %bb.z, %bb.y
  %i.bx = phi ptr [ %i.bw, %bb.z ], [ null, %bb.y ]
  %i.by = getelementptr i8, ptr %i.c, i64 40
  %i.bz = load i32, ptr %i.by, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bx, ptr noundef @.str.16, i32 noundef %i.bp, i32 noundef %i.bq, i32 noundef %i.bz) #18
  br label %drm_mode_destroy.exit

bb.aa:                                            ; preds = %bb.x, %__drm_to_dev.exit235.i
  %i.ca = sub i32 %i.an, %i.bk                    ; 4 uses
  br i1 %.not.i.i, label %__drm_to_dev.exit239.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  br label %__drm_to_dev.exit239.i

__drm_to_dev.exit239.i:                           ; preds = %bb.ab, %bb.aa
  %i.cd = phi ptr [ %i.cc, %bb.ab ], [ null, %bb.aa ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cd, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.ca) #15
  %i.ce = mul i32 %i.ca, %i.ad                    ; 3 uses
  br i1 %.0210.i, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %__drm_to_dev.exit239.i
  %i.cf = getelementptr i8, ptr %i.c, i64 28
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = getelementptr i8, ptr %i.c, i64 52
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add i32 %i.ci, %i.cg
  %i.ck = icmp ugt i32 %i.ce, %i.cj
  br i1 %i.ck, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = getelementptr i8, ptr %i.c, i64 44
  %i.cm = getelementptr i8, ptr %i.c, i64 20
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = load i32, ptr %i.cl, align 4            ; 2 uses
  %i.cp = add i32 %i.co, %i.cn
  %i.cq = icmp ult i32 %i.ce, %i.cp
  br i1 %i.cq, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %.not.i.i, label %__drm_to_dev.exit241.i, label %bb.af
end_hunk_0
begin_hunk_1_@drm_analog_tv_mode:bb.a
  %i.dk = phi ptr [ %i.dj, %bb.ai ], [ null, %bb.ah ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dk, i32 noundef 2, ptr noundef @.str.19, i32 noundef %.0214.i) #15
  %i.dl = mul i32 %.0214.i, %i.ad                 ; 3 uses
  br i1 %.0210.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %__drm_to_dev.exit243.i
  %i.dm = getelementptr i8, ptr %i.c, i64 20
  %i.dn = load i32, ptr %i.dm, align 4            ; 2 uses
  %i.do = icmp ult i32 %i.dl, %i.dn
  br i1 %i.do, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = getelementptr i8, ptr %i.c, i64 28
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = icmp ugt i32 %i.dl, %i.dq
  br i1 %i.dr, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %.not.i.i, label %__drm_to_dev.exit245.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ds = getelementptr i8, ptr %0, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  br label %__drm_to_dev.exit245.i

__drm_to_dev.exit245.i:                           ; preds = %bb.am, %bb.al
  %i.du = phi ptr [ %i.dt, %bb.am ], [ null, %bb.al ]
  %i.dv = getelementptr i8, ptr %i.c, i64 28
  %i.dw = load i32, ptr %i.dv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.du, ptr noundef @.str.20, i32 noundef %i.dl, i32 noundef %i.dn, i32 noundef %i.dw) #18
  br label %drm_mode_destroy.exit

bb.an:                                            ; preds = %bb.ak, %__drm_to_dev.exit243.i
  %i.dx = sub i32 %i.ca, %.0214.i                 ; 3 uses
  br i1 %.not.i.i, label %__drm_to_dev.exit247.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr i8, ptr %0, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  br label %__drm_to_dev.exit247.i

__drm_to_dev.exit247.i:                           ; preds = %bb.ao, %bb.an
  %i.ea = phi ptr [ %i.dz, %bb.ao ], [ null, %bb.an ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ea, i32 noundef 2, ptr noundef @.str.21, i32 noundef %i.dx) #15
  %i.eb = mul i32 %i.dx, %i.ad                    ; 3 uses
  br i1 %.0210.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %__drm_to_dev.exit247.i
  %i.ec = getelementptr i8, ptr %i.c, i64 44
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = icmp ult i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ef = getelementptr i8, ptr %i.c, i64 52
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = icmp ugt i32 %i.eb, %i.eg
  br i1 %i.eh, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %.not.i.i, label %__drm_to_dev.exit249.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = getelementptr i8, ptr %0, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  br label %__drm_to_dev.exit249.i

__drm_to_dev.exit249.i:                           ; preds = %bb.as, %bb.ar
  %i.ek = phi ptr [ %i.ej, %bb.as ], [ null, %bb.ar ]
  %i.el = getelementptr i8, ptr %i.c, i64 52
  %i.em = load i32, ptr %i.el, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ek, ptr noundef @.str.22, i32 noundef %i.eb, i32 noundef %i.ed, i32 noundef %i.em) #18
  br label %drm_mode_destroy.exit

bb.at:                                            ; preds = %bb.aq, %__drm_to_dev.exit247.i
  %i.en = add i32 %.0214.i, %3                    ; 2 uses
  %i.eo = add i32 %i.en, %i.bk                    ; 2 uses
  %i.ep = add i32 %i.eo, %i.dx
  %.not.i = icmp eq i32 %i.ep, %i.z
  br i1 %.not.i, label %bb.au, label %drm_mode_destroy.exit

bb.au:                                            ; preds = %bb.at
  %i.eq = trunc i64 %i.j to i32
  store i32 %i.eq, ptr %i.b, align 8
  %i.er = trunc i32 %3 to i16
  %i.es = getelementptr i8, ptr %i.b, i64 4       ; 3 uses
  store i16 %i.er, ptr %i.es, align 4
  %i.et = trunc i32 %i.en to i16
  %i.eu = getelementptr i8, ptr %i.b, i64 6       ; 2 uses
  store i16 %i.et, ptr %i.eu, align 2
  %i.ev = trunc i32 %i.eo to i16
  %i.ew = getelementptr i8, ptr %i.b, i64 8       ; 2 uses
  store i16 %i.ev, ptr %i.ew, align 8
  %i.ex = trunc i64 %i.y to i16
  %i.ey = getelementptr i8, ptr %i.b, i64 10      ; 2 uses
  store i16 %i.ex, ptr %i.ey, align 2
  br i1 %5, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ez = getelementptr i8, ptr %i.c, i64 72
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = getelementptr i8, ptr %i.c, i64 76
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = add i32 %i.fc, %i.fa
  %i.fe = getelementptr i8, ptr %i.c, i64 88
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = getelementptr i8, ptr %i.c, i64 92
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = add i32 %i.fh, %i.ff
  %i.fj = getelementptr i8, ptr %i.c, i64 80
  %i.fk = load i32, ptr %i.fj, align 16
  %i.fl = getelementptr i8, ptr %i.c, i64 84
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = add i32 %i.fm, %i.fk
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.fo = getelementptr i8, ptr %i.c, i64 76
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = getelementptr i8, ptr %i.c, i64 92
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = getelementptr i8, ptr %i.c, i64 84
  %i.ft = load i32, ptr %i.fs, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0213.i = phi i32 [ %i.fd, %bb.av ], [ %i.fp, %bb.aw ] ; 2 uses
  %.0212.i = phi i32 [ %i.fi, %bb.av ], [ %i.fr, %bb.aw ]
  %.0211.i = phi i32 [ %i.fn, %bb.av ], [ %i.ft, %bb.aw ] ; 4 uses
  br i1 %.not.i.i, label %__drm_to_dev.exit251.i.thread, label %bb.ay

__drm_to_dev.exit251.i.thread:                    ; preds = %bb.ax
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str.23, i32 noundef %.0211.i) #15
  br label %__drm_to_dev.exit253.i

bb.ay:                                            ; preds = %bb.ax
  %i.fu = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fv, i32 noundef 2, ptr noundef @.str.23, i32 noundef %.0211.i) #15
  %i.fw = load ptr, ptr %i.fu, align 8
  br label %__drm_to_dev.exit253.i

__drm_to_dev.exit253.i:                           ; preds = %__drm_to_dev.exit251.i.thread, %bb.ay
  %i.fx = phi ptr [ %i.fw, %bb.ay ], [ null, %__drm_to_dev.exit251.i.thread ]
  %i.fy = add i32 %4, %.0211.i
  %i.fz = sub i32 %i.i, %i.fy                     ; 3 uses
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fx, i32 noundef 2, ptr noundef @.str.24, i32 noundef %i.fz) #15
  %i.ga = add i32 %.0212.i, %.0213.i
  %i.gb = sub i32 %i.fz, %i.ga
  %i.gc = sdiv i32 %i.gb, 2
  %i.gd = add i32 %i.gc, %.0213.i                 ; 4 uses
  br i1 %.not.i.i, label %__drm_to_dev.exit255.thread.i, label %bb.az

__drm_to_dev.exit255.thread.i:                    ; preds = %__drm_to_dev.exit253.i
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef @.str.25, i32 noundef %i.gd) #15
  br label %__drm_to_dev.exit257.i

bb.az:                                            ; preds = %__drm_to_dev.exit253.i
  %i.ge = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gf, i32 noundef 2, ptr noundef @.str.25, i32 noundef %i.gd) #15
  %i.gg = load ptr, ptr %i.ge, align 8
  br label %__drm_to_dev.exit257.i

__drm_to_dev.exit257.i:                           ; preds = %bb.az, %__drm_to_dev.exit255.thread.i
  %i.gh = phi ptr [ %i.gg, %bb.az ], [ null, %__drm_to_dev.exit255.thread.i ]
  %i.gi = sub i32 %i.fz, %i.gd                    ; 2 uses
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gh, i32 noundef 2, ptr noundef @.str.26, i32 noundef %i.gi) #15
  %i.gj = add i32 %i.gd, %4                       ; 2 uses
  %i.gk = add i32 %i.gj, %.0211.i                 ; 2 uses
  %i.gl = add i32 %i.gk, %i.gi                    ; 2 uses
  %.not222.i = icmp eq i32 %i.i, %i.gl
  br i1 %.not222.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %__drm_to_dev.exit257.i
  br i1 %.not.i.i, label %__drm_to_dev.exit259.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gm = getelementptr i8, ptr %0, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  br label %__drm_to_dev.exit259.i

__drm_to_dev.exit259.i:                           ; preds = %bb.bb, %bb.ba
  %i.go = phi ptr [ %i.gn, %bb.bb ], [ null, %bb.ba ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.go, ptr noundef @.str.27, i32 noundef %i.gl, i32 noundef %i.i) #18
  br label %drm_mode_destroy.exit

bb.bc:                                            ; preds = %__drm_to_dev.exit257.i
  %i.gp = trunc i32 %4 to i16
  %i.gq = getelementptr i8, ptr %i.b, i64 14      ; 2 uses
  store i16 %i.gp, ptr %i.gq, align 2
  %i.gr = trunc i32 %i.gj to i16
  %i.gs = getelementptr i8, ptr %i.b, i64 16      ; 2 uses
  store i16 %i.gr, ptr %i.gs, align 8
  %i.gt = trunc i32 %i.gk to i16
  %i.gu = getelementptr i8, ptr %i.b, i64 18      ; 2 uses
  store i16 %i.gt, ptr %i.gu, align 2
  %i.gv = trunc i32 %i.i to i16
  %i.gw = getelementptr i8, ptr %i.b, i64 20      ; 3 uses
  store i16 %i.gv, ptr %i.gw, align 4
  %.not223.i = icmp ult i32 %i.i, 65536
  br i1 %.not223.i, label %6, label %drm_mode_destroy.exit

6:                                                ; preds = %bb.bc
  %7 = getelementptr i8, ptr %i.b, i64 62         ; 2 uses
  store i8 64, ptr %7, align 2
  %8 = getelementptr i8, ptr %i.b, i64 24         ; 3 uses
  %spec.select.i = select i1 %5, i32 26, i32 10
  store i32 %spec.select.i, ptr %8, align 8
  %9 = getelementptr i8, ptr %i.b, i64 80         ; 2 uses
  %10 = load i16, ptr %i.es, align 4
  %11 = zext i16 %10 to i32
  %12 = and i32 %4, 65535
  %13 = select i1 %5, ptr @.str.4, ptr @.str.1
  %14 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %9, i64 noundef 32, ptr noundef @.str.3, i32 noundef %11, i32 noundef %12, ptr noundef nonnull %13) #15 ; 0 uses
  br i1 %.not.i.i, label %__drm_to_dev.exit262.i, label %bb.bd

bb.bd:                                            ; preds = %6
  %i.gx = getelementptr i8, ptr %0, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  br label %__drm_to_dev.exit262.i

__drm_to_dev.exit262.i:                           ; preds = %bb.bd, %6
  %i.gz = phi ptr [ %i.gy, %bb.bd ], [ null, %6 ]
  %i.ha = load i16, ptr %i.ey, align 2            ; 3 uses
  %i.hb = icmp eq i16 %i.ha, 0
  br i1 %i.hb, label %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i, label %bb.be

__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i: ; preds = %__drm_to_dev.exit262.i
  %.pre.i = load i32, ptr %i.b, align 8
  %.pre270.i = load i16, ptr %i.gw, align 4
  %.pre271.i = load i32, ptr %8, align 8
  br label %fill_analog_mode.exit

bb.be:                                            ; preds = %__drm_to_dev.exit262.i
  %i.hc = load i16, ptr %i.gw, align 4            ; 5 uses
  %i.hd = icmp eq i16 %i.hc, 0
  %.pre269.i = load i32, ptr %i.b, align 8        ; 6 uses
  %.pre272.i = load i32, ptr %8, align 8          ; 6 uses
  br i1 %i.hd, label %fill_analog_mode.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.he = and i32 %.pre272.i, 16
  %.not.i263.i = icmp eq i32 %i.he, 0
  %spec.select.i.i = select i1 %.not.i263.i, i32 1, i32 2
  %i.hf = icmp slt i32 %.pre269.i, 0              ; 2 uses
  %i.hg = tail call i32 @llvm.abs.i32(i32 %.pre269.i, i1 false)
  %i.hh = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.hg, i32 %spec.select.i.i) ; 2 uses
  %i.hi = extractvalue { i32, i1 } %i.hh, 1
  %i.hj = extractvalue { i32, i1 } %i.hh, 0       ; 3 uses
  %i.hk = icmp ne i32 %i.hj, 0
  %i.hl = and i1 %i.hf, %i.hk
  %i.hm = or i1 %i.hi, %i.hl
  %i.hn = sub i32 0, %i.hj
  %i.ho = select i1 %i.hf, i32 %i.hn, i32 %i.hj
  br i1 %i.hm, label %fill_analog_mode.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hp = getelementptr i8, ptr %i.b, i64 22
  %i.hq = load i16, ptr %i.hp, align 2            ; 2 uses
  %i.hr = icmp ugt i16 %i.hq, 1
  %i.hs = zext i16 %i.hq to i32
  %i.ht = and i32 %.pre272.i, 32                  ; 2 uses
  %.lobit.i.i = lshr exact i32 %i.ht, 5
  %i.hu = shl nuw nsw i32 %i.hs, %.lobit.i.i
  %.not28.not.i.i = icmp eq i32 %i.ht, 0
  %.026.i.i = select i1 %.not28.not.i.i, i32 1, i32 2
  %.1.i.i = select i1 %i.hr, i32 %i.hu, i32 %.026.i.i
  %i.hv = zext i16 %i.ha to i32
  %i.hw = zext i16 %i.hc to i32
  %i.hx = mul nuw i32 %i.hw, %i.hv                ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 0                   ; 2 uses
  %i.hz = tail call i32 @llvm.abs.i32(i32 %i.hx, i1 false)
  %i.ia = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.hz, i32 %.1.i.i) ; 2 uses
  %i.ib = extractvalue { i32, i1 } %i.ia, 1
  %i.ic = extractvalue { i32, i1 } %i.ia, 0       ; 3 uses
  %i.id = icmp ne i32 %i.ic, 0
  %i.ie = and i1 %i.hy, %i.id
  %i.if = or i1 %i.ib, %i.ie
  br i1 %i.if, label %fill_analog_mode.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ig = sub i32 0, %i.ic
  %i.ih = select i1 %i.hy, i32 %i.ig, i32 %i.ic   ; 2 uses
  %i.ii = zext i32 %i.ho to i64
  %i.ij = mul nuw nsw i64 %i.ii, 1000
  %i.ik = lshr i32 %i.ih, 1
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = add nuw nsw i64 %i.ij, %i.il
  %i.in = zext i32 %i.ih to i64
  %i.io = udiv i64 %i.im, %i.in
  %i.ip = trunc i64 %i.io to i32
  br label %fill_analog_mode.exit

fill_analog_mode.exit:                            ; preds = %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i, %bb.be, %bb.bf, %bb.bg, %bb.bh
  %i.iq = phi i32 [ %.pre272.i, %bb.bh ], [ %.pre271.i, %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i ], [ %.pre272.i, %bb.bf ], [ %.pre272.i, %bb.be ], [ %.pre272.i, %bb.bg ]
  %i.ir = phi i16 [ %i.hc, %bb.bh ], [ %.pre270.i, %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i ], [ %i.hc, %bb.bf ], [ 0, %bb.be ], [ %i.hc, %bb.bg ]
  %i.is = phi i32 [ %.pre269.i, %bb.bh ], [ %.pre.i, %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i ], [ %.pre269.i, %bb.bf ], [ %.pre269.i, %bb.be ], [ %.pre269.i, %bb.bg ]
  %.0.i.i = phi i32 [ %i.ip, %bb.bh ], [ 0, %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bg ]
  %i.it = load i16, ptr %i.es, align 4
  %i.iu = zext i16 %i.it to i32
  %i.iv = load i16, ptr %i.eu, align 2
  %i.iw = zext i16 %i.iv to i32
  %i.ix = load i16, ptr %i.ew, align 8
  %i.iy = zext i16 %i.ix to i32
  %i.iz = zext i16 %i.ha to i32
  %i.ja = load i16, ptr %i.gq, align 2
  %i.jb = zext i16 %i.ja to i32
  %i.jc = load i16, ptr %i.gs, align 8
  %i.jd = zext i16 %i.jc to i32
  %i.je = load i16, ptr %i.gu, align 2
  %i.jf = zext i16 %i.je to i32
  %i.jg = zext i16 %i.ir to i32
  %i.jh = load i8, ptr %7, align 2
  %i.ji = zext i8 %i.jh to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gz, i32 noundef 2, ptr noundef @.str.28, ptr noundef %9, i32 noundef %.0.i.i, i32 noundef %i.is, i32 noundef %i.iu, i32 noundef %i.iw, i32 noundef %i.iy, i32 noundef %i.iz, i32 noundef %i.jb, i32 noundef %i.jd, i32 noundef %i.jf, i32 noundef %i.jg, i32 noundef %i.ji, i32 noundef %i.iq) #15
  br label %bb.bi

drm_mode_destroy.exit:                            ; preds = %__drm_to_dev.exit229.i, %__drm_to_dev.exit259.i, %bb.at, %__drm_to_dev.exit249.i, %__drm_to_dev.exit245.i, %__drm_to_dev.exit241.i, %__drm_to_dev.exit237.i, %__drm_to_dev.exit233.i, %bb.bc
  tail call void @kfree(ptr noundef nonnull %i.b) #15
  br label %bb.bi

bb.bi:                                            ; preds = %fill_analog_mode.exit, %bb.c, %bb.a, %drm_mode_destroy.exit
  %.014 = phi ptr [ null, %bb.a ], [ null, %drm_mode_destroy.exit ], [ null, %bb.c ], [ %i.b, %fill_analog_mode.exit ]
  ret ptr %.014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias noundef ptr @drm_cvt_mode(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.d = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @__kmalloc_cache_noprof(ptr noundef %i.c, i32 noundef 3520, i64 noundef range(i64 -1, 121) 120) #16 ; 20 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not146 = icmp eq i32 %3, 0
  %spec.store.select = select i1 %.not146, i32 60, i32 %3
  %i.e = zext i1 %5 to i32                        ; 2 uses
  %.0138 = shl i32 %spec.store.select, %i.e       ; 4 uses
  %i.f = srem i32 %1, 8
  %i.g = sub nsw i32 %1, %i.f                     ; 3 uses
  br i1 %6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = trunc i32 %i.g to i16                    ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 4
  store i16 %i.h, ptr %i.i, align 4
  %i.j = sdiv i32 %2, 2
  %.0135 = select i1 %5, i32 %i.j, i32 %2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = mul i32 %i.g, 18
  %i.l = sdiv i32 %i.k, 1000                      ; 2 uses
  %i.m = srem i32 %i.l, 8
  %i.n = sub nsw i32 %i.l, %i.m
  %i.o = shl nsw i32 %i.n, 1
  %i.p = add i32 %i.o, %i.g
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = getelementptr i8, ptr %i.d, i64 4
  store i16 %i.q, ptr %i.r, align 4
  %i.s = sdiv i32 %2, 2
  %.0135153 = select i1 %5, i32 %i.s, i32 %2      ; 2 uses
  %i.t = mul i32 %.0135153, 18
  %i.u = sdiv i32 %i.t, 1000
  %i.v = shl nsw i32 %i.u, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0135154 = phi i32 [ %.0135153, %bb.e ], [ %.0135, %bb.d ] ; 2 uses
  %i.w = phi i16 [ %i.q, %bb.e ], [ %i.h, %bb.d ] ; 7 uses
  %.0134 = phi i32 [ %i.v, %bb.e ], [ 0, %bb.d ]  ; 3 uses
  %i.x = add i32 %.0134, %2                       ; 2 uses
  %i.y = trunc i32 %i.x to i16                    ; 2 uses
  %i.z = getelementptr i8, ptr %i.d, i64 14
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = srem i32 %2, 3
  %.not147 = icmp eq i32 %i.aa, 0
  br i1 %.not147, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = shl i32 %2, 2
  %i.ac = sdiv i32 %i.ab, 3
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = srem i32 %2, 9
  %.not148 = icmp eq i32 %i.ae, 0                 ; 2 uses
  br i1 %.not148, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = shl i32 %2, 4
  %i.ag = sdiv i32 %i.af, 9
  %i.ah = icmp eq i32 %i.ag, %1
  br i1 %i.ah, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = srem i32 %2, 10
  %.not149 = icmp eq i32 %i.ai, 0
  br i1 %.not149, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = shl i32 %2, 4
  %i.ak = sdiv i32 %i.aj, 10
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = and i32 %2, 3
  %.not150 = icmp eq i32 %i.am, 0
  br i1 %.not150, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = mul i32 %2, 5
  %i.ao = ashr exact i32 %i.an, 2
  %i.ap = icmp eq i32 %i.ao, %1
  br i1 %i.ap, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not148, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = mul i32 %2, 15
  %i.ar = sdiv i32 %i.aq, 9
  %i.as = icmp eq i32 %i.ar, %1
  br i1 %i.as, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.p
  %.0133 = phi i32 [ 10, %bb.p ], [ 7, %bb.m ], [ 6, %bb.k ], [ 5, %bb.i ], [ 4, %bb.g ], [ 7, %bb.o ] ; 3 uses
  br i1 %4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = add i32 %.0134, %.0135154               ; 2 uses
  %i.au = shl i32 %i.at, 1
  %i.av = add i32 %i.au, 6
  %i.aw = or disjoint i32 %i.av, %i.e
  %i.ax = mul i32 %.0138, -1100000
  %i.ay = add i32 %i.ax, 2000000000
  %i.az = mul i32 %i.aw, %.0138
  %i.ba = udiv i32 %i.ay, %i.az                   ; 3 uses
  %i.bb = udiv i32 550000, %i.ba
  %i.bc = add nuw nsw i32 %i.bb, 1
  %i.bd = add nuw nsw i32 %.0133, 3
  %.151 = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %i.bd)
  %i.be = add i32 %.151, %i.at
  %i.bf = trunc i32 %i.be to i16
  %i.bg = add i16 %i.bf, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %i.d, i64 20
  store i16 %i.bg, ptr %i.bh, align 4
  %i.bi = mul i32 %i.ba, 300
  %i.bj = udiv i32 %i.bi, 1000
  %i.bk = sub nsw i32 30000, %i.bj
  %spec.store.select2 = tail call i32 @llvm.umax.i32(i32 %i.bk, i32 20000) ; 2 uses
  %i.bl = zext i16 %i.w to i32
  %i.bm = mul i32 %spec.store.select2, %i.bl
  %i.bn = sub nsw i32 100000, %spec.store.select2
  %i.bo = udiv i32 %i.bm, %i.bn
  %i.bp = and i32 %i.bo, -16                      ; 2 uses
  %i.bq = trunc i32 %i.bp to i16
  %i.br = add i16 %i.w, %i.bq                     ; 3 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 10
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = lshr exact i32 %i.bp, 1
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = add i16 %i.w, %i.bu                     ; 2 uses
  %i.bw = zext i16 %i.br to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = udiv i32 %i.bx, 25
  %i.bz = trunc nuw nsw i32 %i.by to i16
  %i.ca = sub i16 %i.bv, %i.bz
  %i.cb = and i16 %i.ca, -8
  %i.cc = add i16 %i.cb, 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %.neg = mul i32 %.0138, -460000
  %i.cd = add i32 %.neg, 1000000000
  %i.ce = add i32 %.0134, %.0135154               ; 2 uses
  %i.cf = mul i32 %i.ce, %.0138
  %i.cg = udiv i32 %i.cd, %i.cf                   ; 2 uses
  %i.ch = udiv i32 460000, %i.cg
  %i.ci = add nuw nsw i32 %i.ch, 1
  %i.cj = add nuw nsw i32 %.0133, 9
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 %i.cj)
  %i.ck = add i32 %spec.select, %i.ce
  %i.cl = trunc i32 %i.ck to i16                  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.d, i64 20
  store i16 %i.cl, ptr %i.cm, align 4
  %i.cn = add i16 %i.w, 160                       ; 2 uses
  %i.co = getelementptr i8, ptr %i.d, i64 10
  store i16 %i.cn, ptr %i.co, align 2
  %i.cp = add i16 %i.w, 80
  %i.cq = add i16 %i.w, 48
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cr = phi i16 [ %i.cl, %bb.s ], [ %i.bg, %bb.r ]
  %i.cs = phi i16 [ %i.cn, %bb.s ], [ %i.br, %bb.r ]
  %.sink158 = phi i16 [ %i.cp, %bb.s ], [ %i.bv, %bb.r ]
  %.sink157 = phi i16 [ %i.cq, %bb.s ], [ %i.cc, %bb.r ]
  %.0137 = phi i32 [ %i.cg, %bb.s ], [ %i.ba, %bb.r ]
  %i.ct = add i16 %i.y, 3                         ; 2 uses
  %i.cu = trunc nuw nsw i32 %.0133 to i16
  %i.cv = add i16 %i.ct, %i.cu
  %i.cw = getelementptr i8, ptr %i.d, i64 8
  store i16 %.sink158, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %i.d, i64 6
  store i16 %.sink157, ptr %i.cx, align 2
end_hunk_1
