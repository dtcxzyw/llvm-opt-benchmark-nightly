Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rom?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0_@pci_enable_rom:bb.a
  %.not10 = icmp eq i64 %i.e, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !10
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void @pcibios_resource_to_bus(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef %i.b) #7
  %i.h = getelementptr i8, ptr %0, i64 106        ; 2 uses
  %i.i = load i8, ptr %i.h, align 2
  %i.j = zext i8 %i.i to i32
  %i.k = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.j, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.l = load i32, ptr %i.a, align 4
  %i.m = and i32 %i.l, 2046
  %i.n = load i64, ptr %1, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = or i32 %i.m, %i.o
  %i.q = or i32 %i.p, 1                           ; 2 uses
  store i32 %i.q, ptr %i.a, align 4
  %i.r = load i8, ptr %i.h, align 2
  %i.s = zext i8 %i.r to i32
  %i.t = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.q) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @pci_disable_rom(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr i8, ptr %0, i64 1376
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 2
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.e = getelementptr i8, ptr %0, i64 106        ; 2 uses
  %i.f = load i8, ptr %i.e, align 2
  %i.g = zext i8 %i.f to i32
  %i.h = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.g, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.i = load i32, ptr %i.a, align 4
  %i.j = and i32 %i.i, -2                         ; 2 uses
  store i32 %i.j, ptr %i.a, align 4
  %i.k = load i8, ptr %i.e, align 2
  %i.l = zext i8 %i.k to i32
  %i.m = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.l, i32 noundef %i.j) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @pci_map_rom(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %struct.pci_bus_region, align 8     ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 1352       ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 1392
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @pci_assign_resource(ptr noundef %0, i32 noundef 6) #7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i64, ptr %i.c, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 1360
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not22 = icmp eq i64 %i.j, 0
  br i1 %.not22, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store i64 0, ptr %1, align 8
  br label %bb.ab

bb.d:                                             ; preds = %bb.c
  %reass.sub.i = sub i64 %i.j, %i.h
  %i.k = add i64 %reass.sub.i, 1                  ; 3 uses
  store i64 %i.k, ptr %1, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.m = getelementptr i8, ptr %0, i64 1376       ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %pci_enable_rom.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i64 %i.n, 2
  %.not10.i = icmp eq i64 %i.o, 0
  br i1 %.not10.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !10
  store i32 0, ptr %i.b, align 4, !annotation !10
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void @pcibios_resource_to_bus(ptr noundef %i.q, ptr noundef nonnull %2, ptr noundef %i.c) #7
  %i.r = getelementptr i8, ptr %0, i64 106        ; 2 uses
  %i.s = load i8, ptr %i.r, align 2
  %i.t = zext i8 %i.s to i32
  %i.u = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.t, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.v = load i32, ptr %i.b, align 4
  %i.w = and i32 %i.v, 2046
  %i.x = load i64, ptr %2, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = or i32 %i.w, %i.y
  %i.aa = or i32 %i.z, 1                          ; 2 uses
  store i32 %i.aa, ptr %i.b, align 4
  %i.ab = load i8, ptr %i.r, align 2
  %i.ac = zext i8 %i.ab to i32
  %i.ad = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.aa) #7 ; 0 uses
  %.pre = load i64, ptr %1, align 8
  br label %bb.h

pci_enable_rom.exit:                              ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.ab

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = phi i64 [ %.pre, %bb.g ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.af = call ptr @ioremap(i64 noundef %i.h, i64 noundef %i.ae) #7 ; 8 uses
  %.not24 = icmp eq ptr %i.af, null
  br i1 %.not24, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i64, ptr %1, align 8               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %invariant.op.i = add i64 %i.ah, -1
  %.reass.i = add i64 %invariant.op.i, %i.ag      ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %pci_rom_header_valid.exit43.i, %bb.i
  %.0.i28 = phi ptr [ %i.af, %bb.i ], [ %i.bx, %pci_rom_header_valid.exit43.i ] ; 13 uses
  %i.ai = ptrtoint ptr %.0.i28 to i64             ; 4 uses
  %i.aj = and i64 %i.ai, 511
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %pci_rom_header_valid.exit43.thread48.loopexit.i

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i64 %i.ai, 25
  %i.am = icmp ult ptr %.0.i28, %i.af
  %i.an = icmp ugt i64 %i.al, %.reass.i
  %or.cond.i.i = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.i.i, label %pci_rom_header_valid.exit43.thread48.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %.0.i28) #6, !srcloc !11 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, -21931
  br i1 %.not.i.i, label %pci_rom_header_valid.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr i8, ptr %0, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.aq, ptr noundef nonnull @.str, i32 noundef 43605, i32 noundef %i.ap) #8
  br label %pci_get_rom_size.exit

