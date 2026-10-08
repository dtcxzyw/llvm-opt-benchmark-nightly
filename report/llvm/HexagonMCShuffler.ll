Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonMCShuffler?download=true
inline.NumInlined: 219
inline.NumDeleted: 146
begin_hunk_0_@_ZN4llvm16HexagonMCShuffleERNS_9MCContextERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERNS_6MCInstENS_11SmallVectorINS_15DuplexCandidateELj8EEE:bb.a
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.ak to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bg) #11
  br label %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt7

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i.jt0
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.am to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bk) #11
  br label %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt0

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i.jt1
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.ao to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bo) #11
  br label %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt1

_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i: ; preds = %bb.j, %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exitthread-pre-split.i.i
  %i.bp = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.r
  br i1 %i.bq, label %_ZN4llvm15HexagonShufflerD2Ev.exit, label %bb.n

_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt7: ; preds = %bb.k, %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i.jt7
  %i.br = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.r
  br i1 %i.bs, label %_ZN4llvm15HexagonShufflerD2Ev.exit.jt7, label %bb.o

_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt0: ; preds = %bb.l, %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i.jt0
  %i.bt = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.r
  br i1 %i.bu, label %_ZN4llvm15HexagonShufflerD2Ev.exit.jt0, label %bb.p

_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt1: ; preds = %bb.m, %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i.jt1
  %i.bv = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.r
  br i1 %i.bw, label %_ZN4llvm15HexagonShufflerD2Ev.exit.jt1, label %bb.q

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i
  call void @free(ptr noundef %i.bp) #10
  br label %_ZN4llvm15HexagonShufflerD2Ev.exit

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt7
  call void @free(ptr noundef %i.br) #10
  br label %_ZN4llvm15HexagonShufflerD2Ev.exit.jt7

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt0
  call void @free(ptr noundef %i.bt) #10
  br label %_ZN4llvm15HexagonShufflerD2Ev.exit.jt0

bb.q:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt1
  call void @free(ptr noundef %i.bv) #10
  br label %_ZN4llvm15HexagonShufflerD2Ev.exit.jt1

_ZN4llvm15HexagonShufflerD2Ev.exit:               ; preds = %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.j
  br i1 %i.by, label %_ZN4llvm6MCInstD2Ev.exit, label %bb.r

_ZN4llvm15HexagonShufflerD2Ev.exit.jt7:           ; preds = %bb.o, %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.j
  br i1 %i.ca, label %.thread, label %bb.s

_ZN4llvm15HexagonShufflerD2Ev.exit.jt0:           ; preds = %bb.p, %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.j
  br i1 %i.cc, label %_ZN4llvm6MCInstD2Ev.exit.jt0, label %bb.t

_ZN4llvm15HexagonShufflerD2Ev.exit.jt1:           ; preds = %bb.q, %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.j
  br i1 %i.ce, label %_ZN4llvm6MCInstD2Ev.exit.jt1, label %bb.u

bb.r:                                             ; preds = %_ZN4llvm15HexagonShufflerD2Ev.exit
  call void @free(ptr noundef %i.bx) #10
  br label %_ZN4llvm6MCInstD2Ev.exit

bb.s:                                             ; preds = %_ZN4llvm15HexagonShufflerD2Ev.exit.jt7
  call void @free(ptr noundef %i.bz) #10
  br label %.thread

bb.t:                                             ; preds = %_ZN4llvm15HexagonShufflerD2Ev.exit.jt0
  call void @free(ptr noundef %i.cb) #10
  br label %_ZN4llvm6MCInstD2Ev.exit.jt0

bb.u:                                             ; preds = %_ZN4llvm15HexagonShufflerD2Ev.exit.jt1
  call void @free(ptr noundef %i.cd) #10
  br label %_ZN4llvm6MCInstD2Ev.exit.jt1

_ZN4llvm6MCInstD2Ev.exit:                         ; preds = %_ZN4llvm15HexagonShufflerD2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  switch i32 %.065, label %.loopexit [
    i32 0, label %.backedge
    i32 7, label %_ZN4llvm6MCInstD2Ev.exit._crit_edge.loopexit
  ]

