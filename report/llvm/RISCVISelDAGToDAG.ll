Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVISelDAGToDAG?download=true
inline.NumInlined: 4778
inline.NumDeleted: 1099
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm17RISCVDAGToDAGISel6SelectEPNS_6SDNodeE:bb.a
  %146 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %147 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %148 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %149 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %150 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %151 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %152 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %153 = alloca [7 x %"class.llvm::SDValue"], align 8 ; 16 uses
  %154 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %155 = alloca [7 x %"class.llvm::SDValue"], align 8 ; 16 uses
  %156 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %157 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %158 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %159 = alloca %"class.llvm::MVT", align 2       ; 5 uses
  %160 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %161 = alloca %"class.llvm::SmallVector.289", align 8 ; 11 uses
  %162 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %163 = alloca %"class.llvm::SmallVector.293", align 8 ; 10 uses
  %164 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %165 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %166 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %167 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %168 = alloca %"class.llvm::MVT", align 2       ; 5 uses
  %169 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %170 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %171 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.h = alloca [1 x ptr], align 8                ; 4 uses
  %172 = alloca [6 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %173 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %174 = alloca %"struct.llvm::EVT", align 8      ; 5 uses
  %175 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %176 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %177 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %178 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %179 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %180 = alloca %"class.llvm::SmallVector.308", align 8 ; 14 uses
  %.sroa.63055 = alloca [16 x i8], align 4        ; 4 uses
  %181 = alloca [6 x %"class.llvm::SDValue"], align 8 ; 11 uses
  %182 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %183 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %184 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %185 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %186 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %187 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %188 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %189 = alloca [6 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %190 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %191 = alloca %"class.llvm::APInt", align 8     ; 20 uses
  %192 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %193 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %194 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %195 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %196 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %197 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %198 = alloca %"class.llvm::SDLoc", align 8     ; 8 uses
  %199 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %200 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %201 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %202 = alloca %"class.llvm::SDLoc", align 8     ; 8 uses
  %203 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %204 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %205 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %206 = alloca %"struct.llvm::EVT", align 8      ; 7 uses
  %207 = alloca %"class.llvm::SDValue", align 8   ; 9 uses
  %208 = alloca %"class.llvm::SmallVector.388", align 8 ; 12 uses
  %.sroa.5 = alloca [16 x i8], align 4            ; 4 uses
  %209 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %210 = alloca [2 x %"struct.llvm::EVT"], align 8 ; 7 uses
  %211 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.j = alloca [1 x ptr], align 8                ; 4 uses
  %212 = alloca %"class.llvm::SmallVector.289", align 8 ; 14 uses
  %213 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !392  ; 8 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 -1, ptr %i.n, align 4, !tbaa !477
  br label %bb.qi

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 25 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82   ; 25 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 656
  %i.r = load i8, ptr %i.q, align 8, !tbaa !227, !range !18, !noundef !19 ; 2 uses
  %i.s = trunc nuw i8 %i.r to i1                  ; 11 uses
  %i.t = select i1 %i.s, i16 8, i16 7             ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !398
  store i64 %i.v, ptr %13, align 8, !tbaa !398
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !399
  store i32 %i.y, ptr %i.w, align 8, !tbaa !401
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 12 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !402 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.aa, align 8, !tbaa !380 ; 155 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 476
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !233, !range !18, !noundef !19
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 621
  %i.af = load i8, ptr %i.ae, align 1, !range !18
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = select i1 %i.ad, i1 true, i1 %i.ag      ; 2 uses
  switch i32 %i.l, label %.critedge2292 [
    i32 12, label %bb.d
    i32 13, label %bb.aa
    i32 352, label %bb.qe
    i32 601, label %bb.pv
    i32 600, label %bb.pv
    i32 734, label %bb.av
    i32 733, label %bb.av
    i32 735, label %bb.av
    i32 198, label %bb.bh
    i32 200, label %bb.br
    i32 199, label %bb.cg
    i32 236, label %bb.cq
    i32 194, label %bb.cz
    i32 195, label %bb.da
    i32 193, label %bb.db
    i32 61, label %bb.fz
    i32 558, label %bb.au
    i32 556, label %bb.au
    i32 557, label %bb.at
    i32 851, label %bb.gu
    i32 844, label %bb.gt
    i32 848, label %bb.gw
    i32 847, label %bb.gw
    i32 316, label %bb.gz
    i32 598, label %bb.hp
    i32 653, label %bb.hq
    i32 541, label %bb.hv
    i32 727, label %bb.hw
    i32 843, label %bb.hw
    i32 850, label %bb.hw
    i32 842, label %bb.hw
    i32 849, label %bb.hw
    i32 48, label %bb.id
    i32 49, label %bb.ki
    i32 50, label %bb.lm
    i32 248, label %bb.my
    i32 175, label %bb.nj
    i32 174, label %bb.oj
    i32 166, label %bb.on
    i32 746, label %bb.on
    i32 167, label %bb.ov
    i32 745, label %bb.ov
    i32 845, label %bb.gs
    i32 67, label %bb.gr
    i32 66, label %bb.gv
    i32 806, label %bb.pg
    i32 783, label %bb.pf
    i32 784, label %bb.pf
    i32 808, label %bb.pf
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !365 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp slt i8 %i.al, 0
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !386 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  store i16 %.sroa.0.0.copyload.i.i, ptr %14, align 8, !tbaa !380
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !471
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getCopyFromRegENS_7SDValueERKNS_5SDLocENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ao, ptr nonnull %i.ap, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 68, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %14)
  %.fca.0.extract1812 = extractvalue { ptr, i32 } %i.ar, 0
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %.fca.0.extract1812)
  br label %.critedge2356

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !367 ; 3 uses
  %i.av = icmp ult i32 %i.au, 65
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !368
  %i.ax = icmp eq i32 %i.au, 0
  %i.ay = sub nuw nsw i32 64, %i.au
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = shl i64 %i.aw, %i.az
  %i.bb = ashr exact i64 %i.ba, %i.az
  %.0.i.i.i.i = select i1 %i.ax, i64 0, i64 %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !368
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !369
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i64 [ %.0.i.i.i.i, %bb.g ], [ %i.bd, %bb.h ] ; 6 uses
  %214 = add i64 %.0.i.i.i, 128
  %215 = icmp uge i64 %214, 256
  %216 = and i64 %.0.i.i.i, -32768
  %or.cond4136 = icmp eq i64 %216, 32768
  %or.cond4319 = and i1 %215, %or.cond4136
  br i1 %or.cond4319, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.be = shl nuw i64 %.0.i.i.i, 48
  %i.bf = ashr exact i64 %i.be, 48                ; 2 uses
  %i.bg = add nsw i64 %i.bf, 2048
  %i.bh = icmp ult i64 %i.bg, 4096
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = tail call noundef zeroext i1 @_ZNK4llvm17RISCVDAGToDAGISel15hasAllNBitUsersEPNS_6SDNodeEjj(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef 16, i32 noundef 0)
  %spec.select4137 = select i1 %i.bi, i64 %i.bf, i64 %.0.i.i.i
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.02135 = phi i64 [ %.0.i.i.i, %bb.i ], [ %.0.i.i.i, %bb.j ], [ %spec.select4137, %bb.k ] ; 9 uses
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 408
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !226, !range !18, !noundef !19
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bn = add i64 %.02135, 2048
  %i.bo = icmp ult i64 %i.bn, 4096
  br i1 %i.bo, label %.thread3904, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = lshr i64 %.02135, 8
  %i.bq = xor i64 %i.bp, %.02135
  %i.br = and i64 %i.bq, 255
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bt = tail call noundef zeroext i1 @_ZNK4llvm17RISCVDAGToDAGISel15hasAllNBitUsersEPNS_6SDNodeEjj(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef 16, i32 noundef 0)
  br i1 %i.bt, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bu = and i64 %.02135, 65535                  ; 2 uses
  %i.bv = icmp eq i16 %.sroa.0.0.copyload.i.i, 8
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = mul nuw i64 %i.bu, 281479271743489
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.bx = mul nuw i64 %i.bu, 281479271677952
  %i.by = ashr exact i64 %i.bx, 32
  br label %.critedge

bb.s:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.bz = and i64 %.02135, -2147483648
  %or.cond4138 = icmp eq i64 %i.bz, 2147483648
  br i1 %or.cond4138, label %bb.t, label %.thread3904

bb.t:                                             ; preds = %bb.s
  %i.ca = tail call noundef zeroext i1 @_ZNK4llvm17RISCVDAGToDAGISel15hasAllNBitUsersEPNS_6SDNodeEjj(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef 32, i32 noundef 0)
  br i1 %i.ca, label %bb.u, label %.thread3904

bb.u:                                             ; preds = %bb.t
  %i.cb = shl nuw i64 %.02135, 32
  %i.cc = ashr exact i64 %i.cb, 32
  br label %.thread3904

.thread3904:                                      ; preds = %bb.m, %bb.u, %bb.t, %bb.s
  %.22137 = phi i64 [ %.02135, %bb.s ], [ %i.cc, %bb.u ], [ %.02135, %bb.t ], [ %.02135, %bb.m ] ; 14 uses
  %i.cd = icmp ne i16 %.sroa.0.0.copyload.i.i, 8
  %i.ce = add i64 %.22137, 2048
  %i.cf = icmp ult i64 %i.ce, 4096
  %or.cond4140 = select i1 %i.cd, i1 true, i1 %i.cf
  br i1 %or.cond4140, label %.critedge, label %bb.v

bb.v:                                             ; preds = %.thread3904
  %i.cg = add i64 %.22137, 2147483648
  %i.ch = icmp ult i64 %i.cg, 4294967296
  %i.ci = and i64 %.22137, 4095
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = and i1 %i.ch, %i.cj
  br i1 %i.ck, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 408
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !226, !range !18, !noundef !19
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cp = trunc i64 %.22137 to i32                ; 3 uses
  %sext.i = shl i32 %i.cp, 16                     ; 2 uses
  %.not.unshifted.i = xor i32 %sext.i, %i.cp
  %.not.i = icmp ult i32 %.not.unshifted.i, 65536
  br i1 %.not.i, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %sext11.i = shl i64 %.22137, 48
  %i.cq = ashr exact i64 %sext11.i, 48
  %i.cr = add nsw i64 %i.cq, 512
  %i.cs = icmp ult i64 %i.cr, 1024
  %i.ct = and i64 %.22137, 63
  %i.cu = icmp eq i64 %i.ct, 0
  %or.cond.i = or i1 %i.cu, %i.cs
  br i1 %or.cond.i, label %_ZL23isApplicableToPLIOrPLUIi.exit.thread, label %_ZL23isApplicableToPLIOrPLUIi.exit

_ZL23isApplicableToPLIOrPLUIi.exit:               ; preds = %bb.y
  %sext13.i = shl i32 %i.cp, 24
  %.unshifted.i = xor i32 %sext.i, %sext13.i
  %i.cv = icmp ult i32 %.unshifted.i, 16777216
  br i1 %i.cv, label %_ZL23isApplicableToPLIOrPLUIi.exit.thread, label %.critedge

_ZL23isApplicableToPLIOrPLUIi.exit.thread:        ; preds = %bb.y, %_ZL23isApplicableToPLIOrPLUIi.exit
  %i.cw = tail call noundef zeroext i1 @_ZNK4llvm17RISCVDAGToDAGISel15hasAllNBitUsersEPNS_6SDNodeEjj(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef 32, i32 noundef 0)
  br i1 %i.cw, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZL23isApplicableToPLIOrPLUIi.exit.thread
  %i.cx = shl i64 %.22137, 32
  %i.cy = and i64 %.22137, 4294967295
  %i.cz = or disjoint i64 %i.cx, %i.cy
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %_ZL23isApplicableToPLIOrPLUIi.exit, %bb.w, %bb.v, %.thread3904, %bb.q, %bb.r, %_ZL23isApplicableToPLIOrPLUIi.exit.thread, %bb.z
  %.32138 = phi i64 [ %i.by, %bb.r ], [ %i.cz, %bb.z ], [ %.22137, %_ZL23isApplicableToPLIOrPLUIi.exit.thread ], [ %i.bw, %bb.q ], [ %.22137, %_ZL23isApplicableToPLIOrPLUIi.exit ], [ %.22137, %.thread3904 ], [ %.22137, %bb.x ], [ %.22137, %bb.v ], [ %.22137, %bb.w ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !386
  %i.dc = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.dd = call fastcc { ptr, i32 } @_ZL9selectImmPN4llvm12SelectionDAGERKNS_5SDLocENS_3MVTElRKNS_14RISCVSubtargetE(ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, i64 noundef %.32138, ptr noundef nonnull align 8 dereferenceable(519768) %i.dc)
  %.fca.0.extract1746 = extractvalue { ptr, i32 } %i.dd, 0
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %.fca.0.extract1746)
  br label %.critedge2356

bb.aa:                                            ; preds = %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !378 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 486
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !228, !range !18, !noundef !19 ; 2 uses
  %i.dj = trunc nuw i8 %i.di to i1                ; 3 uses
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !368
  %.not.i.i.i.i = icmp eq ptr %i.dk, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8
  %.0.i.i.i.i2400 = select i1 %.not.i.i.i.i, ptr %i.dm, ptr %i.dg
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2400, i64 20
  %i.do = load i8, ptr %i.dn, align 4
  %i.dp = and i8 %i.do, 15                        ; 2 uses
  %i.dq = icmp eq i8 %i.dp, 11
  %i.dr = icmp eq i16 %.sroa.0.0.copyload.i.i, 15 ; 2 uses
  %spec.select4141 = select i1 %i.dq, i1 %i.dr, i1 false ; 2 uses
  %i.ds = icmp eq i8 %i.dp, 3
  %or.cond = or i1 %i.ds, %spec.select4141
  br i1 %or.cond, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dt = xor i1 %i.s, true
  %i.du = and i1 %i.dr, %i.dt
  %i.dv = and i1 %i.du, %i.dj
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !386 ; 2 uses
  br i1 %i.dv, label %.thread4122, label %bb.ac

.thread4122:                                      ; preds = %bb.ab
  %i.dy = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.dx, i32 260, i16 15, ptr null) #26 ; 2 uses
  %.fca.0.extract1728 = extractvalue { ptr, i32 } %i.dy, 0
  %.fca.1.extract1729 = extractvalue { ptr, i32 } %i.dy, 1
  br label %.thread3939