pci_rom_header_valid.exit.i:                      ; preds = %bb.l
  %i.ar = getelementptr i8, ptr %.0.i28, i64 24
  %i.as = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.ar) #6, !srcloc !11
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr i8, ptr %.0.i28, i64 %i.at ; 6 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = and i64 %i.av, 3
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %pci_rom_header_valid.exit43.thread48.loopexit.i

bb.n:                                             ; preds = %pci_rom_header_valid.exit.i
  %i.ay = zext i64 %i.av to i65                   ; 2 uses
  %3 = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %i.ay, i65 11) ; 2 uses
  %4 = extractvalue { i65, i1 } %3, 1
  br i1 %4, label %pci_rom_header_valid.exit43.thread48.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %5 = extractvalue { i65, i1 } %3, 0
  %6 = trunc nuw i65 %5 to i64
  %i.az = icmp ult ptr %i.au, %i.af
  %i.ba = icmp ult i64 %.reass.i, %6
  %or.cond25.i.i = or i1 %i.az, %i.ba
  br i1 %or.cond25.i.i, label %pci_rom_header_valid.exit43.thread48.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.au) #6, !srcloc !12 ; 2 uses
  %.not.i38.i = icmp eq i32 %i.bb, 1380533072
  br i1 %.not.i38.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr i8, ptr %0, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.bc, ptr noundef nonnull @.str.2, i32 noundef 1380533072, i32 noundef %i.bb) #8
  br label %pci_get_rom_size.exit

bb.r:                                             ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %i.au, i64 10
  %i.be = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.bd) #6, !srcloc !11 ; 2 uses
  %i.bf = add i16 %i.be, 1
  %or.cond.i39.i = icmp ult i16 %i.bf, 25
  br i1 %or.cond.i39.i, label %pci_rom_header_valid.exit43.thread48.loopexit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = zext i16 %i.be to i32
  %i.bh = add nsw i32 %i.bg, -1
  %i.bi = zext nneg i32 %i.bh to i65
  %i.bj = call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %i.ay, i65 %i.bi) ; 2 uses
  %i.bk = extractvalue { i65, i1 } %i.bj, 1
  %i.bl = extractvalue { i65, i1 } %i.bj, 0       ; 2 uses
  %i.bm = icmp slt i65 %i.bl, 0
  %i.bn = or i1 %i.bk, %i.bm
  %i.bo = trunc nuw i65 %i.bl to i64
  %i.bp = icmp ult i64 %.reass.i, %i.bo
  %or.cond57.not.i = select i1 %i.bn, i1 true, i1 %i.bp
  br i1 %or.cond57.not.i, label %pci_rom_header_valid.exit43.thread48.loopexit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr i8, ptr %i.au, i64 21
  %i.br = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bq) #6, !srcloc !13
  %i.bs = icmp slt i8 %i.br, 0
  %i.bt = getelementptr i8, ptr %i.au, i64 16
  %i.bu = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.bt) #6, !srcloc !11 ; 2 uses
  %i.bv = zext i16 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 9
  %i.bx = getelementptr i8, ptr %.0.i28, i64 %i.bw ; 6 uses
  br i1 %i.bs, label %pci_rom_header_valid.exit43.pci_rom_header_valid.exit43.thread48.loopexit_crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = or disjoint i64 %i.by, 25
  %i.ca = icmp ult ptr %i.bx, %i.af
  %i.cb = icmp ugt i64 %i.bz, %.reass.i
  %or.cond.i41.i = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond.i41.i, label %pci_rom_header_valid.exit43.thread48.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.bx) #6, !srcloc !11
  %.not.i42.i = icmp eq i16 %i.cc, -21931
  br i1 %.not.i42.i, label %pci_rom_header_valid.exit43.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr i8, ptr %0, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.cd, ptr noundef nonnull @.str.1) #8
  br label %pci_get_rom_size.exit

pci_rom_header_valid.exit43.i:                    ; preds = %bb.v
  %i.ce = icmp eq i16 %i.bu, 0
  br i1 %i.ce, label %pci_rom_header_valid.exit43.pci_rom_header_valid.exit43.thread48.loopexit_crit_edge.i, label %bb.j, !llvm.loop !14

