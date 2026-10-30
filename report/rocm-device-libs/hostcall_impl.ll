Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/hostcall_impl?download=true
inline.NumInlined: 18
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

; Function Attrs: convergent norecurse nounwind denormal_fpenv(dynamic) uwtable
define hidden <2 x i64> @__ockl_hostcall_internal(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @__ockl_lane_u32() #4      ; 3 uses
  %i.b = tail call i32 @llvm.amdgcn.readfirstlane.i32(i32 %i.a)
  %i.c = addrspacecast ptr %0 to ptr addrspace(1) ; 11 uses
  %i.d = icmp eq i32 %i.a, %i.b                   ; 5 uses
  br i1 %i.d, label %bb.b, label %pop_free_stack.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr addrspace(1) %i.c, i64 24 ; 3 uses
  %i.f = load atomic i64, ptr addrspace(1) %i.e syncscope("one-as") acquire, align 8 ; 3 uses
  %i.g = getelementptr i8, ptr addrspace(1) %i.c, i64 40 ; 2 uses
  %.val15.i.i = load ptr addrspace(1), ptr addrspace(1) %i.c, align 8, !tbaa !13
  %.val1316.i.i = load i64, ptr addrspace(1) %i.g, align 8, !tbaa !14
  %i.h = and i64 %.val1316.i.i, %i.f
  %i.i = getelementptr inbounds nuw [24 x i8], ptr addrspace(1) %.val15.i.i, i64 %i.h
  %i.j = load atomic i64, ptr addrspace(1) %i.i syncscope("one-as") monotonic, align 8
  %i.k = cmpxchg ptr addrspace(1) %i.e, i64 %i.f, i64 %i.j syncscope("one-as") acquire monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %pop_free_stack.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.m = phi { i64, i1 } [ %i.r, %.lr.ph.i.i ], [ %i.k, %bb.b ]
  %i.n = extractvalue { i64, i1 } %i.m, 0         ; 3 uses
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  %.val.i.i = load ptr addrspace(1), ptr addrspace(1) %i.c, align 8, !tbaa !13
  %.val13.i.i = load i64, ptr addrspace(1) %i.g, align 8, !tbaa !14
  %i.o = and i64 %.val13.i.i, %i.n
  %i.p = getelementptr inbounds nuw [24 x i8], ptr addrspace(1) %.val.i.i, i64 %i.o
  %i.q = load atomic i64, ptr addrspace(1) %i.p syncscope("one-as") monotonic, align 8
  %i.r = cmpxchg ptr addrspace(1) %i.e, i64 %i.n, i64 %i.q syncscope("one-as") acquire monotonic, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %pop_free_stack.exit, label %.lr.ph.i.i

pop_free_stack.exit:                              ; preds = %.lr.ph.i.i, %bb.a, %bb.b
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %10 = trunc i64 %.0.i to i32
  %11 = lshr i64 %.0.i, 32
  %12 = trunc nuw i64 %11 to i32
  %i.t = tail call i32 @llvm.amdgcn.readfirstlane.i32(i32 %10)
  %i.u = tail call i32 @llvm.amdgcn.readfirstlane.i32(i32 %12)
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw i64 %i.v, 32
  %i.x = zext i32 %i.t to i64
  %i.y = or disjoint i64 %i.w, %i.x               ; 5 uses
  %.val = load ptr addrspace(1), ptr addrspace(1) %i.c, align 8, !tbaa !13 ; 2 uses
  %i.z = getelementptr i8, ptr addrspace(1) %i.c, i64 40 ; 3 uses
  %.val34 = load i64, ptr addrspace(1) %i.z, align 8, !tbaa !14
  %i.aa = and i64 %i.y, %.val34                   ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr addrspace(1) %.val, i64 %i.aa ; 4 uses
  %i.ac = getelementptr i8, ptr addrspace(1) %i.c, i64 8
  %.val35 = load ptr addrspace(1), ptr addrspace(1) %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw [4096 x i8], ptr addrspace(1) %.val35, i64 %i.aa
  %i.ae = tail call i64 @llvm.amdgcn.ballot.i64(i1 true)
  br i1 %i.d, label %bb.c, label %fill_packet.exit

bb.c:                                             ; preds = %pop_free_stack.exit
  %i.af = getelementptr inbounds nuw i8, ptr addrspace(1) %i.ab, i64 16
  store i32 %1, ptr addrspace(1) %i.af, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr addrspace(1) %i.ab, i64 8
  store i64 %i.ae, ptr addrspace(1) %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr addrspace(1) %i.ab, i64 20
  store i32 1, ptr addrspace(1) %i.ah, align 4, !tbaa !19
  br label %fill_packet.exit

fill_packet.exit:                                 ; preds = %pop_free_stack.exit, %bb.c
  %i.ai = zext i32 %i.a to i64
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr addrspace(1) %i.ad, i64 %i.ai ; 9 uses
  store i64 %2, ptr addrspace(1) %i.aj, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr addrspace(1) %i.aj, i64 8
  store i64 %3, ptr addrspace(1) %i.ak, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr addrspace(1) %i.aj, i64 16
  store i64 %4, ptr addrspace(1) %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr addrspace(1) %i.aj, i64 24
  store i64 %5, ptr addrspace(1) %i.am, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr addrspace(1) %i.aj, i64 32
  store i64 %6, ptr addrspace(1) %i.an, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr addrspace(1) %i.aj, i64 40
  store i64 %7, ptr addrspace(1) %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr addrspace(1) %i.aj, i64 48
  store i64 %8, ptr addrspace(1) %i.ap, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr addrspace(1) %i.aj, i64 56
  store i64 %9, ptr addrspace(1) %i.aq, align 8, !tbaa !20
  br i1 %i.d, label %bb.d, label %push_ready_stack.exit

bb.d:                                             ; preds = %fill_packet.exit
  %i.ar = getelementptr inbounds nuw i8, ptr addrspace(1) %i.c, i64 32 ; 3 uses
  %i.as = load atomic i64, ptr addrspace(1) %i.ar syncscope("one-as") monotonic, align 8 ; 2 uses
  %.val10.i.i = load i64, ptr addrspace(1) %i.z, align 8, !tbaa !14
  %i.at = and i64 %.val10.i.i, %i.y
  %i.au = getelementptr inbounds nuw [24 x i8], ptr addrspace(1) %.val, i64 %i.at ; 2 uses
  store i64 %i.as, ptr addrspace(1) %i.au, align 8, !tbaa !21
  %i.av = cmpxchg ptr addrspace(1) %i.ar, i64 %i.as, i64 %i.y syncscope("one-as") release monotonic, align 8 ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %push.exit.i, label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %bb.d, %.lr.ph.i.i38
  %i.ax = phi { i64, i1 } [ %i.az, %.lr.ph.i.i38 ], [ %i.av, %bb.d ]
  %i.ay = extractvalue { i64, i1 } %i.ax, 0       ; 2 uses
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  store i64 %i.ay, ptr addrspace(1) %i.au, align 8, !tbaa !21
  %i.az = cmpxchg ptr addrspace(1) %i.ar, i64 %i.ay, i64 %i.y syncscope("one-as") release monotonic, align 8 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %push.exit.i, label %.lr.ph.i.i38

push.exit.i:                                      ; preds = %.lr.ph.i.i38, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr addrspace(1) %i.c, i64 16
  %i.bc = load i64, ptr addrspace(1) %i.bb, align 8
  tail call void @__ockl_hsa_signal_add(i64 %i.bc, i64 noundef 1, i32 noundef 3) #4
  br label %push_ready_stack.exit

push_ready_stack.exit:                            ; preds = %fill_packet.exit, %push.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr addrspace(1) %i.ab, i64 20
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %push_ready_stack.exit
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = load atomic i32, ptr addrspace(1) %i.bd syncscope("one-as") acquire, align 4
  %i.bf = and i32 %i.be, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i39 = phi i32 [ %i.bf, %bb.f ], [ 1, %bb.e ]
  %i.bg = tail call i32 @llvm.amdgcn.readfirstlane.i32(i32 %.0.i39)
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %get_return_value.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  br label %bb.e

get_return_value.exit:                            ; preds = %bb.g
  %i.bi = load <2 x i64>, ptr addrspace(1) %i.aj, align 8, !tbaa !20
  br i1 %i.d, label %bb.i, label %return_free_packet.exit

bb.i:                                             ; preds = %get_return_value.exit
  %i.bj = load i64, ptr addrspace(1) %i.z, align 8, !tbaa !14 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 2 uses
  %i.bl = add i64 %i.bk, %i.y                     ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = select i1 %i.bm, i64 %i.bk, i64 %i.bl   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr addrspace(1) %i.c, i64 24 ; 3 uses
  %i.bp = load atomic i64, ptr addrspace(1) %i.bo syncscope("one-as") monotonic, align 8 ; 2 uses
  %.val.i.i41 = load ptr addrspace(1), ptr addrspace(1) %i.c, align 8, !tbaa !13
  %i.bq = and i64 %i.bn, %i.bj
  %i.br = getelementptr inbounds nuw [24 x i8], ptr addrspace(1) %.val.i.i41, i64 %i.bq ; 2 uses
  store i64 %i.bp, ptr addrspace(1) %i.br, align 8, !tbaa !21
  %i.bs = cmpxchg ptr addrspace(1) %i.bo, i64 %i.bp, i64 %i.bn syncscope("one-as") release monotonic, align 8 ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %return_free_packet.exit, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %bb.i, %.lr.ph.i.i42
  %i.bu = phi { i64, i1 } [ %i.bw, %.lr.ph.i.i42 ], [ %i.bs, %bb.i ]
  %i.bv = extractvalue { i64, i1 } %i.bu, 0       ; 2 uses
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  store i64 %i.bv, ptr addrspace(1) %i.br, align 8, !tbaa !21
  %i.bw = cmpxchg ptr addrspace(1) %i.bo, i64 %i.bv, i64 %i.bn syncscope("one-as") release monotonic, align 8 ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.bx, label %return_free_packet.exit, label %.lr.ph.i.i42

return_free_packet.exit:                          ; preds = %.lr.ph.i.i42, %get_return_value.exit, %bb.i
  ret <2 x i64> %i.bi
}

