Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/iommu_amdv1?download=true
inline.NumInlined: 364
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pt_iommu_amdv1_iova_to_phys: ; .asciz \22GPL\22 ; .ascii \22GENERIC_PT_IOMMU\22 \22\\0\22 ; .balign 8 ; .quad pt_iommu_amdv1_iova_to_phys ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pt_iommu_amdv1_read_and_clear_dirty: ; .asciz \22GPL\22 ; .ascii \22GENERIC_PT_IOMMU\22 \22\\0\22 ; .balign 8 ; .quad pt_iommu_amdv1_read_and_clear_dirty ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pt_iommu_amdv1_init: ; .asciz \22GPL\22 ; .ascii \22GENERIC_PT_IOMMU\22 \22\\0\22 ; .balign 8 ; .quad pt_iommu_amdv1_init ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pt_iommu_amdv1_hw_info: ; .asciz \22GPL\22 ; .ascii \22GENERIC_PT_IOMMU\22 \22\\0\22 ; .balign 8 ; .quad pt_iommu_amdv1_hw_info ; .previous"

%struct.pt_iommu_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pt_range = type { ptr, ptr, i64, i64, i8, i8 }
%struct.iommu_pages_list = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.iommu_iotlb_gather = type { i64, i64, %union.anon.1, %struct.iommu_pages_list, i8 }
%union.anon.1 = type { i64 }
%struct.pt_iommu_map_args = type { ptr, %struct.amdv1pt_write_attrs, i64, i32, i32, i64 }
%struct.amdv1pt_write_attrs = type { i64, i32 }
%struct.pt_unmap_args = type { %struct.iommupt_pending_gather, i64 }
%struct.iommupt_pending_gather = type { ptr, %struct.iommu_pages_list, i8, i8 }
%struct.pt_iommu_collect_args = type { %struct.iommupt_pending_gather, i8 }

