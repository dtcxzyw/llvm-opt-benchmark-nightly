Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_flip?download=true
inline.NumInlined: 148
inline.NumDeleted: 66
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal4flipEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true) ; 5 uses
  %i.c = zext nneg i32 %i.b to i64                ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw [6 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.g = load i8, ptr %i.f, align 1
  %or.cond = icmp ult i8 %i.g, 64
  br i1 %or.cond, label %bb.b, label %.thread125

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !171
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !172
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = icmp ult i64 %i.i, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal10propergateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  %i.v = load i8, ptr %i.u, align 1, !tbaa !174
  %i.w = icmp slt i8 %i.v, 0
  %i.x = sub nsw i32 0, %i.b                      ; 3 uses
  %i.y = select i1 %i.w, i32 %i.x, i32 %i.b       ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.aa = tail call noundef i32 @llvm.fshl.i32(i32 %i.b, i32 %i.y, i32 1)
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ab ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !176 ; 5 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !176 ; 4 uses
  %.not127149 = icmp eq ptr %i.ag, %i.af
  br i1 %.not127149, label %.thread213, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.thread
  %.sroa.0109.0150 = phi ptr [ %i.am, %.thread ], [ %i.ag, %bb.d ] ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150, i64 12
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !178
  %i.ah = icmp eq i32 %.sroa.4.0.copyload, 2
  br i1 %i.ah, label %bb.e, label %.thread

bb.e:                                             ; preds = %.lr.ph
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !178
  %i.ai = sext i32 %.sroa.3.0.copyload to i64
  %i.aj = getelementptr inbounds i8, ptr %i.t, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !174
  %i.al = icmp sgt i8 %i.ak, 0
  br i1 %i.al, label %.thread, label %.thread125

.thread:                                          ; preds = %.lr.ph, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150, i64 16 ; 2 uses
  %.not127 = icmp eq ptr %i.am, %i.af
  br i1 %.not127, label %.lr.ph169, label %.lr.ph, !llvm.loop !179

.lr.ph169:                                        ; preds = %.thread, %.critedge88
  %.sroa.097.0167 = phi ptr [ %.sroa.097.1, %.critedge88 ], [ %i.ag, %.thread ] ; 7 uses
  %.sroa.0103.0166 = phi ptr [ %i.an, %.critedge88 ], [ %i.ag, %.thread ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0103.0166, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.097.0167, i64 16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.097.0167, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0103.0166, i64 16, i1 false), !tbaa.struct !181
  %.sroa.093.0.copyload = load ptr, ptr %.sroa.097.0167, align 8, !tbaa !182 ; 8 uses
  %.sroa.696.0..sroa.091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.097.0167, i64 12
  %.sroa.696.0.copyload = load i32, ptr %.sroa.696.0..sroa.091.0..sroa_idx, align 4, !tbaa !178
  %i.ap = icmp eq i32 %.sroa.696.0.copyload, 2
  br i1 %i.ap, label %.critedge88, label %bb.f, !llvm.loop !183

bb.f:                                             ; preds = %.lr.ph169
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 512
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.g, label %.critedge88, !llvm.loop !183

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 24 ; 5 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !178
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 28 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !178
  %i.ax = xor i32 %i.au, %i.aw
  %i.ay = xor i32 %i.ax, %i.y                     ; 2 uses
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !173 ; 3 uses
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !174
  %i.bd = icmp sgt i8 %i.bc, 0
  br i1 %i.bd, label %.critedge88, label %bb.h, !llvm.loop !183

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 16 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !178 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 20 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !178 ; 3 uses
  %i.bi = sext i32 %i.bh to i64
  %.idx = shl nsw i64 %i.bi, 2
  %i.bj = getelementptr inbounds i8, ptr %i.at, i64 %.idx ; 2 uses
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.bk
  %.not84152 = icmp eq i32 %i.bh, %i.bf
  br i1 %.not84152, label %._crit_edge, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.h, %bb.i
  %.071153 = phi ptr [ %i.br, %bb.i ], [ %i.bj, %bb.h ] ; 3 uses
  %i.bm = load i32, ptr %.071153, align 4, !tbaa !178 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.az, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !174
  %i.bq = icmp slt i8 %i.bp, 0
  br i1 %i.bq, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph154
  %i.br = getelementptr inbounds nuw i8, ptr %.071153, i64 4 ; 2 uses
  %.not84 = icmp eq ptr %i.br, %i.bl
  br i1 %.not84, label %._crit_edge, label %.lr.ph154, !llvm.loop !184

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %.not85155 = icmp eq i32 %i.bh, 2
  br i1 %.not85155, label %.critedge88.thread, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 32
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.j
  %.172156 = phi ptr [ %i.by, %bb.j ], [ %i.bs, %.lr.ph158.preheader ] ; 3 uses
  %i.bt = load i32, ptr %.172156, align 4, !tbaa !178 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.az, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !174
  %i.bx = icmp slt i8 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %.lr.ph158
  %i.by = getelementptr inbounds nuw i8, ptr %.172156, i64 4 ; 2 uses
  %.not85 = icmp eq ptr %i.by, %i.bj
  br i1 %.not85, label %.critedge88.thread, label %.lr.ph158, !llvm.loop !185

.critedge2:                                       ; preds = %.lr.ph154, %.lr.ph158
  %.273 = phi ptr [ %.172156, %.lr.ph158 ], [ %.071153, %.lr.ph154 ] ; 2 uses
  %.370 = phi i32 [ %i.bt, %.lr.ph158 ], [ %i.bm, %.lr.ph154 ] ; 3 uses
  %i.bz = ptrtoint ptr %.273 to i64
  %i.ca = ptrtoint ptr %i.at to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 2
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bg, align 4, !tbaa !178
  store i32 %i.ay, ptr %i.at, align 8, !tbaa !178
  store i32 %.370, ptr %i.av, align 4, !tbaa !178
  store i32 %i.y, ptr %.273, align 4, !tbaa !178
  %i.ce = tail call noundef i32 @llvm.abs.i32(i32 %.370, i1 true)
  %i.cf = tail call noundef i32 @llvm.fshl.i32(i32 %i.ce, i32 %.370, i32 1)
  %i.cg = zext i32 %i.cf to i64
  %i.ch = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.cg ; 4 uses
  %i.cj = load i32, ptr %i.be, align 8, !tbaa !178 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !186 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !188
  %.not.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge2
  store ptr %.sroa.093.0.copyload, ptr %i.cl, align 8, !tbaa !182
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.y, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !178
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 %i.cj, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !178
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !186
  br label %.critedge88

bb.l:                                             ; preds = %.critedge2
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !189 ; 5 uses
  %i.cq = ptrtoint ptr %i.cl to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775792
  br i1 %i.ct, label %bb.m, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.l
  %i.cu = ashr exact i64 %i.cs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 576460752303423487)
  %i.cy = select i1 %i.cw, i64 576460752303423487, i64 %i.cx ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cz = shl nuw nsw i64 %i.cy, 4
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #11 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs ; 3 uses
  store ptr %.sroa.093.0.copyload, ptr %i.db, align 8, !tbaa !182
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %i.y, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !178
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 %i.cj, ptr %.sroa.6.0..sroa_idx7.i, align 4, !tbaa !178
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.cl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cp, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !181, !alias.scope !190
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dc, %i.cl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !194

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.da, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %2 = load ptr, ptr %i.cm, align 8, !tbaa !188
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %4) #12
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.da, ptr %i.ci, align 8, !tbaa !189
  store ptr %i.de, ptr %i.ck, align 8, !tbaa !186
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.df, ptr %i.cm, align 8, !tbaa !188
  br label %.critedge88

