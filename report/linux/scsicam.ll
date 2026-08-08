inline.NumInlined: 13
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_bios_ptable: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad scsi_bios_ptable ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_partsize: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad scsi_partsize ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsicam_bios_param: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad scsicam_bios_param ; .previous"

@__UNIQUE_ID_addressable_scsi_bios_ptable_581 = internal global ptr @scsi_bios_ptable, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_scsi_partsize_582 = internal global ptr @scsi_partsize, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_scsicam_bios_param_583 = internal global ptr @scsicam_bios_param, section ".discard.addressable", align 8
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_addressable_scsi_bios_ptable_581, ptr @__UNIQUE_ID_addressable_scsi_partsize_582, ptr @__UNIQUE_ID_addressable_scsicam_bios_param_583], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @scsi_bios_ptable(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @read_cache_folio(ptr noundef %i.d, i64 noundef 0, ptr noundef null, ptr noundef null) #5 ; 4 uses
  %i.f = icmp ugt ptr %i.e, inttoptr (i64 -4096 to ptr)
  br i1 %i.f, label %folio_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @vmemmap_base, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = shl i64 %i.i, 6
  %i.k = load i64, ptr @page_offset_base, align 8
  %i.l = add i64 %i.j, %i.k
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 446
  %i.o = tail call dereferenceable_or_null(66) ptr @kmemdup_noprof(ptr noundef %i.n, i64 noundef 66, i32 noundef 3264) #6 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 52       ; 2 uses
  %i.q = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, ptr elementtype(i32) %i.p) #7, !srcloc !10 ; 2 uses
  %i.r = icmp ult i8 %i.q, 2
  tail call void @llvm.assume(i1 %i.r)
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %folio_put.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__folio_put(ptr noundef %i.e) #5
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.o, %bb.b ], [ %i.o, %bb.c ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @kmemdup_noprof(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @scsi_partsize(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @read_cache_folio(ptr noundef %i.d, i64 noundef 0, ptr noundef null, ptr noundef null) #5 ; 4 uses
  %i.f = icmp ugt ptr %i.e, inttoptr (i64 -4096 to ptr)
  br i1 %i.f, label %scsi_bios_ptable.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @vmemmap_base, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = shl i64 %i.i, 6
  %i.k = load i64, ptr @page_offset_base, align 8
  %i.l = add i64 %i.j, %i.k
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 446
  %i.o = tail call dereferenceable_or_null(66) ptr @kmemdup_noprof(ptr noundef %i.n, i64 noundef 66, i32 noundef 3264) #6 ; 19 uses
  %i.p = getelementptr i8, ptr %i.e, i64 52       ; 2 uses
  %i.q = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, ptr elementtype(i32) %i.p) #7, !srcloc !10 ; 2 uses
  %i.r = icmp ult i8 %i.q, 2
  tail call void @llvm.assume(i1 %i.r)
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %scsi_bios_ptable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__folio_put(ptr noundef %i.e) #5
  br label %scsi_bios_ptable.exit

scsi_bios_ptable.exit:                            ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %scsi_bios_ptable.exit.thread, label %bb.d

bb.d:                                             ; preds = %scsi_bios_ptable.exit
  %i.s = getelementptr i8, ptr %i.o, i64 64
  %i.t = load i16, ptr %i.s, align 2
  %i.u = icmp eq i16 %i.t, -21931
  br i1 %i.u, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.o, i64 4
  %i.w = load i8, ptr %i.v, align 2
  %.not69 = icmp eq i8 %i.w, 0
  br i1 %.not69, label %.preheader.1, label %bb.e

bb.e:                                             ; preds = %.preheader.preheader
  %i.x = getelementptr i8, ptr %i.o, i64 3
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = getelementptr i8, ptr %i.o, i64 2
  %i.ab = load i8, ptr %i.aa, align 2
  %i.ac = and i8 %i.ab, -64
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 2
  %i.af = or disjoint i32 %i.ae, %i.z
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.e, %.preheader.preheader
  %.160 = phi ptr [ null, %.preheader.preheader ], [ %i.o, %bb.e ] ; 2 uses
  %.1 = phi i32 [ -1, %.preheader.preheader ], [ %i.af, %bb.e ] ; 3 uses
  %i.ag = getelementptr i8, ptr %i.o, i64 20
  %i.ah = load i8, ptr %i.ag, align 2
  %.not69.1 = icmp eq i8 %i.ah, 0
  br i1 %.not69.1, label %.preheader.2, label %bb.f

bb.f:                                             ; preds = %.preheader.1
  %i.ai = getelementptr i8, ptr %i.o, i64 16
  %i.aj = getelementptr i8, ptr %i.o, i64 19
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr i8, ptr %i.o, i64 18
  %i.an = load i8, ptr %i.am, align 2
  %i.ao = and i8 %i.an, -64
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 2
  %i.ar = or disjoint i32 %i.aq, %i.al            ; 2 uses
  %i.as = icmp sgt i32 %i.ar, %.1
  %spec.select.1 = select i1 %i.as, ptr %i.ai, ptr %.160
  %spec.select70.1 = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %.1)
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.f, %.preheader.1
  %.160.1 = phi ptr [ %.160, %.preheader.1 ], [ %spec.select.1, %bb.f ] ; 2 uses
  %.1.1 = phi i32 [ %.1, %.preheader.1 ], [ %spec.select70.1, %bb.f ] ; 3 uses
  %i.at = getelementptr i8, ptr %i.o, i64 36
  %i.au = load i8, ptr %i.at, align 2
  %.not69.2 = icmp eq i8 %i.au, 0
  br i1 %.not69.2, label %.preheader.3, label %bb.g

bb.g:                                             ; preds = %.preheader.2
  %i.av = getelementptr i8, ptr %i.o, i64 32
  %i.aw = getelementptr i8, ptr %i.o, i64 35
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr i8, ptr %i.o, i64 34
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = and i8 %i.ba, -64
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 2
  %i.be = or disjoint i32 %i.bd, %i.ay            ; 2 uses
  %i.bf = icmp sgt i32 %i.be, %.1.1
  %spec.select.2 = select i1 %i.bf, ptr %i.av, ptr %.160.1
  %spec.select70.2 = tail call i32 @llvm.smax.i32(i32 %i.be, i32 %.1.1)
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.g, %.preheader.2
  %.160.2 = phi ptr [ %.160.1, %.preheader.2 ], [ %spec.select.2, %bb.g ] ; 2 uses
  %.1.2 = phi i32 [ %.1.1, %.preheader.2 ], [ %spec.select70.2, %bb.g ]
  %i.bg = getelementptr i8, ptr %i.o, i64 52
  %i.bh = load i8, ptr %i.bg, align 2
  %.not69.3 = icmp eq i8 %i.bh, 0
  br i1 %.not69.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.3
  %i.bi = getelementptr i8, ptr %i.o, i64 48
  %i.bj = getelementptr i8, ptr %i.o, i64 51
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i32
  %i.bm = getelementptr i8, ptr %i.o, i64 50
  %i.bn = load i8, ptr %i.bm, align 2
  %i.bo = and i8 %i.bn, -64
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 2
  %i.br = or disjoint i32 %i.bq, %i.bl
  %i.bs = icmp sgt i32 %i.br, %.1.2
  %spec.select.3 = select i1 %i.bs, ptr %i.bi, ptr %.160.2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.3
  %.160.3 = phi ptr [ %.160.2, %.preheader.3 ], [ %spec.select.3, %bb.h ] ; 6 uses
  %.not67 = icmp eq ptr %.160.3, null
  br i1 %.not67, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr i8, ptr %.160.3, i64 7
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = getelementptr i8, ptr %.160.3, i64 6
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = shl nuw nsw i32 %i.by, 2
  %i.ca = and i32 %i.bz, 768
  %i.cb = or disjoint i32 %i.ca, %i.bv            ; 2 uses
  %i.cc = getelementptr i8, ptr %.160.3, i64 5
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = and i32 %i.by, 63                       ; 6 uses
  %i.cg = add nuw nsw i32 %i.ce, 1                ; 4 uses
  %i.ch = icmp eq i32 %i.cf, 0
  br i1 %i.ch, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = add nuw nsw i32 %i.cb, 1
  %i.cj = mul nuw nsw i32 %i.cg, %i.ci
  %i.ck = mul nuw nsw i32 %i.cj, %i.cf
  %i.cl = getelementptr i8, ptr %.160.3, i64 8
  %.val71 = load i32, ptr %i.cl, align 1
  %i.cm = getelementptr i8, ptr %.160.3, i64 12
  %.val = load i32, ptr %i.cm, align 1
  %i.cn = add i32 %.val, %.val71                  ; 3 uses
  %3 = mul nuw nsw i32 %i.cg, %i.cf               ; 2 uses
  %i.co = icmp eq i32 %i.cn, %i.ck
  br i1 %i.co, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.neg = xor i32 %i.ce, -1
  %.neg68 = mul nsw i32 %i.cf, %.neg
  %i.cp = add i32 %i.cn, %.neg68
  %i.cq = udiv i32 %i.cp, %3
  %i.cr = add i32 %i.cq, 1
  %i.cs = mul i32 %i.cg, %i.cr
  %i.ct = mul i32 %i.cs, %i.cf
  %i.cu = icmp eq i32 %i.cb, 1023
  %i.cv = icmp eq i32 %i.ct, %i.cn
  %or.cond = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.cg, ptr %2, align 4
  %i.cw = getelementptr i8, ptr %2, i64 4
  store i32 %i.cf, ptr %i.cw, align 4
  %i.cx = zext nneg i32 %3 to i64
  %i.cy = udiv i64 %1, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr i8, ptr %2, i64 8
  store i32 %i.cz, ptr %i.da, align 4
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.i, %bb.l, %bb.j, %bb.m
  %i.db = phi i1 [ false, %bb.j ], [ true, %bb.m ], [ false, %bb.i ], [ false, %bb.l ], [ false, %bb.d ]
  tail call void @kfree(ptr noundef nonnull %i.o) #5
  br label %scsi_bios_ptable.exit.thread

scsi_bios_ptable.exit.thread:                     ; preds = %bb.a, %scsi_bios_ptable.exit, %.thread
  %.062 = phi i1 [ %i.db, %.thread ], [ false, %scsi_bios_ptable.exit ], [ false, %bb.a ]
  ret i1 %.062
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @scsicam_bios_param(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @scsi_partsize(ptr noundef %0, i64 noundef %1, ptr noundef %2) #8
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 4294967296
  br i1 %i.b, label %bb.c, label %.critedgethread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.lhs.trunc.i = trunc nuw i64 %1 to i32         ; 4 uses
  %i.e = udiv i32 %.lhs.trunc.i, 63488            ; 2 uses
  %i.f = urem i32 %.lhs.trunc.i, 63488
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %setsize.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %narrow = add nuw nsw i32 %i.e, 1               ; 5 uses
  %.rhs.trunc.i = shl nuw nsw i32 %narrow, 10     ; 2 uses
  %i.g = udiv i32 %.lhs.trunc.i, %.rhs.trunc.i    ; 2 uses
  %i.h = urem i32 %.lhs.trunc.i, %.rhs.trunc.i
  %.not28.i = icmp eq i32 %i.h, 0
  br i1 %.not28.i, label %setsize.exit.thread, label %setsize.exit

setsize.exit.thread:                              ; preds = %bb.c, %bb.d
  %.pre-phi = phi i32 [ %narrow, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %.02534.i.ph = phi i32 [ %i.g, %bb.d ], [ 62, %bb.c ]
  store i32 1024, ptr %i.c, align 4
  store i32 %.02534.i.ph, ptr %i.d, align 4
  store i32 %.pre-phi, ptr %2, align 4
  br label %.critedge

setsize.exit:                                     ; preds = %bb.d
  %i.i = zext nneg i32 %narrow to i64
  %narrow.i = add nuw nsw i32 %i.g, 1             ; 2 uses
  %i.j = zext nneg i32 %narrow.i to i64
  %i.k = mul nuw nsw i64 %i.i, %i.j
  %.fr.i = freeze i64 %i.k                        ; 2 uses
  %i.l = udiv i64 %1, %.fr.i
  %.not = icmp ugt i64 %.fr.i, %1
  %i.m = trunc nuw i64 %i.l to i32
  store i32 %i.m, ptr %i.c, align 4
  store i32 %narrow.i, ptr %i.d, align 4
  store i32 %narrow, ptr %2, align 4
  br i1 %.not, label %bb.f, label %.critedge

.critedgethread-pre-split:                        ; preds = %bb.b
  %.pr = load i32, ptr %2, align 4
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %setsize.exit.thread, %setsize.exit
  %i.n = phi i32 [ %.pr, %.critedgethread-pre-split ], [ %.pre-phi, %setsize.exit.thread ], [ %narrow, %setsize.exit ]
  %i.o = icmp sgt i32 %i.n, 255
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.p = getelementptr i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp sgt i32 %i.q, 63
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %.critedge, %setsize.exit
  %i.s = icmp ugt i64 %1, 134215679
  %i.t = getelementptr i8, ptr %2, i64 4          ; 2 uses
  br i1 %i.s, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  store i32 64, ptr %2, align 4
  store i32 32, ptr %i.t, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 255, ptr %2, align 4
  store i32 63, ptr %i.t, align 4
  %i.u = icmp ugt i64 %1, 1052819775
  br i1 %i.u, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.rhs.trunc = phi i32 [ 2048, %.thread ], [ 16065, %bb.g ]
  %.lhs.trunc = trunc i64 %1 to i32
  %i.v = udiv i32 %.lhs.trunc, %.rhs.trunc
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink = phi i32 [ %i.v, %bb.h ], [ 65535, %bb.g ]
  %i.w = getelementptr i8, ptr %2, i64 8
  store i32 %.sink, ptr %i.w, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e, %bb.a
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @read_cache_folio(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid allocsize(1) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { noredzone nounwind allocsize(1) "no-builtin-wcslen" }
attributes #7 = { nounwind }
attributes #8 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 2148940703, i64 2148940742, i64 2148940763, i64 2148940800, i64 2148940823, i64 2148940832}
end_hunk_0