@__UNIQUE_ID_addressable_pt_iommu_amdv1_iova_to_phys_606 = internal global ptr @pt_iommu_amdv1_iova_to_phys, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_pt_iommu_amdv1_read_and_clear_dirty_610 = internal global ptr @pt_iommu_amdv1_read_and_clear_dirty, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"drivers/iommu/generic_pt/fmt/../iommu_pt.h\00", align 1
@amdv1_ops = internal constant %struct.pt_iommu_ops { ptr @amdv1_map_range, ptr @amdv1_unmap_range, ptr null, ptr @amdv1_get_info, ptr @amdv1_deinit }, align 8
@__UNIQUE_ID_addressable_pt_iommu_amdv1_init_622 = internal global ptr @pt_iommu_amdv1_init, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_pt_iommu_amdv1_hw_info_623 = internal global ptr @pt_iommu_amdv1_hw_info, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_624 = internal constant [58 x i8] c"iommu_amdv1.file=drivers/iommu/generic_pt/fmt/iommu_amdv1\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_625 = internal constant [24 x i8] c"iommu_amdv1.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_626 = internal constant [66 x i8] c"iommu_amdv1.description=IOMMU Page table implementation for amdv1\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_627 = internal constant [33 x i8] c"iommu_amdv1.import_ns=GENERIC_PT\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_628 = internal constant [30 x i8] c"iommu_amdv1.import_ns=IOMMUFD\00", section ".modinfo", align 1
@page_offset_base = external dso_local local_unnamed_addr global i64, align 8
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@phys_base = external dso_local local_unnamed_addr global i64, align 8
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_addressable_pt_iommu_amdv1_hw_info_623, ptr @__UNIQUE_ID_addressable_pt_iommu_amdv1_init_622, ptr @__UNIQUE_ID_addressable_pt_iommu_amdv1_iova_to_phys_606, ptr @__UNIQUE_ID_addressable_pt_iommu_amdv1_read_and_clear_dirty_610, ptr @__UNIQUE_ID_modinfo_624, ptr @__UNIQUE_ID_modinfo_625, ptr @__UNIQUE_ID_modinfo_626, ptr @__UNIQUE_ID_modinfo_627, ptr @__UNIQUE_ID_modinfo_628], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local i64 @pt_iommu_amdv1_iova_to_phys(ptr noundef %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.pt_range, align 8           ; 14 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.c = load volatile i64, ptr %i.b, align 8, !noalias !27 ; 2 uses
  %i.d = and i64 %i.c, -8
  %i.e = inttoptr i64 %i.d to ptr                 ; 7 uses
  %i.f = trunc i64 %i.c to i8
  %i.g = and i8 %i.f, 7                           ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 153
  %i.i = load i8, ptr %i.h, align 1, !noalias !28 ; 2 uses
  %.not.i = icmp ne i8 %i.g, 5                    ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %narrow.i = mul nuw nsw i8 %i.g, 9
  %narrow17.i = add nuw nsw i8 %narrow.i, 21
  %i.j = tail call i8 @llvm.umin.i8(i8 %narrow17.i, i8 %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i8 [ %i.j, %bb.b ], [ %i.i, %bb.a ]  ; 3 uses
  store ptr %i.b, ptr %2, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %1, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %1, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.g, ptr %.sroa.13.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 %i.k, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17.0..sroa_idx.i, i8 0, i64 6, i1 false)
  %i.l = icmp eq i8 %i.k, 64                      ; 5 uses
  %i.m = zext i8 %i.k to i64                      ; 5 uses
  %i.n = lshr i64 %1, %i.m
  %i.o = icmp eq i64 %i.n, 0
  %.0.i15.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %.0.i15.i, label %make_range_ul.exit, label %__iova_to_phys.exit.thread65

make_range_ul.exit:                               ; preds = %bb.c
  store i64 0, ptr %i.a, align 8, !annotation !12
  switch i8 %i.g, label %pt_range_to_index.exit.i.i42 [
    i8 0, label %pt_range_to_index.exit.i.i
    i8 1, label %bb.f
    i8 2, label %pt_range_to_index.exit.i.i18
    i8 3, label %bb.k
    i8 4, label %pt_range_to_index.exit.i.i29
  ]

pt_range_to_index.exit.i.i:                       ; preds = %make_range_ul.exit
  %notmask.i.i.i.i = shl nsw i64 -1, %i.m
  %i.p = xor i64 %notmask.i.i.i.i, -1
  %i.q = select i1 %i.l, i64 268431360, i64 %i.p
  %.0.i.i.i.i = and i64 %i.q, %1
  %i.r = lshr i64 %.0.i.i.i.i, 12
  %i.s = and i64 %i.r, 65535
  %i.t = getelementptr [8 x i8], ptr %i.e, i64 %i.s
  %i.u = load volatile i64, ptr %i.t, align 8     ; 4 uses
  %i.v = and i64 %i.u, 1
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %__iova_to_phys.exit.thread65, label %bb.d

bb.d:                                             ; preds = %pt_range_to_index.exit.i.i
  %i.w = lshr i64 %i.u, 12
  %i.x = and i64 %i.w, 1099511627775              ; 3 uses
  %i.y = and i64 %i.u, 3584                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 3584
  br i1 %i.z, label %amdv1pt_entry_oa.exit.thread.i.i, label %amdv1pt_entry_oa.exit.i.i

amdv1pt_entry_oa.exit.thread.i.i:                 ; preds = %bb.d
  %i.aa = xor i64 %i.x, -1
  %i.ab = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa) #14, !srcloc !13
  %i.ac = and i64 %i.ab, 4294967295
  %notmask.i.i.i = shl nsw i64 -1, %i.ac
  %i.ad = and i64 %notmask.i.i.i, %i.x
  %i.ae = shl nuw nsw i64 %i.ad, 12
  br label %bb.e

amdv1pt_entry_oa.exit.i.i:                        ; preds = %bb.d
  %i.af = shl nuw nsw i64 %i.x, 12                ; 2 uses
  %i.ag = icmp eq i64 %i.y, 0
  br i1 %i.ag, label %pt_entry_oa_exact.exit.i, label %bb.e

bb.e:                                             ; preds = %amdv1pt_entry_oa.exit.thread.i.i, %amdv1pt_entry_oa.exit.i.i
  %i.ah = phi i64 [ %i.ae, %amdv1pt_entry_oa.exit.thread.i.i ], [ %i.af, %amdv1pt_entry_oa.exit.i.i ]
  %i.ai = lshr i64 %i.u, 11
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = xor i64 %i.aj, -1
  %i.al = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ak) #14, !srcloc !13
  %i.am = add i64 %i.al, 12
  %i.an = and i64 %i.am, 4294967295
  br label %pt_entry_oa_exact.exit.i