bb.ac:                                            ; preds = %bb.ab
  %i.dz = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.dx, i32 68, i16 %i.t, ptr null) #26
  br label %bb.ai

bb.ad:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @_ZNK4llvm7APFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %i.dg)
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !367 ; 3 uses
  %i.ee = icmp ult i32 %i.ed, 65
  br i1 %i.ee, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load i64, ptr %15, align 8, !tbaa !368
  %i.eg = icmp eq i32 %i.ed, 0
  %i.eh = sub nuw nsw i32 64, %i.ed
  %i.ei = zext nneg i32 %i.eh to i64              ; 2 uses
  %i.ej = shl i64 %i.ef, %i.ei
  %i.ek = ashr exact i64 %i.ej, %i.ei
  %.0.i.i = select i1 %i.eg, i64 0, i64 %i.ek
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

bb.af:                                            ; preds = %bb.ad
  %i.el = load ptr, ptr %15, align 8, !tbaa !368
  %i.em = load i64, ptr %i.el, align 8, !tbaa !369
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %bb.ae, %bb.af
  %.0.i2403 = phi i64 [ %.0.i.i, %bb.ae ], [ %i.em, %bb.af ]
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.eo = call fastcc { ptr, i32 } @_ZL9selectImmPN4llvm12SelectionDAGERKNS_5SDLocENS_3MVTElRKNS_14RISCVSubtargetE(ptr noundef %i.eb, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %i.t, i64 noundef %.0.i2403, ptr noundef nonnull align 8 dereferenceable(519768) %i.en)
  %i.ep = load i32, ptr %i.ec, align 8, !tbaa !367
  %i.eq = icmp ugt i32 %i.ep, 64
  br i1 %i.eq, label %bb.ag, label %_ZN4llvm5APIntD2Ev.exit

bb.ag:                                            ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit
  %i.er = load ptr, ptr %15, align 8, !tbaa !368  ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.er) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
end_hunk_0