.backedge:                                        ; preds = %_ZN4llvm6MCInstD2Ev.exit, %_ZN4llvm6MCInstD2Ev.exit.jt0
  %.025.be = phi i8 [ %.12664, %_ZN4llvm6MCInstD2Ev.exit ], [ 0, %_ZN4llvm6MCInstD2Ev.exit.jt0 ] ; 2 uses
  %i.cf = load i32, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  %i.ch = trunc nuw i8 %.025.be to i1
  %.not30 = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %.not30, label %_ZN4llvm6MCInstD2Ev.exit._crit_edge.loopexit, label %.lr.ph, !llvm.loop !71

.thread:                                          ; preds = %_ZN4llvm15HexagonShufflerD2Ev.exit.jt7, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.loopexit

_ZN4llvm6MCInstD2Ev.exit.jt0:                     ; preds = %bb.t, %_ZN4llvm15HexagonShufflerD2Ev.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.backedge

_ZN4llvm6MCInstD2Ev.exit.jt1:                     ; preds = %bb.u, %_ZN4llvm15HexagonShufflerD2Ev.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.loopexit

_ZN4llvm6MCInstD2Ev.exit._crit_edge.loopexit:     ; preds = %_ZN4llvm6MCInstD2Ev.exit, %.backedge
  %.227.ph = phi i8 [ %.025.be, %.backedge ], [ %.12664, %_ZN4llvm6MCInstD2Ev.exit ]
  %i.ci = trunc nuw i8 %.227.ph to i1
  br i1 %i.ci, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.preheader, %_ZN4llvm6MCInstD2Ev.exit._crit_edge.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZN4llvm17HexagonMCShufflerC2ERNS_9MCContextEbRKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(368) %7, ptr noundef nonnull align 1 %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(58) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.cj = call noundef zeroext i1 @_ZN4llvm15HexagonShuffler7shuffleEv(ptr noundef nonnull align 8 dereferenceable(368) %7) #10 ; 2 uses
  br i1 %i.cj, label %bb.v, label %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit32

bb.v:                                             ; preds = %.critedge
  call void @_ZN4llvm17HexagonMCShuffler6copyToERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(368) %7, ptr noundef nonnull align 8 dereferenceable(128) %3)
  br label %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit32

_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit32: ; preds = %.critedge, %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 344 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !48 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 352
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i.i33 = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i33, label %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i41, label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit32, %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i37
  %.05.i.i.i.i35 = phi ptr [ %i.cu, %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i37 ], [ %i.cl, %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit32 ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i35, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !52 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i35, i64 24 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i34
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !17
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #11
  br label %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i37

_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i36
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i35, i64 40 ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i.i.i.i38, label %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exitthread-pre-split.i.i39, label %.lr.ph.i.i.i.i34, !llvm.loop !0

_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exitthread-pre-split.i.i39: ; preds = %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i37
  %.pr.i.i40 = load ptr, ptr %i.ck, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i41

_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i41: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exitthread-pre-split.i.i39, %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit32
  %i.cv = phi ptr [ %.pr.i.i40, %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exitthread-pre-split.i.i39 ], [ %i.cl, %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit32 ] ; 3 uses
  %.not.i.i1.i.i42 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i42, label %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i43, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i41
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 360
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !54
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #11
  br label %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i43

_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i43: ; preds = %bb.w, %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i41
  %i.db = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN4llvm15HexagonShufflerD2Ev.exit45, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i43
  call void @free(ptr noundef %i.db) #10
  br label %_ZN4llvm15HexagonShufflerD2Ev.exit45

_ZN4llvm15HexagonShufflerD2Ev.exit45:             ; preds = %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i43, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm6MCInstD2Ev.exit, %_ZN4llvm6MCInstD2Ev.exit.jt1, %.thread, %_ZN4llvm6MCInstD2Ev.exit._crit_edge.loopexit, %_ZN4llvm15HexagonShufflerD2Ev.exit45, %bb.d, %bb.c, %bb.a, %bb.b
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.cj, %_ZN4llvm15HexagonShufflerD2Ev.exit45 ], [ true, %_ZN4llvm6MCInstD2Ev.exit._crit_edge.loopexit ], [ true, %.thread ], [ false, %_ZN4llvm6MCInstD2Ev.exit.jt1 ], [ false, %_ZN4llvm6MCInstD2Ev.exit ]
  ret i1 %.3
}