pt_entry_oa_exact.exit.i:                         ; preds = %bb.e, %amdv1pt_entry_oa.exit.i.i
  %i.ao = phi i64 [ %i.ah, %bb.e ], [ %i.af, %amdv1pt_entry_oa.exit.i.i ]
  %.0.i.i.i3.i = phi i64 [ %i.an, %bb.e ], [ 12, %amdv1pt_entry_oa.exit.i.i ]
  %notmask.i.i = shl nsw i64 -1, %.0.i.i.i3.i
  %i.ap = xor i64 %notmask.i.i, -1
  %i.aq = and i64 %1, %i.ap
  %i.ar = or i64 %i.aq, %i.ao
  br label %__iova_to_phys.exit.thread65

bb.f:                                             ; preds = %make_range_ul.exit
  %i.as = call fastcc i32 @__iova_to_phys1(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.e) #15
  br label %__iova_to_phys.exit

pt_range_to_index.exit.i.i18:                     ; preds = %make_range_ul.exit
  %notmask.i.i.i.i27 = shl nsw i64 -1, %i.m
  %i.at = xor i64 %notmask.i.i.i.i27, -1
  %i.au = select i1 %i.l, i64 70367670435840, i64 %i.at
  %.0.i.i.i.i28 = and i64 %i.au, %1
  %i.av = lshr i64 %.0.i.i.i.i28, 30
  %i.aw = and i64 %i.av, 65535
  %i.ax = getelementptr [8 x i8], ptr %i.e, i64 %i.aw
  %i.ay = load volatile i64, ptr %i.ax, align 8   ; 6 uses
  %i.az = and i64 %i.ay, 1
  %.not.i.i.i.i19 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i19, label %__iova_to_phys.exit.thread65, label %bb.g

bb.g:                                             ; preds = %pt_range_to_index.exit.i.i18
  %i.ba = trunc i64 %i.ay to i32
  %i.bb = lshr i32 %i.ba, 9
  %i.bc = and i32 %i.bb, 7
  %.off.i.i.i.i = add nsw i32 %i.bc, -1
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, 6
  br i1 %switch.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = and i64 %i.ay, 4503599627366400
  %i.be = load i64, ptr @page_offset_base, align 8
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = call fastcc i32 @__iova_to_phys1(ptr noundef nonnull readonly %2, ptr noundef nonnull %i.a, ptr noundef %i.bg) #16
  br label %__iova_to_phys.exit

bb.i:                                             ; preds = %bb.g
  %i.bi = lshr i64 %i.ay, 12
  %i.bj = and i64 %i.bi, 1099511627775            ; 3 uses
  %i.bk = and i64 %i.ay, 3584                     ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 3584
  br i1 %i.bl, label %amdv1pt_entry_oa.exit.thread.i.i25, label %amdv1pt_entry_oa.exit.i.i20

amdv1pt_entry_oa.exit.thread.i.i25:               ; preds = %bb.i
  %i.bm = xor i64 %i.bj, -1
  %i.bn = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.bm) #14, !srcloc !13
  %i.bo = and i64 %i.bn, 4294967295
  %notmask.i.i.i26 = shl nsw i64 -1, %i.bo
  %i.bp = and i64 %notmask.i.i.i26, %i.bj
  %i.bq = shl nuw nsw i64 %i.bp, 12
  br label %bb.j

amdv1pt_entry_oa.exit.i.i20:                      ; preds = %bb.i
  %i.br = shl nuw nsw i64 %i.bj, 12               ; 2 uses
  %i.bs = icmp eq i64 %i.bk, 0
  br i1 %i.bs, label %pt_entry_oa_exact.exit.i21, label %bb.j

bb.j:                                             ; preds = %amdv1pt_entry_oa.exit.thread.i.i25, %amdv1pt_entry_oa.exit.i.i20
  %i.bt = phi i64 [ %i.bq, %amdv1pt_entry_oa.exit.thread.i.i25 ], [ %i.br, %amdv1pt_entry_oa.exit.i.i20 ]
  %i.bu = lshr i64 %i.ay, 29
  %i.bv = and i64 %i.bu, 4294967295
  %i.bw = xor i64 %i.bv, -1
  %i.bx = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.bw) #14, !srcloc !13
  %i.by = add i64 %i.bx, 30
  %i.bz = and i64 %i.by, 4294967295
  br label %pt_entry_oa_exact.exit.i21

