Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/digest?download=true
inline.NumInlined: 398
inline.NumDeleted: 181
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@EVP_MD_size
; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL7SumFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK9env_md_stRK6Source(ptr nofree noundef nonnull captures(address) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %class.ScopedFD, align 4            ; 7 uses
  %4 = alloca %class.ScopedFD, align 4            ; 5 uses
  %5 = alloca %"class.bssl::internal::StackAllocatedMovable", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [128 x i8], align 16              ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 -1, ptr %3, align 4, !tbaa !39
  %i.f = load i8, ptr %2, align 8, !tbaa !22, !range !35, !noundef !36
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke fastcc void @_ZL8OpenFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 4 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN8ScopedFDD2Ev.exit unwind label %bb.c

_ZN8ScopedFDD2Ev.exit:                            ; preds = %bb.b
  %i.i = load i32, ptr %4, align 4, !tbaa !39     ; 3 uses
  store i32 %i.i, ptr %3, align 4, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %_ZN8ScopedFDD2Ev.exit48

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ar

bb.d:                                             ; preds = %_ZN8ScopedFDD2Ev.exit, %bb.a
  %.030 = phi i32 [ 0, %bb.a ], [ %i.i, %_ZN8ScopedFDD2Ev.exit ]
  %i.l = invoke noalias noundef nonnull dereferenceable(8192) ptr @_Znam(i64 noundef 8192) #27
          to label %bb.e unwind label %bb.h       ; 5 uses

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.l, i8 0, i64 8192, i1 false), !noalias !61
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @EVP_MD_CTX_init(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEEC2Ev.exit unwind label %bb.i

_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEEC2Ev.exit: ; preds = %bb.e
  %i.m = invoke i32 @EVP_DigestInit_ex(ptr noundef nonnull %5, ptr noundef %1, ptr noundef null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEEC2Ev.exit
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.o = call i64 @fwrite(ptr nonnull @.str.28, i64 33, i64 1, ptr %i.n) #23 ; 0 uses
  br label %bb.ak

bb.h:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.i:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit47

bb.j:                                             ; preds = %_ZN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEEC2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.preheader:                                       ; preds = %bb.f, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.s = invoke noundef zeroext i1 @_Z10ReadFromFDiPmPvm(i32 noundef %.030, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, i64 noundef 8192)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %.preheader
  br i1 %i.s, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.u = load i8, ptr %2, align 8, !tbaa !22, !range !35, !noundef !36
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.y = phi ptr [ %i.x, %bb.m ], [ @_ZL10kStdinName, %bb.l ]
  %i.z = tail call ptr @__errno_location() #28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ab = call ptr @strerror(i32 noundef %i.aa) #20
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.29, ptr noundef %i.y, ptr noundef %i.ab) #22 ; 0 uses
  br label %.thread

bb.o:                                             ; preds = %bb.q, %.preheader
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.am

bb.p:                                             ; preds = %bb.k
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = invoke i32 @EVP_DigestUpdate(ptr noundef nonnull %5, ptr noundef nonnull %i.l, i64 noundef %i.ae)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %.not32 = icmp eq i32 %i.ag, 0
  br i1 %.not32, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ai = call i64 @fwrite(ptr nonnull @.str.30, i64 23, i64 1, ptr %i.ah) #23 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ak

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.preheader

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.aj = invoke i32 @EVP_DigestFinal_ex(ptr noundef nonnull %5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %.not33 = icmp ne i32 %i.aj, 0                  ; 2 uses
  br i1 %.not33, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.al = call i64 @fwrite(ptr nonnull @.str.31, i64 23, i64 1, ptr %i.ak) #23 ; 0 uses
  br label %bb.ai

bb.x:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.an = load i32, ptr %i.d, align 4, !tbaa !57  ; 5 uses
  %.not60 = icmp eq i32 %i.an, 0
  br i1 %.not60, label %._crit_edge.i.i.thread, label %.lr.ph.preheader

._crit_edge.i.i.thread:                           ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  br label %bb.aa

.lr.ph.preheader:                                 ; preds = %bb.y
  %wide.trip.count = zext i32 %i.an to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ap = icmp eq i32 %i.an, 1
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i32 %i.an to i1
  call void @llvm.assume(i1 %lcmp.mod79)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !21
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = lshr i32 %i.as, 4
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZZL7SumFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK9env_md_stRK6SourceE9kHextable, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21
  %7 = trunc nuw i64 %indvars.iv.epil.init to i32
  %8 = shl i32 %7, 1                              ; 2 uses
  %9 = zext i32 %8 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 %9
  store i8 %i.aw, ptr %i.ax, align 2, !tbaa !21
  %i.ay = and i32 %i.as, 15
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZL7SumFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK9env_md_stRK6SourceE9kHextable, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %10 = or disjoint i32 %8, 1
  %11 = zext i32 %10 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 %11
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bd = shl i32 %i.an, 1                        ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bf, ptr %6, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.be, ptr %i.a, align 8, !tbaa !30
  %i.bg = icmp ugt i32 %i.bd, 15
  br i1 %i.bg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %._crit_edge
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.thread77 unwind label %bb.ah ; 2 uses

._crit_edge.i.i.thread77:                         ; preds = %.noexc.i
  store ptr %i.bh, ptr %6, align 8, !tbaa !20
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !21
  br label %bb.z

._crit_edge.i.i:                                  ; preds = %._crit_edge
  %cond = icmp eq i32 %i.bd, 0
  br i1 %cond, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.thread77, %._crit_edge.i.i
  %i.bj = phi ptr [ %i.bh, %._crit_edge.i.i.thread77 ], [ %i.bf, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 16 %i.e, i64 %i.be, i1 false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !30
  %.pre62 = load ptr, ptr %6, align 8, !tbaa !20
  br label %bb.aa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !21
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 4
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZZL7SumFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK9env_md_stRK6SourceE9kHextable, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21
  %12 = trunc nuw i64 %indvars.iv to i32
  %13 = shl i32 %12, 1                            ; 2 uses
  %14 = zext i32 %13 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 %14
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !21
  %i.bs = and i32 %i.bm, 15
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZZL7SumFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK9env_md_stRK6SourceE9kHextable, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !21
  %15 = or disjoint i32 %13, 1
  %16 = zext i32 %15 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 %16
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 4
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZZL7SumFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK9env_md_stRK6SourceE9kHextable, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !21
  %17 = trunc nuw i64 %indvars.iv.next to i32
  %18 = shl i32 %17, 1                            ; 2 uses
  %19 = zext i32 %18 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 %19
  store i8 %i.cd, ptr %i.ce, align 2, !tbaa !21
  %i.cf = and i32 %i.bz, 15
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZZL7SumFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK9env_md_stRK6SourceE9kHextable, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !21
  %20 = or disjoint i32 %18, 1
  %21 = zext i32 %20 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 %21
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !64

bb.aa:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i, %bb.z
  %i.ck = phi ptr [ %i.bf, %._crit_edge.i.i ], [ %i.bf, %bb.z ], [ %i.ao, %._crit_edge.i.i.thread ] ; 8 uses
  %i.cl = phi ptr [ %i.bf, %._crit_edge.i.i ], [ %.pre62, %bb.z ], [ %i.ao, %._crit_edge.i.i.thread ]
  %i.cm = phi i64 [ %i.be, %._crit_edge.i.i ], [ %.pre, %bb.z ], [ 0, %._crit_edge.i.i.thread ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cp = load ptr, ptr %0, align 8, !tbaa !20    ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  %i.cs = load ptr, ptr %6, align 8, !tbaa !20    ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.ck                ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aa
  br i1 %i.ct, label %bb.ab, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aa
  br i1 %i.ct, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = load i64, ptr %i.cn, align 8, !tbaa !15 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i = icmp eq ptr %6, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ac, !prof !65

bb.ac:                                            ; preds = %bb.ab
  switch i64 %i.cu, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !21
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.cx = load i64, ptr %i.cn, align 8, !tbaa !15 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !15
  %i.cz = load ptr, ptr %0, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %0, align 8, !tbaa !20
  %i.dc = load i64, ptr %i.cn, align 8, !tbaa !15
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !15
  %i.dd = load i64, ptr %i.ck, align 8, !tbaa !21
  store i64 %i.dd, ptr %i.cq, align 8, !tbaa !21
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.de = load i64, ptr %i.cq, align 8, !tbaa !21
  store ptr %i.cs, ptr %0, align 8, !tbaa !20
  %i.df = load i64, ptr %i.cn, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !15
  %i.dh = load i64, ptr %i.ck, align 8, !tbaa !21
  store i64 %i.dh, ptr %i.cq, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cp, ptr %6, align 8, !tbaa !20
  store i64 %i.de, ptr %i.ck, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ck, ptr %6, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.af, %bb.ag
  %i.di = phi ptr [ %i.cp, %bb.af ], [ %i.ck, %bb.ag ], [ %i.cs, %bb.ab ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.cn, align 8, !tbaa !15
  store i8 0, ptr %i.di, align 1, !tbaa !21
  %i.dj = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ck
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dl = load i64, ptr %i.ck, align 8, !tbaa !21
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.x
  %.pn34 = phi { ptr, i32 } [ %i.dn, %bb.ah ], [ %i.am, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.am

bb.ak:                                            ; preds = %.thread, %bb.ai, %bb.g
  %.3 = phi i1 [ false, %.thread ], [ %.not33, %bb.ai ], [ false, %bb.g ] ; 2 uses
  %i.do = invoke noundef i32 @EVP_MD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ao unwind label %bb.al     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #24
  unreachable

bb.am:                                            ; preds = %bb.aj, %bb.o, %bb.j
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.aj ], [ %i.ad, %bb.o ], [ %i.r, %bb.j ]
  %i.dr = invoke noundef i32 @EVP_MD_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit47 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #24
  unreachable

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit47: ; preds = %bb.am, %bb.i
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn34.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZdaPv(ptr noundef nonnull %i.l) #21
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZdaPv(ptr noundef nonnull %i.l) #21
  %.pr = load i32, ptr %3, align 4, !tbaa !39     ; 2 uses
  %i.du = icmp sgt i32 %.pr, -1
  br i1 %i.du, label %bb.ap, label %_ZN8ScopedFDD2Ev.exit48

bb.ap:                                            ; preds = %bb.ao
  invoke void @_Z7CloseFDi(i32 noundef %.pr)
          to label %_ZN8ScopedFDD2Ev.exit48 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #24
  unreachable

_ZN8ScopedFDD2Ev.exit48:                          ; preds = %_ZN8ScopedFDD2Ev.exit, %bb.ao, %bb.ap
  %.458 = phi i1 [ %.3, %bb.ap ], [ %.3, %bb.ao ], [ false, %_ZN8ScopedFDD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.458

bb.ar:                                            ; preds = %bb.h, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit47, %bb.c
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn34.pn.pn, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit47 ], [ %i.p, %bb.h ]
  call void @_ZN8ScopedFDD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @_Z6OpenFDPKci(ptr dead_on_unwind writable sret(%class.ScopedFD) align 4, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

end_hunk_0