.critedge88:                                      ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.k, %bb.f, %bb.g, %.lr.ph169
  %.sroa.097.1 = phi ptr [ %i.ao, %.lr.ph169 ], [ %i.ao, %bb.g ], [ %.sroa.097.0167, %bb.f ], [ %.sroa.097.0167, %bb.k ], [ %.sroa.097.0167, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ] ; 2 uses
  %.not128 = icmp eq ptr %i.an, %i.af
  br i1 %.not128, label %.critedge88.thread, label %.lr.ph169

.critedge88.thread:                               ; preds = %.critedge88, %._crit_edge, %bb.j
  %.not128139 = phi i1 [ false, %bb.j ], [ true, %.critedge88 ], [ false, %._crit_edge ] ; 2 uses
  %.sroa.097.2 = phi ptr [ %i.ao, %bb.j ], [ %.sroa.097.1, %.critedge88 ], [ %i.ao, %._crit_edge ] ; 3 uses
  %.not129 = icmp eq ptr %.sroa.097.2, %i.an
  br i1 %.not129, label %bb.o, label %.preheader

.preheader:                                       ; preds = %.critedge88.thread
  %.not130173 = icmp eq ptr %i.an, %i.af
  br i1 %.not130173, label %._crit_edge177, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader, %.lr.ph176
  %.sroa.097.3175 = phi ptr [ %i.dh, %.lr.ph176 ], [ %.sroa.097.2, %.preheader ] ; 2 uses
  %.sroa.0103.2174 = phi ptr [ %i.dg, %.lr.ph176 ], [ %i.an, %.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0103.2174, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.097.3175, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.097.3175, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0103.2174, i64 16, i1 false), !tbaa.struct !181
  %.not130 = icmp eq ptr %i.dg, %i.af
  br i1 %.not130, label %._crit_edge177, label %.lr.ph176, !llvm.loop !195