pt_entry_oa_exact.exit.i21:                       ; preds = %bb.j, %amdv1pt_entry_oa.exit.i.i20
  %i.ca = phi i64 [ %i.bt, %bb.j ], [ %i.br, %amdv1pt_entry_oa.exit.i.i20 ]
  %.0.i.i.i3.i22 = phi i64 [ %i.bz, %bb.j ], [ 30, %amdv1pt_entry_oa.exit.i.i20 ]
  %notmask.i.i23 = shl nsw i64 -1, %.0.i.i.i3.i22
  %i.cb = xor i64 %notmask.i.i23, -1
  %i.cc = and i64 %1, %i.cb
  %i.cd = or i64 %i.cc, %i.ca
  br label %__iova_to_phys.exit.thread65

bb.k:                                             ; preds = %make_range_ul.exit
  %i.ce = call fastcc i32 @__iova_to_phys3(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.e) #15
  br label %__iova_to_phys.exit

pt_range_to_index.exit.i.i29:                     ; preds = %make_range_ul.exit
  %notmask.i.i.i.i40 = shl nsw i64 -1, %i.m
  %i.cf = xor i64 %notmask.i.i.i.i40, -1
  %i.cg = select i1 %i.l, i64 -281474976710656, i64 %i.cf
  %.0.i.i.i.i41 = and i64 %i.cg, %1
  %i.ch = lshr i64 %.0.i.i.i.i41, 48
  %i.ci = getelementptr [8 x i8], ptr %i.e, i64 %i.ch
  %i.cj = load volatile i64, ptr %i.ci, align 8   ; 6 uses
  %i.ck = and i64 %i.cj, 1
  %.not.i.i.i.i30 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i30, label %__iova_to_phys.exit.thread65, label %bb.l

bb.l:                                             ; preds = %pt_range_to_index.exit.i.i29
  %i.cl = trunc i64 %i.cj to i32
  %i.cm = lshr i32 %i.cl, 9
  %i.cn = and i32 %i.cm, 7
  %.off.i.i.i.i31 = add nsw i32 %i.cn, -1
  %switch.i.i.i.i32 = icmp ult i32 %.off.i.i.i.i31, 6
  br i1 %switch.i.i.i.i32, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.co = and i64 %i.cj, 4503599627366400
  %i.cp = load i64, ptr @page_offset_base, align 8
  %i.cq = add i64 %i.cp, %i.co
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = call fastcc i32 @__iova_to_phys3(ptr noundef nonnull readonly %2, ptr noundef nonnull %i.a, ptr noundef %i.cr) #16
  br label %__iova_to_phys.exit

bb.n:                                             ; preds = %bb.l
  %i.ct = lshr i64 %i.cj, 12
  %i.cu = and i64 %i.ct, 1099511627775            ; 3 uses
  %i.cv = and i64 %i.cj, 3584                     ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 3584
  br i1 %i.cw, label %amdv1pt_entry_oa.exit.thread.i.i38, label %amdv1pt_entry_oa.exit.i.i33

amdv1pt_entry_oa.exit.thread.i.i38:               ; preds = %bb.n
  %i.cx = xor i64 %i.cu, -1
  %i.cy = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.cx) #14, !srcloc !13
  %i.cz = and i64 %i.cy, 4294967295
  %notmask.i.i.i39 = shl nsw i64 -1, %i.cz
  %i.da = and i64 %notmask.i.i.i39, %i.cu
  %i.db = shl nuw nsw i64 %i.da, 12
  br label %bb.o

amdv1pt_entry_oa.exit.i.i33:                      ; preds = %bb.n
  %i.dc = shl nuw nsw i64 %i.cu, 12               ; 2 uses
  %i.dd = icmp eq i64 %i.cv, 0
  br i1 %i.dd, label %pt_entry_oa_exact.exit.i34, label %bb.o

bb.o:                                             ; preds = %amdv1pt_entry_oa.exit.thread.i.i38, %amdv1pt_entry_oa.exit.i.i33
  %i.de = phi i64 [ %i.db, %amdv1pt_entry_oa.exit.thread.i.i38 ], [ %i.dc, %amdv1pt_entry_oa.exit.i.i33 ]
  %i.df = lshr i64 %i.cj, 47
  %i.dg = xor i64 %i.df, -1
  %i.dh = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.dg) #14, !srcloc !13
  %i.di = add i64 %i.dh, 48
  %i.dj = and i64 %i.di, 4294967295
  br label %pt_entry_oa_exact.exit.i34