declare void @_ZN4llvm18HexagonMCInstrInfo13replaceDuplexERNS_9MCContextERNS_6MCInstENS_15DuplexCandidateE(ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(128), i64, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16HexagonMCShuffleERNS_9MCContextERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERNS_6MCInstERKS8_i(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 8 dereferenceable(58) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.llvm::HexagonMCShuffler", align 8 ; 11 uses
  %i.a = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo8isBundleERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %3) #10
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZN4llvm18HexagonMCInstrInfo10bundleSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %3) #10
  %i.c = trunc i64 %i.b to i32                    ; 4 uses
  %i.d = icmp ugt i32 %i.c, 3
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo9hasDuplexERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %1, ptr noundef nonnull align 8 dereferenceable(128) %3) #10 ; 2 uses
  %i.f = icmp sgt i32 %5, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %i.c, 3
  %or.cond26.not = and i1 %i.g, %i.e
  br i1 %or.cond26.not, label %bb.f, label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %i.c, 3
  %i.i = icmp ne i32 %5, 0
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14DisableShuffle, i64 120), align 8, !tbaa !47, !range !13, !noundef !14
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo9hasImmExtERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %3) #10
  %i.m = select i1 %i.l, i32 4, i32 3
  %.not = icmp samesign ule i32 %i.m, %i.c
  %or.cond24.not = and i1 %i.e, %.not
  br i1 %or.cond24.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @_ZN4llvm15HexagonShufflerC2ERNS_9MCContextEbRKNS_11MCInstrInfoERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(368) %6, ptr noundef nonnull align 1 %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(58) %1, ptr noundef nonnull align 1 %2) #10
  call void @_ZN4llvm17HexagonMCShuffler4initERNS_6MCInstERKS1_b(ptr noundef nonnull align 8 dereferenceable(368) %6, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %4, i1 noundef zeroext false)
  %i.n = call noundef zeroext i1 @_ZN4llvm15HexagonShuffler7shuffleEv(ptr noundef nonnull align 8 dereferenceable(368) %6) #10 ; 2 uses
  br i1 %i.n, label %bb.i, label %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm17HexagonMCShuffler6copyToERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(368) %6, ptr noundef nonnull align 8 dereferenceable(128) %3)
  br label %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit

_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit: ; preds = %bb.h, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 344 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit, %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i ], [ %i.p, %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #11
  br label %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.o, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i

_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exitthread-pre-split.i.i, %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exitthread-pre-split.i.i ], [ %i.p, %_ZN4llvm17HexagonMCShuffler11reshuffleToERNS_6MCInstE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #11
  br label %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i: ; preds = %bb.j, %_ZSt8_DestroyIPSt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_.exit.i.i
  %i.af = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm15HexagonShufflerD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i
  call void @free(ptr noundef %i.af) #10
  br label %_ZN4llvm15HexagonShufflerD2Ev.exit

_ZN4llvm15HexagonShufflerD2Ev.exit:               ; preds = %_ZNSt6vectorISt4pairIN4llvm5SMLocENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_ZN4llvm15HexagonShufflerD2Ev.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ %i.n, %_ZN4llvm15HexagonShufflerD2Ev.exit ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo9hasDuplexERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo9hasImmExtERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 %1, i64 %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #10
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !40
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i8 %1, ptr %i.i, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !40
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !40
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm15HexagonShufflerC2ERNS_9MCContextEbRKNS_11MCInstrInfoERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 1, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(58), ptr noundef nonnull align 1) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !55, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !55, !range !13, !noundef !14
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !13
  %i.j = load i8, ptr %i.d, align 8, !range !13
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_HexagonMCShuffler.cpp() #9 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL14DisableShuffle, i32 noundef 0, i32 noundef 0) #10
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14DisableShuffle, i64 120), align 8, !tbaa !47
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14DisableShuffle, i64 136), align 8
end_hunk_0