._crit_edge177:                                   ; preds = %.lr.ph176, %.preheader
  %.sroa.097.3.lcssa = phi ptr [ %.sroa.097.2, %.preheader ], [ %i.dh, %.lr.ph176 ]
  %i.di = load ptr, ptr %i.ad, align 8, !tbaa !176
  %i.dj = ptrtoint ptr %.sroa.097.3.lcssa to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 4
  tail call void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.dm)
  br i1 %.not128139, label %.thread213, label %.thread125

bb.o:                                             ; preds = %.critedge88.thread
  br i1 %.not128139, label %.thread213, label %.thread125

.thread213:                                       ; preds = %bb.d, %._crit_edge177, %bb.o
  %i.dn = load ptr, ptr %i.s, align 8, !tbaa !173
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.c ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !174 ; 3 uses
  %i.dq = icmp slt i8 %i.dp, 0
  %i.dr = select i1 %i.dq, i32 %i.x, i32 %i.b     ; 2 uses
  %i.ds = sub i8 0, %i.dp
  store i8 %i.ds, ptr %i.do, align 1, !tbaa !174
  %i.dt = load ptr, ptr %i.s, align 8, !tbaa !173
  %i.du = sext i32 %i.x to i64
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 %i.du
  store i8 %i.dp, ptr %i.dv, align 1, !tbaa !174
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !196 ; 2 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.c ; 2 uses
  %i.dz = sub nsw i32 0, %i.dr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !197
  %i.ec = sext i32 %i.eb to i64
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !172
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ec
  store i32 %i.dz, ptr %i.ee, align 4, !tbaa !178
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4028
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !199
  %.not86 = icmp eq i32 %i.eg, 0
  br i1 %.not86, label %.thread125, label %bb.p

bb.p:                                             ; preds = %.thread213
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !200 ; 2 uses
  %.not87 = icmp eq i32 %i.ei, 0
  br i1 %.not87, label %.thread125.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ej = load i32, ptr %i.dy, align 8, !tbaa !201
  %i.ek = tail call noundef i32 @llvm.abs.i32(i32 %i.ei, i1 true)
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.el
  %i.en = load i32, ptr %i.em, align 8, !tbaa !201
  %i.eo = icmp slt i32 %i.ej, %i.en
  br i1 %i.eo, label %.thread125.sink.split, label %.thread125

.thread125.sink.split:                            ; preds = %bb.q, %bb.p
  store i32 %i.dr, ptr %i.eh, align 4, !tbaa !200
  br label %.thread125

.thread125:                                       ; preds = %bb.e, %.thread125.sink.split, %._crit_edge177, %bb.a, %bb.o, %bb.q, %.thread213
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.o ], [ true, %.thread213 ], [ true, %bb.q ], [ false, %._crit_edge177 ], [ true, %.thread125.sink.split ], [ false, %bb.e ]
  ret i1 %.0
}