pt_entry_oa_exact.exit.i34:                       ; preds = %bb.o, %amdv1pt_entry_oa.exit.i.i33
  %i.dk = phi i64 [ %i.de, %bb.o ], [ %i.dc, %amdv1pt_entry_oa.exit.i.i33 ]
  %.0.i.i.i3.i35 = phi i64 [ %i.dj, %bb.o ], [ 48, %amdv1pt_entry_oa.exit.i.i33 ]
  %notmask.i.i36 = shl nsw i64 -1, %.0.i.i.i3.i35
  %i.dl = xor i64 %notmask.i.i36, -1
  %i.dm = and i64 %1, %i.dl
  %i.dn = or i64 %i.dm, %i.dk
  br label %__iova_to_phys.exit.thread65

pt_range_to_index.exit.i.i42:                     ; preds = %make_range_ul.exit
  %notmask.i.i.i.i53 = shl nsw i64 -1, %i.m
  %3 = xor i64 %notmask.i.i.i.i53, -1
  %.not = or i1 %.not.i, %i.l
  %.0.i.i.i.i54 = select i1 %.not, i64 -144115188075855872, i64 %3
  %.0.i.i.in.in.i = and i64 %1, %.0.i.i.i.i54
  %.0.i.i.in.i = lshr i64 %.0.i.i.in.in.i, 57
  %i.do = getelementptr [8 x i8], ptr %i.e, i64 %.0.i.i.in.i
  %i.dp = load volatile i64, ptr %i.do, align 8   ; 6 uses
  %i.dq = and i64 %i.dp, 1
  %.not.i.i.i.i43 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i43, label %__iova_to_phys.exit.thread65, label %bb.p

bb.p:                                             ; preds = %pt_range_to_index.exit.i.i42
  %i.dr = trunc i64 %i.dp to i32
  %i.ds = lshr i32 %i.dr, 9
  %i.dt = and i32 %i.ds, 7
  %.off.i.i.i.i44 = add nsw i32 %i.dt, -1
  %switch.i.i.i.i45 = icmp ult i32 %.off.i.i.i.i44, 6
  br i1 %switch.i.i.i.i45, label %pt_range_to_index.exit.i.i.i, label %bb.u

pt_range_to_index.exit.i.i.i:                     ; preds = %bb.p
  %i.du = and i64 %i.dp, 4503599627366400
  %i.dv = load i64, ptr @page_offset_base, align 8 ; 2 uses
  %i.dw = add i64 %i.dv, %i.du
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = lshr i64 %1, 48
  %i.dz = and i64 %i.dy, 511
  %i.ea = getelementptr [8 x i8], ptr %i.dx, i64 %i.dz
  %i.eb = load volatile i64, ptr %i.ea, align 8   ; 6 uses
  %i.ec = and i64 %i.eb, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i.i.i, label %__iova_to_phys.exit.thread65, label %bb.q

bb.q:                                             ; preds = %pt_range_to_index.exit.i.i.i
  %i.ed = trunc i64 %i.eb to i32
  %i.ee = lshr i32 %i.ed, 9
  %i.ef = and i32 %i.ee, 7
  %.off.i.i.i.i.i = add nsw i32 %i.ef, -1
  %switch.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i, 6
  br i1 %switch.i.i.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eg = and i64 %i.eb, 4503599627366400
  %i.eh = add i64 %i.eg, %i.dv
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = call fastcc i32 @__iova_to_phys3(ptr noundef nonnull readonly %2, ptr noundef nonnull %i.a, ptr noundef %i.ei) #16
  br label %__iova_to_phys.exit

bb.s:                                             ; preds = %bb.q
  %i.ek = lshr i64 %i.eb, 12
  %i.el = and i64 %i.ek, 1099511627775            ; 3 uses
  %i.em = and i64 %i.eb, 3584                     ; 2 uses
  %i.en = icmp eq i64 %i.em, 3584
  br i1 %i.en, label %amdv1pt_entry_oa.exit.thread.i.i.i, label %amdv1pt_entry_oa.exit.i.i.i