; Function Attrs: convergent nounwind denormal_fpenv(dynamic)
declare i32 @__ockl_lane_u32() local_unnamed_addr #1

; Function Attrs: convergent nocallback nocreateundeforpoison nofree nounwind willreturn memory(none)
declare i32 @llvm.amdgcn.readfirstlane.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.amdgcn.s.sleep(i32 immarg) #3

; Function Attrs: convergent nocallback nocreateundeforpoison nofree nounwind willreturn memory(none)
declare i64 @llvm.amdgcn.ballot.i64(i1) #2

; Function Attrs: convergent nounwind denormal_fpenv(dynamic)
declare void @__ockl_hsa_signal_add(i64, i64 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { convergent norecurse nounwind denormal_fpenv(dynamic) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { convergent nounwind denormal_fpenv(dynamic) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { convergent nocallback nocreateundeforpoison nofree nounwind willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { convergent nounwind }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"hsa_signal_s", !10, i64 0}
!12 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!13 = !{!12, !9, i64 0}
!14 = !{!12, !10, i64 40}
!15 = !{!12, !9, i64 8}
!16 = !{!"", !10, i64 0, !10, i64 8, !6, i64 16, !6, i64 20}
!17 = !{!16, !6, i64 16}
!18 = !{!16, !10, i64 8}
!19 = !{!16, !6, i64 20}
!20 = !{!10, !10, i64 0}
!21 = !{!16, !10, i64 0}
end_hunk_0
