inline.NumInlined: 25
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x86_topo_system: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad x86_topo_system ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___amd_nodes_per_pkg: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __amd_nodes_per_pkg ; .previous"

%struct.x86_topology_system = type { [7 x i32], [7 x i32] }
%struct.cpumask = type { [1 x i64] }
%struct.static_call_key = type { ptr, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.topo_scan = type { ptr, [7 x i32], [7 x i32], i32, i16, i16 }

@x86_topo_system = dso_local global %struct.x86_topology_system zeroinitializer, section ".data..ro_after_init", align 4
@__UNIQUE_ID_addressable_x86_topo_system_465 = internal global ptr @x86_topo_system, section ".discard.addressable", align 8
@__amd_nodes_per_pkg = dso_local global i32 0, section ".data..ro_after_init", align 4
@__UNIQUE_ID_addressable___amd_nodes_per_pkg_466 = internal global ptr @__amd_nodes_per_pkg, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"efficiency\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"\013[Firmware Bug]: CPU%4u: APIC ID mismatch. CPUID: 0x%04x APIC: 0x%04x\0A\00", align 1
@cpuid_to_apicid = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"\013[Firmware Bug]: CPU%4u: APIC ID mismatch. Firmware: 0x%04x APIC: 0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"\013[Firmware Bug]: CPU%d: Topology domain %u shift %u != %u\0A\00", align 1
@__cpu_primary_thread_mask = dso_local local_unnamed_addr global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 8
@apic = external dso_local local_unnamed_addr global ptr, align 8
@apic_read.__UNIQUE_ID_addressable___SCK__apic_call_read_450 = internal global ptr @__SCK__apic_call_read, section ".discard.addressable", align 8
@__SCK__apic_call_read = external dso_local global %struct.static_call_key, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"arch/x86/kernel/cpu/topology_common.c\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_addressable___amd_nodes_per_pkg_466, ptr @__UNIQUE_ID_addressable_x86_topo_system_465, ptr @apic_read.__UNIQUE_ID_addressable___SCK__apic_call_read_450], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define dso_local void @topology_set_dom(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr [4 x i8], ptr %i.a, i64 %i.b
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.b
  store i32 %3, ptr %i.e, align 4
  %.014 = add i32 %1, 1                           ; 2 uses
  %i.f = icmp ult i32 %.014, 7
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %.014 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv.a = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next.a, %.lr.ph ] ; 3 uses
  %.0.in15 = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %4 = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.a
  %5 = load i32, ptr %4, align 4
  %i.h = getelementptr [4 x i8], ptr %i.a, i64 %.0.in15
  store i32 %5, ptr %i.h, align 4
  %i.i = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.a
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr [4 x i8], ptr %i.d, i64 %.0.in15
  store i32 %i.j, ptr %i.k, align 4
  %indvars.iv.next = add nuw nsw i64 %.0.in15, 1  ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1
  %i.l = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.l, 7
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 3) i32 @get_topology_cpu_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  switch i8 %i.b, label %bb.c [
    i8 0, label %.sink.split
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink16 = phi i32 [ 28, %bb.b ], [ 24, %bb.a ]
  %.sink14 = phi i32 [ 1, %bb.b ], [ 64, %bb.a ]
  %.sink12 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sink11 = phi i32 [ 0, %bb.b ], [ 32, %bb.a ]
  %.sink = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.c = getelementptr i8, ptr %0, i64 272
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, %.sink16                  ; 2 uses
  %switch.selectcmp6 = icmp eq i32 %i.e, %.sink14
  %switch.select7 = select i1 %switch.selectcmp6, i32 %.sink12, i32 2
  %switch.selectcmp8 = icmp eq i32 %i.e, %.sink11
  %switch.select9 = select i1 %switch.selectcmp8, i32 %.sink, i32 %switch.select7
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ %switch.select9, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local noundef nonnull ptr @get_topology_cpu_type_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2
  switch i8 %i.b, label %.thread [
    i8 0, label %get_topology_cpu_type.exit
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %get_topology_cpu_type.exit

get_topology_cpu_type.exit:                       ; preds = %bb.a, %bb.b
  %.sink16.i = phi i32 [ 28, %bb.b ], [ 24, %bb.a ]
  %.sink14.i = phi i32 [ 1, %bb.b ], [ 64, %bb.a ]
  %.sink12.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sink11.i = phi i32 [ 0, %bb.b ], [ 32, %bb.a ]
  %.sink.i = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.c = getelementptr i8, ptr %0, i64 272
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, %.sink16.i                ; 2 uses
  %switch.selectcmp6.i = icmp eq i32 %i.e, %.sink14.i
  %switch.select7.i = select i1 %switch.selectcmp6.i, i32 %.sink12.i, i32 2
  %switch.selectcmp8.i = icmp eq i32 %i.e, %.sink11.i
  %switch.select9.i = select i1 %switch.selectcmp8.i, i32 %.sink.i, i32 %switch.select7.i
  %switch.select9.i.fr = freeze i32 %switch.select9.i ; 2 uses
  %switch.selectcmp = icmp eq i32 %switch.select9.i.fr, 1
  %spec.select = select i1 %switch.selectcmp, ptr @.str.1, ptr @.str.2
  %switch.selectcmp2 = icmp eq i32 %switch.select9.i.fr, 0
  %spec.select12 = select i1 %switch.selectcmp2, ptr @.str, ptr %spec.select
  br label %.thread

.thread:                                          ; preds = %get_topology_cpu_type.exit, %bb.a
  %i.f = phi ptr [ @.str.2, %bb.a ], [ %spec.select12, %get_topology_cpu_type.exit ]
  ret ptr %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cpu_parse_topology(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.topo_scan, align 8          ; 15 uses
  %i.a = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #8, !srcloc !12 ; 10 uses
  %i.b = zext i32 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  store ptr %0, ptr %1, align 8
  call fastcc void @parse_topology(ptr noundef nonnull %1, i1 noundef zeroext false) #10, !srcloc !13
  %i.d = getelementptr i8, ptr %0, i64 224        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 228
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq i32 %i.f, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %i.a, i32 noundef %i.f, i32 noundef %i.g) #11 ; 0 uses
  %.pre = load i32, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = getelementptr [4 x i8], ptr @cpuid_to_apicid, i64 %i.b
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not29 = icmp eq i32 %i.i, %i.k
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %i.a, i32 noundef %i.k, i32 noundef %i.i) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = load i32, ptr @x86_topo_system, align 4  ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.a, i32 noundef 0, i32 noundef %i.n, i32 noundef %i.o) #11 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 4), align 4 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.a, i32 noundef 1, i32 noundef %i.s, i32 noundef %i.t) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 8), align 4 ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.a, i32 noundef 2, i32 noundef %i.x, i32 noundef %i.y) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 12), align 4 ; 2 uses
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.a, i32 noundef 3, i32 noundef %i.ac, i32 noundef %i.ad) #11 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 16), align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.a, i32 noundef 4, i32 noundef %i.ah, i32 noundef %i.ai) #11 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 20), align 4 ; 2 uses
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.a, i32 noundef 5, i32 noundef %i.am, i32 noundef %i.an) #11 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 24), align 4 ; 2 uses
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.a, i32 noundef 6, i32 noundef %i.ar, i32 noundef %i.as) #11 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.av = load ptr, ptr %1, align 8               ; 9 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 224
  %i.ax = load i32, ptr %i.aw, align 8            ; 6 uses
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 20), align 4
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = getelementptr i8, ptr %i.av, i64 232
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 12), align 4
  %i.bc = lshr i32 %i.ax, %i.bb
  %i.bd = getelementptr i8, ptr %i.av, i64 236
end_hunk_0