amdv1pt_entry_oa.exit.thread.i.i.i:               ; preds = %bb.s
  %i.eo = xor i64 %i.el, -1
  %i.ep = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.eo) #14, !srcloc !13
  %i.eq = and i64 %i.ep, 4294967295
  %notmask.i.i.i5.i = shl nsw i64 -1, %i.eq
  %i.er = and i64 %notmask.i.i.i5.i, %i.el
  %i.es = shl nuw nsw i64 %i.er, 12
  br label %bb.t

amdv1pt_entry_oa.exit.i.i.i:                      ; preds = %bb.s
  %i.et = shl nuw nsw i64 %i.el, 12               ; 2 uses
  %i.eu = icmp eq i64 %i.em, 0
  br i1 %i.eu, label %pt_entry_oa_exact.exit.i.i, label %bb.t

bb.t:                                             ; preds = %amdv1pt_entry_oa.exit.thread.i.i.i, %amdv1pt_entry_oa.exit.i.i.i
  %i.ev = phi i64 [ %i.es, %amdv1pt_entry_oa.exit.thread.i.i.i ], [ %i.et, %amdv1pt_entry_oa.exit.i.i.i ]
  %i.ew = lshr i64 %i.eb, 47
  %i.ex = xor i64 %i.ew, -1
  %i.ey = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ex) #14, !srcloc !13
  %i.ez = add i64 %i.ey, 48
  %i.fa = and i64 %i.ez, 4294967295
  br label %pt_entry_oa_exact.exit.i.i

pt_entry_oa_exact.exit.i.i:                       ; preds = %bb.t, %amdv1pt_entry_oa.exit.i.i.i
  %i.fb = phi i64 [ %i.ev, %bb.t ], [ %i.et, %amdv1pt_entry_oa.exit.i.i.i ]
  %.0.i.i.i3.i.i = phi i64 [ %i.fa, %bb.t ], [ 48, %amdv1pt_entry_oa.exit.i.i.i ]
  %notmask.i.i.i52 = shl nsw i64 -1, %.0.i.i.i3.i.i
  %i.fc = xor i64 %notmask.i.i.i52, -1
  %i.fd = and i64 %1, %i.fc
  %i.fe = or i64 %i.fd, %i.fb
  br label %__iova_to_phys.exit.thread65

bb.u:                                             ; preds = %bb.p
  %i.ff = lshr i64 %i.dp, 12
  %i.fg = and i64 %i.ff, 1099511627775            ; 3 uses
  %i.fh = and i64 %i.dp, 3584                     ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 3584
  br i1 %i.fi, label %amdv1pt_entry_oa.exit.thread.i.i50, label %amdv1pt_entry_oa.exit.i.i46

amdv1pt_entry_oa.exit.thread.i.i50:               ; preds = %bb.u
  %i.fj = xor i64 %i.fg, -1
  %i.fk = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.fj) #14, !srcloc !13
  %i.fl = and i64 %i.fk, 4294967295
  %notmask.i.i7.i = shl nsw i64 -1, %i.fl
  %i.fm = and i64 %notmask.i.i7.i, %i.fg
  %i.fn = shl nuw nsw i64 %i.fm, 12
  br label %bb.v

amdv1pt_entry_oa.exit.i.i46:                      ; preds = %bb.u
  %i.fo = shl nuw nsw i64 %i.fg, 12               ; 2 uses
  %i.fp = icmp eq i64 %i.fh, 0
  br i1 %i.fp, label %pt_entry_oa_exact.exit.i47, label %bb.v

bb.v:                                             ; preds = %amdv1pt_entry_oa.exit.thread.i.i50, %amdv1pt_entry_oa.exit.i.i46
  %i.fq = phi i64 [ %i.fn, %amdv1pt_entry_oa.exit.thread.i.i50 ], [ %i.fo, %amdv1pt_entry_oa.exit.i.i46 ]
  %i.fr = lshr i64 %i.dp, 56
  %i.fs = xor i64 %i.fr, -1
  %i.ft = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.fs) #14, !srcloc !13
  %i.fu = add i64 %i.ft, 57
  %i.fv = and i64 %i.fu, 4294967295
  br label %pt_entry_oa_exact.exit.i47