declare void @_ZN7CaDiCaL8Internal10propergateEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !189    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !188
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not23.i = icmp ult i64 %i.n, %i.i
  br i1 %.not23.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !186
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #11 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !181, !alias.scope !202
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !194

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i25.i = icmp eq ptr %i.c, null
  br i1 %.not.i25.i, label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %2 = load ptr, ptr %i.j, align 8, !tbaa !188
  %3 = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aa) #12
  br label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !189
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !186
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !188
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %1, %i.g
  br i1 %i.ad, label %bb.h, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ae
  br i1 %.not.i4, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !186
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit: ; preds = %bb.i, %bb.h, %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal9flippableEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true) ; 4 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw [6 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.g = load i8, ptr %i.f, align 1
  %or.cond = icmp ult i8 %i.g, 64
  br i1 %or.cond, label %bb.b, label %.critedge57

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !171
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !172
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = icmp ult i64 %i.i, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal10propergateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173  ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  %i.v = load i8, ptr %i.u, align 1, !tbaa !174
  %i.w = icmp slt i8 %i.v, 0
  %i.x = sub nsw i32 0, %i.b
  %i.y = select i1 %i.w, i32 %i.x, i32 %i.b       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.aa = tail call noundef i32 @llvm.fshl.i32(i32 %i.b, i32 %i.y, i32 1)
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !176 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !176 ; 2 uses
  %.not7186 = icmp eq ptr %i.ag, %i.af
  br i1 %.not7186, label %.critedge57, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.d, %bb.k
  %.sroa.060.087 = phi ptr [ %i.bz, %bb.k ], [ %i.ag, %bb.d ] ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.060.087, align 8, !tbaa !182 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 8 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !178
  %i.ah = sext i32 %.sroa.6.0.copyload to i64
  %i.ai = getelementptr inbounds i8, ptr %i.t, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !174
  %i.ak = icmp sgt i8 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.lr.ph90
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 12
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !178
  %i.al = icmp eq i32 %.sroa.7.0.copyload, 2
  br i1 %i.al, label %.critedge57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = and i32 %i.an, 512
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !178
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !178
  %i.at = xor i32 %i.aq, %i.as
  %i.au = xor i32 %i.at, %i.y                     ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.t, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !174
  %i.ay = icmp sgt i8 %i.ax, 0
  br i1 %i.ay, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !178 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 20 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !178 ; 3 uses
  %i.bd = sext i32 %i.bc to i64
  %.idx = shl nsw i64 %i.bd, 2
  %i.be = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  %i.bf = sext i32 %i.ba to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.bf
  %.not5578 = icmp eq i32 %i.bc, %i.ba
  br i1 %.not5578, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.04579 = phi ptr [ %i.bm, %bb.i ], [ %i.be, %bb.h ] ; 3 uses
  %i.bh = load i32, ptr %.04579, align 4, !tbaa !178 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.t, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !174
  %i.bl = icmp slt i8 %i.bk, 0
  br i1 %i.bl, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.04579, i64 4 ; 2 uses
  %.not55 = icmp eq ptr %i.bm, %i.bg
  br i1 %.not55, label %._crit_edge, label %.lr.ph, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %.not5680 = icmp eq i32 %i.bc, 2
  br i1 %.not5680, label %.critedge57, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83.preheader, %bb.j
  %.14681 = phi ptr [ %i.bt, %bb.j ], [ %i.bn, %.lr.ph83.preheader ] ; 3 uses
  %i.bo = load i32, ptr %.14681, align 4, !tbaa !178 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.t, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !174
  %i.bs = icmp slt i8 %i.br, 0
  br i1 %i.bs, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %.lr.ph83
  %i.bt = getelementptr inbounds nuw i8, ptr %.14681, i64 4 ; 2 uses
  %.not56 = icmp eq ptr %i.bt, %i.be
  br i1 %.not56, label %.critedge57, label %.lr.ph83, !llvm.loop !207

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph83
  %.247 = phi ptr [ %.14681, %.lr.ph83 ], [ %.04579, %.lr.ph ]
  %.344 = phi i32 [ %i.bo, %.lr.ph83 ], [ %i.bh, %.lr.ph ]
  %i.bu = ptrtoint ptr %.247 to i64
  %i.bv = ptrtoint ptr %i.ap to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = lshr exact i64 %i.bw, 2
  %i.by = trunc i64 %i.bx to i32
  store i32 %i.by, ptr %i.bb, align 4, !tbaa !178
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %.critedge2
  %.sink = phi i32 [ %.344, %.critedge2 ], [ %i.au, %bb.g ]
  store i32 %.sink, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !208
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.f, %.lr.ph90
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 16 ; 2 uses
  %.not71 = icmp eq ptr %i.bz, %i.af
  br i1 %.not71, label %.critedge57, label %.lr.ph90, !llvm.loop !210

.critedge57:                                      ; preds = %bb.e, %bb.k, %._crit_edge, %bb.j, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ false, %bb.j ], [ false, %._crit_edge ], [ false, %bb.e ], [ true, %bb.k ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
end_hunk_0