pci_rom_header_valid.exit43.pci_rom_header_valid.exit43.thread48.loopexit_crit_edge.i: ; preds = %pci_rom_header_valid.exit43.i, %bb.t
  br label %pci_rom_header_valid.exit43.thread48.loopexit.i, !llvm.loop !14

pci_rom_header_valid.exit43.thread48.loopexit.i:  ; preds = %bb.u, %bb.s, %bb.r, %bb.o, %bb.n, %pci_rom_header_valid.exit.i, %bb.k, %bb.j, %pci_rom_header_valid.exit43.pci_rom_header_valid.exit43.thread48.loopexit_crit_edge.i
  %.155.ph.i = phi ptr [ %i.bx, %pci_rom_header_valid.exit43.pci_rom_header_valid.exit43.thread48.loopexit_crit_edge.i ], [ %i.bx, %bb.u ], [ %.0.i28, %bb.r ], [ %.0.i28, %bb.o ], [ %.0.i28, %bb.n ], [ %.0.i28, %pci_rom_header_valid.exit.i ], [ %.0.i28, %bb.k ], [ %.0.i28, %bb.j ], [ %.0.i28, %bb.s ]
  %.pre.i = ptrtoint ptr %.155.ph.i to i64
  br label %pci_get_rom_size.exit

pci_get_rom_size.exit:                            ; preds = %bb.m, %bb.q, %bb.w, %pci_rom_header_valid.exit43.thread48.loopexit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %pci_rom_header_valid.exit43.thread48.loopexit.i ], [ %i.by, %bb.w ], [ %i.ai, %bb.q ], [ %i.ai, %bb.m ]
  %i.cf = sub i64 %.pre-phi.i, %i.ah
  %i.cg = call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.ag) ; 2 uses
  store i64 %i.cg, ptr %1, align 8
  %.not25 = icmp eq i64 %i.cg, 0
  br i1 %.not25, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %pci_get_rom_size.exit
  call void @iounmap(ptr noundef nonnull %i.af) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.h, %bb.x
  %i.ch = load i64, ptr %i.m, align 8             ; 2 uses
  %i.ci = and i64 %i.ch, 1
  %.not26 = icmp eq i64 %i.ci, 0
  br i1 %.not26, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.cj = and i64 %i.ch, 2
  %.not.i29 = icmp eq i64 %i.cj, 0
  br i1 %.not.i29, label %bb.aa, label %pci_disable_rom.exit

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.ck = getelementptr i8, ptr %0, i64 106       ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 2
  %i.cm = zext i8 %i.cl to i32
  %i.cn = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.cm, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.co = load i32, ptr %i.a, align 4
  %i.cp = and i32 %i.co, -2                       ; 2 uses
  store i32 %i.cp, ptr %i.a, align 4
  %i.cq = load i8, ptr %i.ck, align 2
  %i.cr = zext i8 %i.cq to i32
  %i.cs = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.cr, i32 noundef %i.cp) #7 ; 0 uses
  br label %pci_disable_rom.exit

pci_disable_rom.exit:                             ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ab

bb.ab:                                            ; preds = %pci_enable_rom.exit, %.thread, %bb.y, %pci_disable_rom.exit, %pci_get_rom_size.exit, %bb.d, %bb.b
  %.0 = phi ptr [ %i.af, %pci_get_rom_size.exit ], [ null, %bb.b ], [ null, %bb.d ], [ null, %pci_enable_rom.exit ], [ null, %pci_disable_rom.exit ], [ null, %bb.y ], [ null, %.thread ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_assign_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ioremap(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @pci_unmap_rom(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  tail call void @iounmap(ptr noundef %1) #7
  %i.b = getelementptr i8, ptr %0, i64 1376
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = and i64 %i.c, 2
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %pci_disable_rom.exit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.f = getelementptr i8, ptr %0, i64 106        ; 2 uses
  %i.g = load i8, ptr %i.f, align 2
  %i.h = zext i8 %i.g to i32
  %i.i = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.h, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.j = load i32, ptr %i.a, align 4
  %i.k = and i32 %i.j, -2                         ; 2 uses
  store i32 %i.k, ptr %i.a, align 4
  %i.l = load i8, ptr %i.f, align 2
  %i.m = zext i8 %i.l to i32
  %i.n = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.m, i32 noundef %i.k) #7 ; 0 uses
  br label %pci_disable_rom.exit

pci_disable_rom.exit:                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %pci_disable_rom.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { cold noredzone nounwind "no-builtin-wcslen" }

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
end_hunk_0