pt_entry_oa_exact.exit.i47:                       ; preds = %bb.v, %amdv1pt_entry_oa.exit.i.i46
  %i.fw = phi i64 [ %i.fq, %bb.v ], [ %i.fo, %amdv1pt_entry_oa.exit.i.i46 ]
  %.0.i.i.i6.i = phi i64 [ %i.fv, %bb.v ], [ 57, %amdv1pt_entry_oa.exit.i.i46 ]
  %notmask.i.i48 = shl nsw i64 -1, %.0.i.i.i6.i
  %i.fx = xor i64 %notmask.i.i48, -1
  %i.fy = and i64 %1, %i.fx
  %i.fz = or i64 %i.fy, %i.fw
  br label %__iova_to_phys.exit.thread65

__iova_to_phys.exit:                              ; preds = %bb.r, %bb.m, %bb.h, %bb.f, %bb.k
  %.0.i = phi i32 [ %i.cs, %bb.m ], [ %i.as, %bb.f ], [ %i.bh, %bb.h ], [ %i.ce, %bb.k ], [ %i.ej, %bb.r ]
  %.0.i.fr = freeze i32 %.0.i
  %.not16 = icmp eq i32 %.0.i.fr, 0
  %i.ga = load i64, ptr %i.a, align 8
  %spec.select = select i1 %.not16, i64 %i.ga, i64 0
  br label %__iova_to_phys.exit.thread65

__iova_to_phys.exit.thread65:                     ; preds = %pt_entry_oa_exact.exit.i.i, %pt_entry_oa_exact.exit.i47, %pt_entry_oa_exact.exit.i34, %pt_entry_oa_exact.exit.i21, %pt_entry_oa_exact.exit.i, %bb.c, %__iova_to_phys.exit, %pt_range_to_index.exit.i.i42, %pt_range_to_index.exit.i.i.i, %pt_range_to_index.exit.i.i18, %pt_range_to_index.exit.i.i, %pt_range_to_index.exit.i.i29
  %.0 = phi i64 [ 0, %pt_range_to_index.exit.i.i.i ], [ 0, %pt_range_to_index.exit.i.i42 ], [ %spec.select, %__iova_to_phys.exit ], [ -34, %bb.c ], [ 0, %pt_range_to_index.exit.i.i29 ], [ 0, %pt_range_to_index.exit.i.i ], [ 0, %pt_range_to_index.exit.i.i18 ], [ %i.ar, %pt_entry_oa_exact.exit.i ], [ %i.cd, %pt_entry_oa_exact.exit.i21 ], [ %i.dn, %pt_entry_oa_exact.exit.i34 ], [ %i.fz, %pt_entry_oa_exact.exit.i47 ], [ %i.fe, %pt_entry_oa_exact.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef i32 @pt_iommu_amdv1_read_and_clear_dirty(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, i64 %3, ptr nofree readnone captures(none) %4) #3 align 16 prefalign(16) {
bb.a:
  ret i32 -95
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @pt_iommu_amdv1_init(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = add i8 %i.c, -65
  %or.cond = icmp ult i8 %i.d, -64
  br i1 %or.cond, label %amdv1pt_iommu_fmt_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 5          ; 4 uses
  %i.f = load i8, ptr %i.e, align 1
  %.not55 = icmp eq i8 %i.f, 0
  br i1 %.not55, label %amdv1pt_iommu_fmt_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %0, i64 128 ; 3 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.61.0.copyload.i = load ptr, ptr %.sroa.61.0..sroa_idx.i, align 8
  %i.g = getelementptr i8, ptr %0, i64 112        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  store ptr %.sroa.61.0.copyload.i, ptr %.sroa.61.0..sroa_idx.i, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.h = load i32, ptr %1, align 4                ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 156        ; 2 uses
  store i32 %i.h, ptr %i.i, align 4
  %i.j = load i8, ptr %i.b, align 4
  %i.k = getelementptr i8, ptr %0, i64 153        ; 3 uses
  store i8 %i.j, ptr %i.k, align 1
  %i.l = load i8, ptr %i.e, align 1
  %i.m = getelementptr i8, ptr %0, i64 152        ; 3 uses
  store i8 %i.l, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, -6
  %or.cond.i = icmp ult i32 %i.p, -5
  br i1 %or.cond.i, label %amdv1pt_iommu_fmt_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.b, align 4
  %i.r = tail call i8 @llvm.umin.i8(i8 %i.q, i8 64) ; 3 uses
  store i8 %i.r, ptr %i.k, align 1
  %i.s = load i8, ptr %i.e, align 1               ; 2 uses
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 52) ; 2 uses
end_hunk_0
